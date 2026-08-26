\include "articulate.ly"

\paper {
  bookTitleMarkup = \markup \null
  tagline = ##f
}

frontMatterPaper = \paper {
  print-page-number = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f
}

#(define-markup-command (facingScorePageNumber layout props initial-pages) (integer?)
   (let* ((source-page (chain-assoc-get 'page:page-number props 0))
          (printed-page (- (* 2 source-page) initial-pages 1)))
     (interpret-markup layout props
       (make-simple-markup (number->string printed-page)))))

extendedMusicPaper = \paper {
  oddHeaderMarkup = \markup \fill-line {
    \facingScorePageNumber #3
    \fromproperty #'header:instrument
    ""
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

editionCoverPage =
#(define-scheme-function (title subtitle composer opus) (string? string? string? string?)
#{
  \markup \fill-line {
    \center-column {
      \vspace #10
      \line { \abs-fontsize #22 \bold #title }
      \vspace #1
      \line { \abs-fontsize #14 #subtitle }
      \vspace #2
      \line { #composer }
      \line { #opus }
    }
  }
#})

editionInfoPage =
#(define-scheme-function (title subtitle composer opus date editor)
   (string? string? string? string? string? string?)
#{
  \markup \fill-line {
    \null
    \override #'(baseline-skip . 3.2)
    \column {
      \vspace #4
      \line { \abs-fontsize #17 \bold "Publication information" }
      \vspace #2
      \line { \bold "Work" }
      \line { #title }
      \line { #composer }
      \line { #opus }
      \line { #date }
      \vspace #1
      \line { \bold "Edition" }
      \line { #subtitle }
      \vspace #1
      \line { \bold "Editor" }
      \line { #editor }
      \vspace #2
      \line { #(format #f "Engraved with GNU LilyPond ~a." (lilypond-version)) }
    }
    \null
  }
#})

defaultLayout = \layout {
  \context {
    \Voice
    \override Script.avoid-slur = #'inside
    \override Script.outside-staff-priority = ##f
  }
}

urtextLayout = \layout {
  \context {
    \Voice
    \override Script.avoid-slur = #'inside
    \override Script.outside-staff-priority = ##f
    \omit Fingering
  }
}

calando =
#(make-music 'DecrescendoEvent
   'span-direction START
   'span-type 'text
   'span-text "calando")

visualTurnScriptDefinitions =
#(cons (cons 'visualturn (cdr (assq 'turn default-script-alist)))
       default-script-alist)

visualTurn = #(make-articulation 'visualturn)

#(define (maybe-markup? value)
   (or (not value) (markup? value)))

#(define (turn-inside-markup upper lower)
   (let ((items '()))
     (if upper
         (set! items
               (append items
                       (list (make-fontsize-markup -4 upper)))))
     (set! items
           (append items
                   (list (make-musicglyph-markup "scripts.turn"))))
     (if lower
         (set! items
               (append items
                       (list (make-fontsize-markup -4 lower)))))
     (make-override-markup
      '(baseline-skip . 0.7)
      (make-center-column-markup items))))

turnInside =
#(define-music-function (delta y extra upper lower music)
   (ly:duration? number? pair? (maybe-markup? #f) (maybe-markup? #f) ly:music?)
#{
  <<
    $music
    {
      \set Staff.scriptDefinitions = #visualTurnScriptDefinitions
      \skip $delta
      $(if (or lower upper)
           #{
             s1*0
               -\tweak avoid-slur #'inside
               -\tweak outside-staff-priority ##f
               -\tweak Y-offset #y
               -\tweak extra-offset #extra
               -\tweak stencil
                 #(lambda (grob)
                    (grob-interpret-markup grob (turn-inside-markup upper lower)))
               ^\visualTurn
           #}
           #{
             s1*0
               -\tweak avoid-slur #'inside
               -\tweak outside-staff-priority ##f
               -\tweak Y-offset #y
               -\tweak extra-offset #extra
               ^\visualTurn
           #})
    }
  >>
#})

turnAccidental =
#(define-music-function (y upper lower music)
   ((number? 0) (maybe-markup? #f) (maybe-markup? #f) ly:music?)
#{
  <<
    $music
    {
      \set Staff.scriptDefinitions = #visualTurnScriptDefinitions
      $(if (or lower upper)
           #{
             s1*0
               -\tweak avoid-slur #'inside
               -\tweak outside-staff-priority ##f
               -\tweak Y-offset #y
               -\tweak stencil
                 #(lambda (grob)
                    (grob-interpret-markup grob (turn-inside-markup upper lower)))
               ^\visualTurn
           #}
           #{
             s1*0
               -\tweak avoid-slur #'inside
               -\tweak outside-staff-priority ##f
               -\tweak Y-offset #y
               ^\visualTurn
           #})
    }
  >>
#})

split = 
#(define-music-function (voiceA voiceB) (ly:music? ly:music?)
#{
  <<
    { \voiceOne $voiceA }
    \context Voice = "right-lower-voice" { \voiceTwo $voiceB }
  >>
  \oneVoice
#})

splitThree = 
#(define-music-function (voiceA voiceB voiceC) (ly:music? ly:music? ly:music?)
#{
  <<
    { \voiceOne $voiceA }
    \context Voice = "right-middle-voice" { \voiceThree $voiceB }
    \context Voice = "right-lower-voice" { \voiceTwo $voiceC }
  >>
  \oneVoice
#})

#(define (alt-finger-trim value)
   (let* ((len (string-length value))
          (start (let loop ((i 0))
                   (if (and (< i len) (char-whitespace? (string-ref value i)))
                       (loop (+ i 1))
                       i)))
          (end (let loop ((i (- len 1)))
                 (if (and (>= i start) (char-whitespace? (string-ref value i)))
                     (loop (- i 1))
                     i))))
     (if (> start end)
         ""
         (substring value start (+ end 1)))))

#(define (alt-finger-split value separator)
   (let ((len (string-length value)))
     (let loop ((i 0) (start 0) (parts '()))
       (cond
        ((= i len)
         (reverse (cons (substring value start i) parts)))
        ((char=? (string-ref value i) separator)
         (loop (+ i 1) (+ i 1) (cons (substring value start i) parts)))
        (else
         (loop (+ i 1) start parts))))))

#(define (alt-finger-tokenize value)
   (let ((len (string-length value)))
     (let loop ((i 0) (start #f) (tokens '()))
       (cond
        ((= i len)
         (reverse
          (if start
              (cons (substring value start i) tokens)
              tokens)))
        ((char-whitespace? (string-ref value i))
         (if start
             (loop (+ i 1) #f (cons (substring value start i) tokens))
             (loop (+ i 1) #f tokens)))
        (else
         (loop (+ i 1) (or start i) tokens))))))

#(define (alt-finger-parse spec)
   (let* ((trimmed (alt-finger-trim spec))
          (len (string-length trimmed))
          (open? (and (> len 0) (char=? (string-ref trimmed 0) (integer->char 40))))
          (without-open (if open? (substring trimmed 1 len) trimmed))
          (len2 (string-length without-open))
          (close? (and (> len2 0) (char=? (string-ref without-open (- len2 1)) (integer->char 41))))
          (body (alt-finger-trim (if close? (substring without-open 0 (- len2 1)) without-open)))
          (changes
           (filter (lambda (part) (not (string-null? part)))
                   (map alt-finger-trim (alt-finger-split body (integer->char 59))))))
     (list open? close? changes)))

#(define alt-finger-stack-baseline-skip 1.35)
#(define alt-finger-silent-change-width 0.72)

#(define (alt-finger-number-markup item)
   (make-finger-markup (make-simple-markup item)))

#(define (alt-finger-column-spacer items)
   (if (null? items)
       (make-hspace-markup 0.2)
       (make-transparent-markup (alt-finger-number-markup (car items)))))

#(define (alt-finger-row-item items row)
   (if (< row (length items))
       (alt-finger-number-markup (list-ref items row))
       (alt-finger-column-spacer items)))

#(define (alt-finger-silent-change-separator top?)
   (let ((space (make-with-dimensions-markup
                 (cons 0 alt-finger-silent-change-width)
                 '(0 . 0)
                 (make-hspace-markup alt-finger-silent-change-width))))
     (if top?
         (make-raise-markup
          0.28
          (make-override-markup
           '((offset . 1.7)
             (thickness . 0.85)
             (height-limit . 0.62)
             (shorten-pair . (0 . 0)))
           (make-tie-markup space)))
         space)))

#(define (alt-finger-interleave-silent-change markups top?)
   (if (null? markups)
       '()
       (let loop ((rest (cdr markups)) (result (list (car markups))))
         (if (null? rest)
             (reverse result)
             (loop (cdr rest)
                   (cons (car rest)
                         (cons (alt-finger-silent-change-separator top?) result)))))))

#(define (alt-finger-row columns row)
   (make-line-markup
    (alt-finger-interleave-silent-change
     (map (lambda (items) (alt-finger-row-item items row)) columns)
     (= row 0))))

#(define (alt-finger-grid changes)
   (let* ((columns (map alt-finger-tokenize changes))
          (max-rows (if (null? columns) 1 (apply max (map length columns))))
          (rows (map (lambda (row) (alt-finger-row columns row)) (iota max-rows))))
     (cond
      ((null? changes) (make-null-markup))
      ((> max-rows 1)
       (make-override-markup
        (cons 'baseline-skip alt-finger-stack-baseline-skip)
        (make-center-column-markup rows)))
      (else (car rows)))))

#(define-markup-command (altFingerMarkup layout props spec) (string?)
   (let* ((parsed (alt-finger-parse spec))
          (open? (list-ref parsed 0))
          (close? (list-ref parsed 1))
          (changes (list-ref parsed 2))
          (numbers (make-center-align-markup (alt-finger-grid changes)))
          (max-rows (if (null? changes)
                        1
                        (apply max (map (lambda (part) (length (alt-finger-tokenize part))) changes))))
          (paren-size (max 0 (- max-rows 1)))
          (left-paren (make-fontsize-markup paren-size (make-simple-markup "(")))
          (right-paren (make-fontsize-markup paren-size (make-simple-markup ")"))))
     (interpret-markup layout props
       (cond
        ((and open? close?)
         (make-center-align-markup
          (make-override-markup
           '(padding . 0.08)
           (make-override-markup
            '(width . 0.23)
            (make-parenthesize-markup numbers)))))
        ((or open? close?)
         (make-center-align-markup
          (make-concat-markup
           (list (if open? left-paren (make-transparent-markup left-paren))
                 (make-hspace-markup 0.12)
                 numbers
                 (make-hspace-markup 0.12)
                 (if close? right-paren (make-transparent-markup right-paren))))))
        (else numbers)))))

altFinger =
#(define-event-function (spec) (string?)
   (make-music 'TextScriptEvent
               'direction 1
               'tags '(fingering)
               'text (markup #:altFingerMarkup spec)))

#(define edition-staff-tags '(score right left common))
#(define edition-content-tags '(urtext main main-only extended critical fingering debug))
#(define edition-exclusive-tags '(urtext main-only extended critical debug))

#(define (tags-contain-any? tags candidates)
   (any (lambda (tag) (memq tag candidates)) tags))

#(define (matching-tags tags candidates)
   (filter (lambda (tag) (memq tag candidates)) tags))

#(define (edition-allowed-content-tags edition)
   (case edition
     ((urtext) '(urtext))
     ((main) '(main main-only fingering))
     ((main-debug) '(main main-only fingering debug))
     ((extended) '(main extended critical fingering))
     (else (list edition))))

#(define (edition-staff-visible? tags staff)
   (let ((staff-tags (matching-tags tags edition-staff-tags)))
     (or (null? staff-tags)
         (memq 'score staff-tags)
         (memq staff staff-tags))))

#(define (edition-content-visible? tags edition)
   (let* ((allowed (edition-allowed-content-tags edition))
          (content-tags (matching-tags tags edition-content-tags))
          (exclusive-tags (matching-tags tags edition-exclusive-tags)))
     (cond
      ((not (null? exclusive-tags))
       (tags-contain-any? exclusive-tags allowed))
      ((not (null? content-tags))
       (tags-contain-any? content-tags allowed))
      (else #t))))

#(define (edition-keep-predicate edition staff)
   (lambda (music)
     (let ((tags (ly:music-property music 'tags)))
       (and (edition-staff-visible? tags staff)
            (edition-content-visible? tags edition)))))

keepForEdition =
#(define-music-function (edition staff music) (symbol? symbol? ly:music?)
   (music-filter (edition-keep-predicate edition staff) music))

critRef =
#(define-music-function (id) (symbol?)
#{
  \label #id
#})

breakLine = {
  \tag #'common {
    \tag #'debug {
      \tweak self-alignment-X #LEFT
      \tweak extra-offset #'(0.4 . 0)
      \tweak outside-staff-priority ##f
      \textEndMark \markup
        \with-dimensions #'(0 . 0) #'(0 . 0)
        \with-color #(x11-color 'grey60)
        \fontsize #-1
        "↲"
    }
    \break
  }
}

breakPage = {
  \tag #'common {
    \tag #'debug {
      \tweak self-alignment-X #LEFT
      \tweak extra-offset #'(0.4 . 0)
      \tweak outside-staff-priority ##f
      \textEndMark \markup
        \with-dimensions #'(0 . 0) #'(0 . 0)
        \with-color #(x11-color 'grey60)
        \override #'(font-name . "FontAwesome")
        \fontsize #-3
        \char ##xF016
    }
    \pageBreak
  }
}

renderMovementForEdition = 
#(define-music-function (edition movementContent) (symbol? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "right" << \keepForEdition #edition #'right $movementContent >>
    \new Dynamics \keepForEdition #edition #'common $movementContent
    \new Staff = "left" << \keepForEdition #edition #'left $movementContent >>
  >>
#})

renderMovementForMidi =
#(define-music-function (edition movementContent) (symbol? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "right" <<
      \new Voice = "right-main-voice" {
        \keepForEdition #edition #'right $movementContent
      }
      \context Voice = "right-main-voice" {
        \keepForEdition #edition #'common $movementContent
      }
      \context Voice = "right-middle-voice" {
        \keepForEdition #edition #'common $movementContent
      }
      \context Voice = "right-lower-voice" {
        \keepForEdition #edition #'common $movementContent
      }
    >>
    \new Staff = "left" <<
      \new Voice = "left-main-voice" {
        \keepForEdition #edition #'left $movementContent
      }
      \context Voice = "left-main-voice" {
        \keepForEdition #edition #'common $movementContent
      }
      \context Voice = "right-middle-voice" {
        \keepForEdition #edition #'common $movementContent
      }
      \context Voice = "right-lower-voice" {
        \keepForEdition #edition #'common $movementContent
      }
    >>
  >>
#})

movementPause = {
  \tempo 4 = 60
  s4*5
}

renderMovement =
#(define-music-function (movementContent) (ly:music?)
#{
  \renderMovementForEdition #'main $movementContent
#})
