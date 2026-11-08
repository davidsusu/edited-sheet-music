% MIDI-only fermata timing. Times are exact whole-note fractions; tempi are
% whole notes per minute. Keep this independent of Voice and engraving layout.
#(define (rectify:fermata-event? event)
   (memq (ly:music-property event 'articulation-type)
         '(fermata shortfermata longfermata veryshortfermata verylongfermata
           henzeshortfermata henzelongfermata)))

#(define (rectify:has-fermata? music)
   (any (lambda (event)
          (or (rectify:fermata-event? event)
              (any rectify:fermata-event? (ly:music-property event 'articulations))))
        (append (ly:music-property music 'elements)
                (ly:music-property music 'articulations))))

#(define (rectify:tempo-at tempos time)
   (let loop ((remaining tempos) (tempo 15))
     (if (or (null? remaining) (> (caar remaining) time)) tempo
         (loop (cdr remaining) (cdar remaining)))))

#(define (rectify:tempo-segments tempos start end)
   (cons (cons start (rectify:tempo-at tempos start))
         (filter (lambda (entry) (< start (car entry) end)) tempos)))

#(define (rectify:seconds-between tempos start end)
   (let loop ((remaining (rectify:tempo-segments tempos start end)) (seconds 0))
     (if (null? remaining) seconds
         (let ((next (if (null? (cdr remaining)) end (caadr remaining))))
           (loop (cdr remaining)
                 (+ seconds (/ (* 60 (- next (caar remaining))) (cdar remaining))))))))

#(define (rectify:fermata-hold! chord)
   ;; Preserve explicit articulations, but do not apply articulate's default
   ;; 7/8 gate to a sustained fermata. Rest fermatas need no articulation.
   (if (and (pair? (rectify:trill-notes chord))
            (not (any (lambda (event)
                        (memq (ly:music-property event 'articulation-type)
                              '(staccato staccatissimo portato tenuto)))
                      (ly:music-property chord 'elements))))
       (set! (ly:music-property chord 'elements)
             (append (ly:music-property chord 'elements)
                     (list (make-music 'ArticulationEvent 'articulation-type 'tenuto))))))

#(define (rectify:fermatas music)
   (let ((fermatas '()) (tempo-events '()) (tempos '()))
     (set! music (event-chord-wrap! (unfold-repeats-fully music)))
     (rectify:walk-voices
      music
      (lambda (m time staff voice grace region)
        (cond
         ((and (eq? (ly:music-property m 'name) 'PropertySet)
               (eq? (ly:music-property m 'symbol) 'tempoWholesPerMinute))
          (let ((value (ly:music-property m 'value)))
            (if (and (rational? value) (> value 0))
                (set! tempo-events (cons (cons time m) tempo-events)))))
         ((and (memq (ly:music-property m 'name) '(EventChord MultiMeasureRestMusic))
               (rectify:has-fermata? m))
          (let ((length (ly:moment-main (ly:music-length m))))
            (if (or grace (<= length 0))
                (ly:music-warning m "MIDI fermata ignored on grace or zero-duration event")
                (begin
                  (set! fermatas (cons (cons time (+ time length)) fermatas))
                  (rectify:fermata-hold! m))))))))
     (if (null? fermatas)
         (values music '())
         (begin
           ;; Global tempo declarations are often repeated in every staff.
           ;; Coalesce them, choosing the slower value if they disagree.
           (for-each
            (lambda (entry)
              (let* ((time (car entry))
                     (value (ly:music-property (cdr entry) 'value))
                     (previous (assv time tempos)))
                (if previous
                    (begin
                      (if (not (= value (cdr previous)))
                          (ly:music-warning (cdr entry)
                                            "Conflicting MIDI tempi; fermata timing uses the slower value"))
                      (set-cdr! previous (min value (cdr previous))))
                    (set! tempos (acons time value tempos)))))
            tempo-events)
           (if (not (assv 0 tempos)) (set! tempos (acons 0 15 tempos)))
           (set! tempos (sort tempos (lambda (a b) (< (car a) (car b)))))
           ;; Each union retains its original shortest sounding duration.
           (let ((unions '()))
             (for-each
              (lambda (interval)
                (let* ((start (car interval)) (end (cdr interval))
                       (seconds (rectify:seconds-between tempos start end)))
                  (if (and (pair? unions) (<= start (vector-ref (car unions) 1)))
                      (begin
                        (vector-set! (car unions) 1 (max end (vector-ref (car unions) 1)))
                        (vector-set! (car unions) 2 (min seconds (vector-ref (car unions) 2))))
                      (set! unions (cons (vector start end seconds) unions)))))
              (sort fermatas (lambda (a b) (< (car a) (car b)))))
             (set! unions (reverse unions))
             (for-each
              (lambda (interval)
                (let* ((shortest (vector-ref interval 2))
                       (slowest (apply min (map cdr (rectify:tempo-segments
                                                   tempos (vector-ref interval 0)
                                                   (vector-ref interval 1)))))
                       (tempo (* slowest (min 1/2 (/ shortest (+ shortest 3))))))
                  ;; MIDI tempo is a 24-bit number of microseconds/quarter.
                  ;; LilyPond otherwise warns but still writes an incorrect result.
                  (if (> (/ 15000000 tempo) #xffffff)
                      (ly:error "Fermata interval at ~a requires a tempo below MIDI's limit (16.777215 seconds/quarter)"
                                (vector-ref interval 0)))
                  (vector-set! interval 2 tempo)))
              unions)
             (let* ((times (sort (delete-duplicates
                                 (append (map car tempos)
                                         (append-map (lambda (interval)
                                                       (list (vector-ref interval 0)
                                                             (vector-ref interval 1))) unions))) <))
                    (effective
                     (map (lambda (time)
                            (let ((interval (find (lambda (interval)
                                                    (and (<= (vector-ref interval 0) time)
                                                         (< time (vector-ref interval 1)))) unions)))
                              (cons time
                                    (if interval
                                        (vector-ref interval 2)
                                        (rectify:tempo-at tempos time))))) times)))
               ;; Original declarations must not override a fermata, including
               ;; tempo changes inside it. Outside it they keep their value.
               (for-each
                (lambda (entry)
                  (set! (ly:music-property (cdr entry) 'value)
                        (rectify:tempo-at effective (car entry)))) tempo-events)
               (let loop ((remaining effective) (now 0) (previous #f) (out '()))
                 (if (null? remaining)
                     (let* ((sequence (make-sequential-music (reverse out)))
                            (control #{ \new Devnull { $sequence } #}))
                       (values (make-simultaneous-music (list music control)) effective))
                     (let* ((time (caar remaining)) (tempo (cdar remaining))
                            (change (make-music 'ContextSpeccedMusic 'context-type 'Score
                                               'element (make-music 'PropertySet
                                                         'symbol 'tempoWholesPerMinute 'value tempo))))
                       (if (equal? tempo previous)
                           (loop (cdr remaining) now previous out)
                           (loop (cdr remaining) time tempo
                                 (cons change
                                       (if (= time now) out
                                           (cons (make-music 'SkipMusic
                                                   'duration (make-duration-of-length
                                                              (ly:make-moment (- time now)))) out))))))))))))))
