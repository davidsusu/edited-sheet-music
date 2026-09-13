\version "2.24.1"

\include "articulate.ly"

choirPaper = \paper {
  tagline = ##f
}

choirLayout = \layout {
  \context {
    \Staff
    \consists "Ambitus_engraver"
  }
}

debugColor = #(x11-color 'firebrick)

barCheck = \tag #'global { | }

#(define (empty-sequential-music)
   (make-music 'SequentialMusic 'elements '()))

#(define (empty-music? music)
   (and (music-is-of-type? music 'sequential-music)
        (null? (ly:music-property music 'elements '()))))

#(define (append-lyrics-marker? music)
   (ly:music-property music 'append-lyrics-marker #f))

#(define (music-tags music)
   (ly:music-property music 'tags '()))

#(define (tag-set-add tags additions)
   (let loop ((source additions)
              (result tags))
     (cond
      ((null? source) result)
      ((memq (car source) result) (loop (cdr source) result))
      (else (loop (cdr source) (cons (car source) result))))))

#(define (tag-set-contains? tags tag)
   (memq tag tags))

#(define (lyric-event text)
   (make-music 'LyricEvent 'text text 'duration (ly:make-duration 2)))

#(define (append-articulations! music articulations)
   (set! (ly:music-property music 'articulations)
         (append (ly:music-property music 'articulations '()) articulations)))

#(define (append-lyric-continuation! state event)
   (let ((last-lyric (car state)))
     (if last-lyric
         (append-articulations! last-lyric (list event))
         (ly:warning "Ignoring lyric continuation without preceding syllable"))))

#(define (string-split-whitespace text)
   (let loop ((chars (string->list text))
              (current '())
              (tokens '()))
     (cond
      ((null? chars)
       (reverse
        (if (null? current)
            tokens
            (cons (list->string (reverse current)) tokens))))
      ((char-whitespace? (car chars))
       (loop (cdr chars)
             '()
             (if (null? current)
                 tokens
                 (cons (list->string (reverse current)) tokens))))
      (else
       (loop (cdr chars) (cons (car chars) current) tokens)))))

#(define (lyrics-from-string text state)
   (make-music
    'SequentialMusic
    'elements
    (let loop ((tokens (string-split-whitespace text))
               (result '()))
      (if (null? tokens)
          (reverse result)
          (let ((token (car tokens)))
            (cond
             ((string=? token "__")
              (append-lyric-continuation! state (make-music 'ExtenderEvent))
              (let ((skip (lyric-event " ")))
                (set-car! state skip)
                (loop (cdr tokens) (cons skip result))))
             ((string=? token "--")
              (append-lyric-continuation! state (make-music 'HyphenEvent))
              (loop (cdr tokens) result))
             ((string=? token "_")
              (let ((skip (lyric-event " ")))
                (set-car! state skip)
                (loop (cdr tokens) (cons skip result))))
             (else
              (let ((syllable (lyric-event token)))
                (set-car! state syllable)
                (loop (cdr tokens) (cons syllable result))))))))))

#(define (extract-tagged-lyrics voice music inherited-tags state)
   (let ((tags (tag-set-add inherited-tags (music-tags music))))
     (cond
    ((and (append-lyrics-marker? music)
          (tag-set-contains? tags 'lyrics)
          (tag-set-contains? tags voice))
     (lyrics-from-string (ly:music-property music 'append-lyrics-text "") state))
    ((append-lyrics-marker? music)
     (empty-sequential-music))
    ((music-is-of-type? music 'sequential-music)
     (make-music
      'SequentialMusic
      'elements
      (filter
       (lambda (element) (not (empty-music? element)))
       (map (lambda (element) (extract-tagged-lyrics voice element tags state))
            (ly:music-property music 'elements '())))))
    ((music-is-of-type? music 'simultaneous-music)
     (make-music
      'SequentialMusic
      'elements
      (filter
       (lambda (element) (not (empty-music? element)))
       (map (lambda (element) (extract-tagged-lyrics voice element tags state))
            (ly:music-property music 'elements '())))))
    (else
     (let* ((element (ly:music-property music 'element #f))
            (elements (ly:music-property music 'elements #f))
            (new-element (and (ly:music? element)
                              (extract-tagged-lyrics voice element tags state)))
            (new-elements (and (list? elements)
                               (filter
                                (lambda (item) (not (empty-music? item)))
                                (map (lambda (item)
                                       (extract-tagged-lyrics voice item tags state))
                                     elements)))))
       (if (or (and new-element (not (empty-music? new-element)))
               (and new-elements (pair? new-elements)))
           (let ((copy (ly:music-deep-copy music)))
             (if new-element
                 (set! (ly:music-property copy 'element) new-element))
             (if new-elements
                 (set! (ly:music-property copy 'elements) new-elements))
             copy)
           (empty-sequential-music)))))))

appendLyrics =
#(define-music-function (text) (string?)
   (make-music
    'SequentialMusic
    'elements '()
    'tags '(lyrics)
    'append-lyrics-marker #t
    'append-lyrics-text text))

extractLyrics =
#(define-music-function (voice music) (symbol? ly:music?)
   (extract-tagged-lyrics voice music '() (list #f)))

beginRevisionSection = {
  \tag #'debug {
    \override Staff.NoteHead.color = \debugColor
    \override Staff.Stem.color = \debugColor
    \override Staff.Beam.color = \debugColor
    \override Staff.Flag.color = \debugColor
    \override Staff.Rest.color = \debugColor
    \override Staff.Dots.color = \debugColor
    \override Staff.Accidental.color = \debugColor
    \override Staff.Clef.color = \debugColor
    \override Staff.ClefModifier.color = \debugColor
    \override Staff.KeyCancellation.color = \debugColor
    \override Staff.KeySignature.color = \debugColor
    \override Staff.Script.color = \debugColor
    \override Staff.TextScript.color = \debugColor
    \override Staff.TimeSignature.color = \debugColor
    \override Staff.Slur.color = \debugColor
    \override Staff.PhrasingSlur.color = \debugColor
    \override Staff.Tie.color = \debugColor
    \override Staff.TupletNumber.color = \debugColor
    \override Staff.TupletBracket.color = \debugColor
    \override Staff.BarLine.color = \debugColor
    \override ChoirStaff.SpanBar.color = \debugColor
    \override Dynamics.DynamicText.color = \debugColor
    \override Dynamics.Hairpin.color = \debugColor
    \override Score.TextMark.color = \debugColor
    \override Score.RehearsalMark.color = \debugColor
  }
}

endRevisionSection = {
  \tag #'debug {
    \revert Staff.NoteHead.color
    \revert Staff.Stem.color
    \revert Staff.Beam.color
    \revert Staff.Flag.color
    \revert Staff.Rest.color
    \revert Staff.Dots.color
    \revert Staff.Accidental.color
    \revert Staff.Clef.color
    \revert Staff.ClefModifier.color
    \revert Staff.KeyCancellation.color
    \revert Staff.KeySignature.color
    \revert Staff.Script.color
    \revert Staff.TextScript.color
    \revert Staff.TimeSignature.color
    \revert Staff.Slur.color
    \revert Staff.PhrasingSlur.color
    \revert Staff.Tie.color
    \revert Staff.TupletNumber.color
    \revert Staff.TupletBracket.color
    \revert Staff.BarLine.color
    \revert ChoirStaff.SpanBar.color
    \revert Dynamics.DynamicText.color
    \revert Dynamics.Hairpin.color
    \revert Score.TextMark.color
    \revert Score.RehearsalMark.color
  }
}
