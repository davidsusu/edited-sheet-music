\version "2.24.1"

% articulate.ly otherwise uses a fixed 1/64 duration for each generated trill
% note.  Its input durations already include tuplet and \scaleDurations
% compression, so only the current tempo is needed to target 0.1 seconds.
#(define (rectify:trill-note-time music)
   (let* ((trills
           (filter
            (lambda (event)
              (and (eq? (ly:music-property event 'name)
                        'ArticulationEvent)
                   (eq? (ly:music-property event 'articulation-type)
                        'trill)))
            (ly:music-property music 'elements)))
          (preset
           (if (pair? trills)
               (ly:music-property (car trills) 'twiddle)
               '())))
     (if (ly:moment? preset)
         preset
         (ly:moment-mul ac:currentTempo (ly:make-moment 1/600)))))

% Keep articulate.ly's expansion and after-grace handling, replacing only its
% hardcoded trill timing decision.
#(set! ac:twiddletime rectify:trill-note-time)

#(define rectify:current-tempo (ly:make-moment 15))
#(define rectify:arpeggio-direction #f)
#(define rectify:connect-arpeggios #f)

#(define (rectify:moment value)
   (ly:make-moment value))

#(define (rectify:main-length music)
   (rectify:moment (ly:moment-main (ly:music-length music))))

#(define (rectify:positive-moment? moment)
   (ly:moment<? ZERO-MOMENT moment))

#(define (rectify:moment-min left right)
   (if (ly:moment<? left right) left right))

#(define (rectify:moment-half moment)
   (ly:moment-mul moment (rectify:moment 1/2)))

#(define (rectify:contains-event? music event-name)
   (or (eq? (ly:music-property music 'name) event-name)
       (any (lambda (event)
              (rectify:contains-event? event event-name))
            (ly:music-property music 'articulations))
       (any (lambda (element)
              (rectify:contains-event? element event-name))
            (ly:music-property music 'elements))
       (let ((element (ly:music-property music 'element)))
         (and (ly:music? element)
              (rectify:contains-event? element event-name)))))

#(define (rectify:tempo-change? music)
   (or (eq? (ly:music-property music 'name) 'TempoChangeEvent)
       (and (eq? (ly:music-property music 'name) 'PropertySet)
            (eq? (ly:music-property music 'symbol)
                 'tempoWholesPerMinute))
       (any rectify:tempo-change? (ly:music-property music 'elements))
       (let ((element (ly:music-property music 'element)))
         (and (ly:music? element)
              (rectify:tempo-change? element)))))

#(define (rectify:safe-intervening? music)
   (and (not (rectify:contains-event? music 'GraceMusic))
        (not (rectify:tempo-change? music))))

#(define (rectify:rest-like? music)
   (memq (ly:music-property music 'name)
         '(RestEvent SkipEvent SkipMusic)))

#(define (rectify:note-like? music)
   (or (eq? (ly:music-property music 'name) 'NoteEvent)
       (and (eq? (ly:music-property music 'name) 'EventChord)
            (any (lambda (element)
                   (eq? (ly:music-property element 'name) 'NoteEvent))
                 (ly:music-property music 'elements)))))

#(define (rectify:simple-predecessor? music)
   (and (or (rectify:rest-like? music)
            (rectify:note-like? music))
        (rectify:positive-moment? (rectify:main-length music))
        (not (rectify:contains-event? music 'TieEvent))
        (not (rectify:contains-event? music 'GraceMusic))))

#(define (rectify:arpeggio-notes music)
   (filter (lambda (element)
             (eq? (ly:music-property element 'name) 'NoteEvent))
           (ly:music-property music 'elements)))

#(define (rectify:arpeggio? music)
   (and (eq? (ly:music-property music 'name) 'EventChord)
        (any (lambda (element)
               (eq? (ly:music-property element 'name) 'ArpeggioEvent))
             (ly:music-property music 'elements))))

#(define (rectify:plain-arpeggio? music)
   (and (rectify:arpeggio? music)
        (let* ((elements (ly:music-property music 'elements))
               (notes (rectify:arpeggio-notes music))
               (arpeggios
                (filter (lambda (element)
                          (eq? (ly:music-property element 'name)
                               'ArpeggioEvent))
                        elements)))
          (and (<= 2 (length notes) 5)
               (= (length arpeggios) 1)
               (= (length elements) (+ (length notes) 1))
               (not (rectify:contains-event? music 'TieEvent))))))

#(define (rectify:distinct-pitches? notes)
   (let ((pitches
          (sort (map (lambda (note)
                       (ly:music-property note 'pitch))
                     notes)
                ly:pitch<?)))
     (let loop ((remaining pitches))
       (or (null? remaining)
           (null? (cdr remaining))
           (and (or (ly:pitch<? (car remaining) (cadr remaining))
                    (ly:pitch<? (cadr remaining) (car remaining)))
                (loop (cdr remaining)))))))

#(define (rectify:seconds-to-moment seconds)
   (ly:moment-mul
    rectify:current-tempo
    (rectify:moment
     (/ (rationalize (inexact->exact seconds) 1/1000000) 60))))

#(define (rectify:desired-arpeggio-gap note-count)
   (rectify:seconds-to-moment
    (+ 1/20 (/ 7/100 (sqrt (- note-count 1))))))

#(define (rectify:minimum-arpeggio-gap)
   (rectify:seconds-to-moment 1/20))

#(define (rectify:make-skip length)
   (make-music 'SkipEvent
               'duration (make-duration-of-length length)))

#(define (rectify:sequence-with-delay delay music)
   (if (rectify:positive-moment? delay)
       (make-sequential-music
        (list (rectify:make-skip delay) music))
       music))

#(define (rectify:shorten! music old-length new-length)
   (ly:music-compress music (ly:moment-div new-length old-length)))

#(define (rectify:arpeggio-branch note onset end)
   (let ((copy (ly:music-deep-copy note)))
     (ly:music-compress
      copy
      (ly:moment-div
       (ly:moment-sub end onset)
       (rectify:main-length copy)))
     (rectify:sequence-with-delay onset copy)))

#(define (rectify:timing-branch pre-spread between chord-length)
   (make-sequential-music
    (append
     (if (rectify:positive-moment? pre-spread)
         (list (rectify:make-skip pre-spread))
         '())
     between
     (list (rectify:make-skip chord-length)))))

#(define (rectify:warn-skip music reason)
   (ly:music-warning music
                     (format #f "MIDI arpeggio left simultaneous: ~a"
                             reason)))

#(define (rectify:make-arpeggio predecessor between chord)
   (let* ((notes (rectify:arpeggio-notes chord))
          (note-count (length notes))
          (sorted-notes
           (sort notes
                 (lambda (left right)
                   (ly:pitch<? (ly:music-property left 'pitch)
                               (ly:music-property right 'pitch)))))
          (predecessor-length (rectify:main-length predecessor))
          (chord-length (rectify:main-length chord))
          (desired-gap (rectify:desired-arpeggio-gap note-count))
          (desired-spread
           (ly:moment-mul desired-gap (rectify:moment (- note-count 1))))
          (pre-capacity
           (if (rectify:rest-like? predecessor)
               predecessor-length
               (rectify:moment-half predecessor-length)))
          (post-capacity (rectify:moment-half chord-length))
          (capacity (ly:moment-add pre-capacity post-capacity))
          (spread (rectify:moment-min desired-spread capacity))
          (minimum-spread
           (ly:moment-mul (rectify:minimum-arpeggio-gap)
                          (rectify:moment (- note-count 1)))))
     (if (ly:moment<? spread minimum-spread)
         #f
         (let* ((gap
                 (ly:moment-div spread
                                (rectify:moment (- note-count 1))))
                (pre-spread (rectify:moment-min spread pre-capacity))
                (end (ly:moment-add pre-spread chord-length))
                (new-predecessor-length
                 (ly:moment-sub predecessor-length pre-spread)))
           (rectify:shorten! predecessor
                             predecessor-length
                             new-predecessor-length)
           (let loop ((remaining sorted-notes)
                      (index 0)
                      (branches '()))
             (if (null? remaining)
                 (make-sequential-music
                  (list
                   predecessor
                   (make-simultaneous-music
                    (append
                     (reverse branches)
                     (list (rectify:timing-branch
                            pre-spread between chord-length))))))
                 (loop
                  (cdr remaining)
                  (+ index 1)
                  (cons
                   (rectify:arpeggio-branch
                    (car remaining)
                    (ly:moment-mul gap (rectify:moment index))
                    end)
                   branches))))))))

#(define (rectify:find-predecessor reversed-elements)
   (let loop ((remaining reversed-elements) (between '()))
     (cond
      ((null? remaining) (values #f '() reversed-elements))
      ((rectify:positive-moment? (rectify:main-length (car remaining)))
       (values (car remaining) between (cdr remaining)))
      (else
       (loop (cdr remaining) (cons (car remaining) between))))))

#(define (rectify:try-arpeggio chord reversed-elements)
   (call-with-values
    (lambda () (rectify:find-predecessor reversed-elements))
    (lambda (predecessor between prefix)
      (cond
       ((not predecessor)
        (rectify:warn-skip chord "no preceding rhythmic event")
        #f)
       ((not (every rectify:safe-intervening? between))
        (rectify:warn-skip chord "grace or tempo event at the boundary")
        #f)
       ((not (rectify:simple-predecessor? predecessor))
        (rectify:warn-skip chord "unsupported or tied predecessor")
        #f)
       ((not (rectify:distinct-pitches? (rectify:arpeggio-notes chord)))
        (rectify:warn-skip chord "repeated pitch")
        #f)
       ((or rectify:connect-arpeggios
            (eq? rectify:arpeggio-direction DOWN))
        (rectify:warn-skip chord "connected or downward arpeggio")
        #f)
       (else
        (let ((replacement
               (rectify:make-arpeggio predecessor between chord)))
          (if replacement
              (cons replacement prefix)
              (begin
               (rectify:warn-skip chord "insufficient sounding time")
               #f))))))))

#(define (rectify:update-state! music)
   (let ((name (ly:music-property music 'name)))
     (cond
      ((and (eq? name 'PropertySet)
            (eq? (ly:music-property music 'symbol)
                 'tempoWholesPerMinute))
       (set! rectify:current-tempo (ly:music-property music 'value)))
      ((and (eq? name 'PropertySet)
            (eq? (ly:music-property music 'symbol) 'connectArpeggios))
       (set! rectify:connect-arpeggios
             (ly:music-property music 'value)))
      ((and (eq? name 'PropertyUnset)
            (eq? (ly:music-property music 'symbol) 'connectArpeggios))
       (set! rectify:connect-arpeggios #f))
      ((and (eq? name 'OverrideProperty)
            (eq? (ly:music-property music 'symbol) 'Arpeggio)
            (equal? (ly:music-property music 'grob-property-path)
                    '(arpeggio-direction)))
       (set! rectify:arpeggio-direction
             (ly:music-property music 'grob-value)))
      ((and (eq? name 'RevertProperty)
            (eq? (ly:music-property music 'symbol) 'Arpeggio)
            (equal? (ly:music-property music 'grob-property-path)
                    '(arpeggio-direction)))
       (set! rectify:arpeggio-direction #f)))))

#(define (rectify:walk-branches elements)
   (let ((tempo rectify:current-tempo)
         (direction rectify:arpeggio-direction)
         (connected rectify:connect-arpeggios))
     (let ((result
            (map
             (lambda (element)
               (set! rectify:current-tempo tempo)
               (set! rectify:arpeggio-direction direction)
               (set! rectify:connect-arpeggios connected)
               (rectify:walk element))
             elements)))
       (set! rectify:current-tempo tempo)
       (set! rectify:arpeggio-direction direction)
       (set! rectify:connect-arpeggios connected)
       result)))

#(define (rectify:walk-sequence elements)
   (let loop ((remaining elements) (result '()))
     (if (null? remaining)
         (reverse result)
         (let ((next (car remaining)))
           (if (eq? (ly:music-property next 'name) 'SequentialMusic)
               (loop (append (ly:music-property next 'elements)
                             (cdr remaining))
                     result)
               (let ((music (rectify:walk next)))
                 (cond
                  ((rectify:plain-arpeggio? music)
                   (let ((replacement
                          (rectify:try-arpeggio music result)))
                     (loop (cdr remaining)
                           (if replacement
                               replacement
                               (cons music result)))))
                  ((rectify:arpeggio? music)
                   (rectify:warn-skip music "unsupported chord contents")
                   (loop (cdr remaining) (cons music result)))
                  (else
                   (loop (cdr remaining) (cons music result))))))))))

#(define (rectify:walk music)
   (rectify:update-state! music)
   (case (ly:music-property music 'name)
    ((SequentialMusic)
     (set! (ly:music-property music 'elements)
           (rectify:walk-sequence (ly:music-property music 'elements))))
    ((SimultaneousMusic)
     (set! (ly:music-property music 'elements)
           (rectify:walk-branches (ly:music-property music 'elements))))
    ((EventChord NoteEvent RestEvent SkipEvent SkipMusic GraceMusic) music)
    (else
     (let ((element (ly:music-property music 'element))
           (elements (ly:music-property music 'elements)))
       (if (ly:music? element)
           (set! (ly:music-property music 'element)
                 (rectify:walk element)))
       (if (pair? elements)
           (set! (ly:music-property music 'elements)
                 (rectify:walk-branches elements))))))
   music)

% LilyPond treats force dynamics as permanent absolute MIDI levels.  Replace
% them with a transient velocity accent, retaining only their sustained part.
#(define rectify:force-dynamics
   '(("sf"  . (#f . 20))
     ("sfz" . (#f . 20))
     ("fz"  . (#f . 20))
     ("rfz" . (#f . 20))
     ("fp"  . ("p" . 20))
     ("sfp" . ("p" . 20))
     ("sp"  . ("p" . 20))
     ("spp" . ("pp" . 20))
     ("sff" . ("ff" . 20))))

#(define (rectify:dynamic-replacements event)
   (let* ((text (ly:music-property event 'text))
          (entry (and (string? text)
                      (assoc text rectify:force-dynamics))))
     (if (not entry)
         (list event)
         (let* ((spec (cdr entry))
                (sustained (car spec))
                (velocity (cdr spec))
                (accent
                 (make-music 'ArticulationEvent
                             'articulation-type 'accent
                             'midi-extra-velocity velocity)))
           (if sustained
               (list accent
                     (make-music 'AbsoluteDynamicEvent 'text sustained))
               (list accent))))))

#(define (rectify:music music)
   (let ((articulations (ly:music-property music 'articulations)))
     (if (pair? articulations)
         (set! (ly:music-property music 'articulations)
               (append-map
                (lambda (event)
                  (if (eq? (ly:music-property event 'name)
                           'AbsoluteDynamicEvent)
                      (rectify:dynamic-replacements event)
                      (list event)))
                articulations)))
     music))

rectify =
#(define-music-function (music) (ly:music?)
   (let ((copy (music-map rectify:music (ly:music-deep-copy music))))
     (set! rectify:current-tempo (ly:make-moment 15))
     (set! rectify:arpeggio-direction #f)
     (set! rectify:connect-arpeggios #f)
     (rectify:walk copy)))
