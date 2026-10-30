\version "2.26.0"

\include "../../shared/src/lilypond/lib.ily"

workTitle = "Piano Sonata No. 20"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 49 No. 2"
workDate = "1795-1796"
workEditor = "Dávid Horváth"
firstMovement = {
  \mark \markup { \bold "Allegro ma non troppo" }
  \tempo 4 = 120
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 2/2
    \set Timing.beatBase = #1/5
    \set Timing.beatStructure = #'(1 1 1 1)
    \set Timing.beamExceptions = \beamExceptions {
      8[ 8 8 8] 8[ 8 8 8] |
      \tuplet 3/2 { 8[ 8 8] 8[ 8 8] 8[ 8 8] 8[ 8 8] } |
      16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] |
    }
  \key g \major
  \accidentalStyle default

  \repeat volta 2 {

  \tag #'right { \clef treble <g' d' b>2 \tuplet 3/2 { d'8 g' b' } \tuplet 3/2 { d''8 c'' a' } }
  \tag #'left { \clef bass <g g,>2 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 g' fis' g' }
  \tag #'left { \clef bass r4 b a g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'4. a'8 b'4. b'8 }
  \tag #'left { \clef bass fis4 d g f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 c''\trill \grace { b'16 c'' } b'4 r }
  \tag #'left { \clef bass e4 fis! g8 g b d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' d'' b'>2 \tuplet 3/2 { d''8 g'' b'' } \tuplet 3/2 { d'''8 c''' a'' } }
  \tag #'left { \clef bass <g' g>2 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 g'' fis'' g'' }
  \tag #'left { \clef treble r4 b'8 d'' a' d'' g' d'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''4. a''8 b''4. b''8 }
  \tag #'left { \clef treble fis'8 d'' d' d'' g' d'' f' d'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'''4 c'''\trill \grace { b''16 c''' } b''8 c''' cis''' d''' }
  \tag #'left { \clef treble e'8 g' fis'! a' g'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble dis'''8 e''' r e''' d''' c''' b'' a'' }
  \tag #'left { \clef treble r4 <a' e' c'> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'''8 d''' r d''' c''' b'' a'' g'' }
  \tag #'left { \clef treble r4 <g' d' b> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' d'' c'' b' a' g' fis' }
  \tag #'left { \clef bass c'4 r d' r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 4 #3 #'(0 . 0)  g'4. a'8 b' c'' cis'' d'' }
  \tag #'left { \clef bass g4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble dis''8 e'' r e'' d'' c'' b' a' }
  \tag #'left { \clef bass r4 <a e c> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble dis''8 e'' r e'' e'' cis'' a' g' }
  \tag #'left { \clef bass r4 <a e cis> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'4 \tuplet 3/2 { a''8 fis'' d'' } c''!4 \tuplet 3/2 { a''8 fis'' c'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d fis a d fis a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'4 \tuplet 3/2 { g''8 d'' b' } g'4 \tuplet 3/2 { d''8 b' g' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 g b d g b d g b d g b } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'4 \tuplet 3/2 { a''8 fis'' d'' } c''4 \tuplet 3/2 { a''8 fis'' c'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d fis a d fis a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'4 \tuplet 3/2 { g''8 d'' b' } g'4 \tuplet 3/2 { d''8 b' g' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 g b d g b d g b d g b } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 \tuplet 3/2 { d''8 b' g' } d'4 \tuplet 3/2 { d''8 b' g' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d g b d fis a d g b } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 r r8 a' a' a' }
  \tag #'left { \clef bass <fis d>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 cis'' d'' e'' }
  \tag #'left { \clef treble fis'8 a' g' a' fis' a' cis' a' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 fis'' e''4 r8 a' a' a' }
  \tag #'left { \clef treble d'8 a' cis' a' a4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4 d'' <e'' cis''> <fis'' d''> }
  \tag #'left { \clef treble g'8 a' fis' a' e' a' d' a' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' e''>8 g'' <fis'' d''>4 r8 a'' g'' fis'' }
  \tag #'left { \clef treble cis'8 a' d' a' d'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' e'' e'' d'' a'' g'' fis'' }
  \tag #'left { \clef treble <b' g'>2 <a' fis'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' e'' e'' d'' a'' g'' fis'' }
  \tag #'left { \clef treble <b' g'>2 <a' fis'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' r e'' e'' d'' r d'' }
  \tag #'left { \clef treble r4 g' r gis' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''8 cis'' b' a' gis' a' b' cis'' }
  \tag #'left { \clef treble a'4 a r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 cis'' d'' e'' }
  \tag #'left { \clef treble fis'8 a' g' a' fis' a' cis' a' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' d''>8 fis'' <e'' cis''>4 r8 a' a' a' }
  \tag #'left { \clef treble d'8 a' a a' a4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4 d'' <e'' cis''> <fis'' d''> }
  \tag #'left { \clef treble g'8 a' fis' a' e' a' d' a' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' e''>8 g'' <fis'' d''>4 r8 a'' g'' fis'' }
  \tag #'left { \clef treble cis'8 a' d' a' d'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' e'' e'' d'' a'' g'' fis'' }
  \tag #'left { \clef treble <b' g'>2 <a' fis'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' e'' e'' d'' a'' g'' fis'' }
  \tag #'left { \clef treble <b' g'>2 <a' fis'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' g'' e'' e'' d'' d'' cis'' }
  \tag #'left { \clef bass r4 g a a, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { d''8 } \tuplet 3/2 4 { a''8 g'' fis'' e'' d'' cis'' b' a' g' fis' e' d' } }
  \tag #'left { \clef bass d4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'4 cis' cis' cis' }
  \tag #'left { \clef bass \tuplet 3/2 4 { e8 g a e g a e g a e g a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { d'8 e' fis' g' a' b' cis'' d'' e'' fis'' g'' a'' } }
  \tag #'left { \clef bass <fis d>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 g'' g'' g'' }
  \tag #'left { \clef bass \tuplet 3/2 4 { cis8 e a cis e a cis e a cis e a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { fis''8 } \tuplet 3/2 4 { a''8 g'' fis'' e'' d'' cis'' b' a' g' fis' e' d' } }
  \tag #'left { \clef bass d4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'!4 c' c' c' }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d fis a d fis a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { b8 e' g' } \tuplet 3/2 { b'8 g' e' } d'4 \appoggiatura { fis'8 } e'4 }
  \tag #'left { \clef bass \split { r4 g fis g } { g,2 a,4 a, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { d'8 e' fis' g' a' b' cis'' d'' e'' fis'' g'' a'' } }
  \tag #'left { \clef bass <fis d>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b'' g''>1 }
  \tag #'left { \clef treble \tuplet 3/2 4 { r8 g a b cis' d' e' fis' g' a' b' cis'' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' fis''>4 <g'' e''> <fis'' d''> <e'' cis''> }
  \tag #'left { \clef treble d''4 g' a' a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a''8 g'' fis'' e'' d'' cis'' b' a' g' fis' e' d' } }
  \tag #'left { \clef treble R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' g'>1 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 g, a, b, cis d e fis g a b cis' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' fis'>4 <g' e'> <fis' d'> <e' cis'> }
  \tag #'left { \clef bass d'4 g a a, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 \tuplet 3/2 { a''8 fis'' d'' } cis''4 \tuplet 3/2 { g''8 e'' cis'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d g a d g a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 \tuplet 3/2 { a'8 fis' d' } cis'4 \tuplet 3/2 { g'8 e' cis' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d g a d g a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 \tuplet 3/2 { g'8 e' cis' } d'4 \tuplet 3/2 { g'8 e' cis' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d g a d fis a d g a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 <d' a fis> <d' a fis> r }
  \tag #'left { \clef bass <fis d>4 <d d,> <d d,> r }
  \tag #'common { s1 }
  |

  }

  \repeat volta 2 {

  \tag #'right { \clef treble <d''~ a' f'>2 \tuplet 3/2 { d''8 f'' e'' } \tuplet 3/2 { d''8 c'' b' } }
  \tag #'left { \clef bass <d' d>2 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'4 gis' a' b' }
  \tag #'left { \clef treble r8 e' d' e' c' e' gis e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4 d'' e'' d'' }
  \tag #'left { \clef treble a8 e' b e' c' e' b e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \grace { c''16 e'' } a''2~ \tuplet 3/2 { a''8 c''' b'' } \tuplet 3/2 { a''8 g'' fis'' } }
  \tag #'left { \clef treble \tuplet 3/2 { a8 c' e' } \tuplet 3/2 { a'8 e' c' } a4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4 dis'' e'' fis'' }
  \tag #'left { \clef treble r8 b' a' b' g' b' dis' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4. fis''16 g'' a''8 g'' fis'' e'' }
  \tag #'left { \clef treble e'8 b' e' b' c' ais' c' ais' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble dis''4 r8 <b'' g''> <a'' fis''>4 r8 <fis'' dis''> }
  \tag #'left { \clef treble b8 b' b' b' b' b' b' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' e''>4 r8 <g'' e''> <fis'' dis''>4 <g'' e''> }
  \tag #'left { \clef treble b'8 b' b' b' b' b' b' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis'' dis''>4 r8 <b'' g''> <a'' fis''>4 r8 <fis'' dis''> }
  \tag #'left { \clef treble b8 b' b' b' b' b' b' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' e''>4 r8 <g'' e''> <fis'' dis''>4 <g'' e''> }
  \tag #'left { \clef treble b'8 b' b' b' b' b' b' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis'' dis''>4 r r2 }
  \tag #'left { \clef treble b'8 ais' b' ais' b' a' g' fis' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' e''>4 r r2 }
  \tag #'left { \clef bass e'8 dis' e' dis' e' d' c' b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''8 b'' c''' b'' c''' b'' a'' g'' }
  \tag #'left { \clef bass a8 gis a gis a g fis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 e'' d'' c'' b' a' g' fis' }
  \tag #'left { \clef bass \split { r2 c' } { d1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' d' b>2 \tuplet 3/2 { d'8 g' b' } \tuplet 3/2 { d''8 c'' a' } }
  \tag #'left { \clef bass <g g,>2 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 g' fis' g' }
  \tag #'left { \clef bass r4 b a g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'4. a'8 b'4. b'8 }
  \tag #'left { \clef bass fis4 d g f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 c''\trill \grace { b'16 c'' } b'4 r }
  \tag #'left { \clef bass e4 fis! g8 g b d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' d'' b'>2 \tuplet 3/2 { d''8 g'' b'' } \tuplet 3/2 { d'''8 c''' a'' } }
  \tag #'left { \clef bass <g' g>2 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 g'' fis'' g'' }
  \tag #'left { \clef treble r8 d'' b' d'' a' d'' g' d'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''4 r8 a'' b''4 r8 b'' }
  \tag #'left { \clef treble fis'8 d'' d' d'' g' d'' f' d'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''8 g'' a'' f'' e'' g'' f'' d'' }
  \tag #'left { \clef treble e'4 f' g' g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { c''8 } \tuplet 3/2 4 { g''8 f'' e'' d'' c'' b' a' g' f' e' d' c' } }
  \tag #'left { \clef treble c'4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b4 b b b }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 f g d f g d f g d f g } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { c'8 d' e' f' g' a' b' c'' d'' e'' f'' g'' } }
  \tag #'left { \clef bass c4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 f'' f'' f'' }
  \tag #'left { \clef bass \tuplet 3/2 4 { b,8 d g b, d g  b, d g b, d g } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 d'' c'' b' a' g' f' e' d' c' b a } }
  \tag #'left { \clef bass c4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis4 gis gis gis }
  \tag #'left { \clef bass \tuplet 3/2 4 { b,8 d e b, d e b, d e b, d e } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a4 a'2 g'4 }
  \tag #'left { \clef bass \tuplet 3/2 4 { c8 e a c e a cis e a cis e a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'4 \tuplet 3/2 { a''8 fis'' d'' } c''!4 \tuplet 3/2 { a''8 fis'' c'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d fis a d fis a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'4 \tuplet 3/2 { g''8 d'' b' } g'4 \tuplet 3/2 { d''8 b' g' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 g b d g b d g b d g b } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'4 \tuplet 3/2 { a''8 fis'' d'' } c''4 \tuplet 3/2 { a''8 fis'' c'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d fis a d fis a d fis a } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'4 \tuplet 3/2 { g''8 d'' b' } g'4 \tuplet 3/2 { d''8 b' g' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 g b d g b d g b d g b } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 \tuplet 3/2 { d''8 b' g' } d'4 \tuplet 3/2 { d''8 b' g' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 fis a d g b d fis a d g b } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 r r8 d' d' d' }
  \tag #'left { \clef bass d4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 fis' g' a' }
  \tag #'left { \clef bass b8 d' c' d' b d' fis d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''8 b' a'4 r8 d' d' d' }
  \tag #'left { \clef bass g8 d' fis d' d4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'4 g' <a' fis'> <b' g'> }
  \tag #'left { \clef bass c'8 d' b d' a d' g d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' a'>8 c'' <b' g'>4 r8 d'' c'' b' }
  \tag #'left { \clef bass fis8 d' g d' g r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 a' a' a' g' d'' c'' b' }
  \tag #'left { \clef bass <e' c'>2 <d' b>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 a' a' a' g' d'' c'' b' }
  \tag #'left { \clef bass <e' c'>2 <d' b>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 a' r a' a' g' r g' }
  \tag #'left { \clef bass r4 <e' c'> r <e' cis'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'8 g' a' b' c''! d'' e'' fis'' }
  \tag #'left { \clef bass d'4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 fis'' g'' a'' }
  \tag #'left { \clef treble b'8 d'' c'' d'' b' d'' fis' d'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''8 b'' a''4 r8 d'' d'' d'' }
  \tag #'left { \clef treble g'8 d'' fis' d'' d'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''4 g'' <a'' fis''> <b'' g''> }
  \tag #'left { \clef treble c''8 d'' b' d'' a' d'' g' d'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d''' a''>8 c''' <b'' g''>4 r8 d''' c''' b'' }
  \tag #'left { \clef treble fis'8 d'' g' d'' g' r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b''8 a'' a'' a'' g'' d''' c''' b'' }
  \tag #'left { \clef treble \split { e''4 fis'' d'' } { c''2 b'4 } r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b''8 a'' a'' a'' g'' d''' c''' b'' }
  \tag #'left { \clef treble \split { e''4 fis'' d'' } { c''2 b'4 } r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b''8 a'' c''' a'' a'' g'' g'' fis'' }
  \tag #'left { \clef treble r4 c'' d'' d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { g''8 } \tuplet 3/2 4 { d'''8 c''' b'' a'' g'' fis'' e'' d'' c'' b' a' g' } }
  \tag #'left { \clef treble g'4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'4 fis' fis' fis' }
  \tag #'left { \clef bass \tuplet 3/2 4 { a8 c' d' a c' d' a c' d' a c' d' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g'8 a' b' c'' d'' e'' fis'' g'' a'' b'' c''' d''' } }
  \tag #'left { \clef bass <b g>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4 c''' c''' c''' }
  \tag #'left { \clef bass \tuplet 3/2 4 { fis8 a d' fis a d' fis a d' fis a d' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { b''8 } \tuplet 3/2 4 { d'''8 c''' b'' a'' g'' fis'' e'' d'' c'' b' a' g' } }
  \tag #'left { \clef bass <b g>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'4 f' f' f' }
  \tag #'left { \clef bass \tuplet 3/2 4 { b,8 d g b, d g b, d gis b, d gis } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'8 a' c'' } \tuplet 3/2 { e''8 c'' a' } g'4 a'\trill }
  \tag #'left { \clef bass \tuplet 3/2 4 { c8 e a c e a d g b d fis c' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g'8 a' b' c'' d'' e'' fis'' g'' a'' b'' c''' d''' } }
  \tag #'left { \clef bass <b g>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e''' c'''>1 }
  \tag #'left { \clef treble \tuplet 3/2 4 { r8 c' d' e' fis' g' a' b' c'' d'' e'' fis'' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d''' b''>4 <c''' a''> <b'' g''> <a'' fis''> }
  \tag #'left { \clef treble g''4 c'' d'' d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { d'''8 c''' b'' a'' g'' fis'' e'' d'' c'' b' a' g' } }
  \tag #'left { \clef treble R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' c''>1 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 c d e8fis g a b c' d' e' fis' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' b'>4 <c'' a'> <b' g'> <a' fis'> }
  \tag #'left { \clef bass g'4 c' d' d }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 \tuplet 3/2 { d'''8 b'' g'' } fis''4 \tuplet 3/2 { c'''8 a'' fis'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { g,8 b, d g, b, d g, c d g, c d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 \tuplet 3/2 { d''8 b' g' } fis'4 \tuplet 3/2 { c''8 a' fis' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { g,8 b, d g, b, d g, c d g, c d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 \tuplet 3/2 { d'''8 b'' g'' } fis''4 \tuplet 3/2 { c'''8 a'' fis'' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { g,8 b, d g, b, d g, c d g, c d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 \tuplet 3/2 { d''8 b' g' } fis'4 \tuplet 3/2 { c''8 a' fis' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { g,8 b, d g, b, d g, c d g, c d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 \tuplet 3/2 { c''8 a' fis' } g'4 \tuplet 3/2 { c''8 a' fis' } }
  \tag #'left { \clef bass \tuplet 3/2 4 { g,8 b, d g, c d g, b, d g, c d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 r <fis'' d'' c'' a'> r }
  \tag #'left { \clef bass g,4 r <d d,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' d'' b'>4 r r2\fermata }
  \tag #'left { \clef bass <g, g,,>4 r r2\fermata }
  \tag #'common { s1 }
  |

  }

  \bar "|."
}

secondMovement = {
  \mark \markup { \bold "Tempo di Menuetto" }
  \tempo 4 = 132
  \set Score.tempoHideNote = ##t
  \time 3/4
  \key g \major
  \accidentalStyle default

  \partial 4
  \tag #'right { \clef treble g'8. fis'16 }
  \tag #'left { \clef bass <b g>8 d' }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble fis'2 fis'8. g'16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'2 g'8. b'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4~ d''8 e'' d'' c'' }
  \tag #'left { \clef bass <a fis>8 d' d d' <a fis> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 g' g'8. fis'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'2 fis'8. g'16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'2 g'8. b'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4. cis''8 c'' a' }
  \tag #'left { \clef bass r4 <c' d> <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 r b'8. b'16 }
  \tag #'left { \clef bass <b g>4 g, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 c''8 r c''8. c''16 }
  \tag #'left { \clef treble <fis' dis'>4 <g' e'>8 r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 b'8 r b'8. b'16 }
  \tag #'left { \clef treble <g' e'>4 <fis' d'!>8 r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8 a' gis' a' dis'' e'' }
  \tag #'left { \clef bass r4 c' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'!4 fis'8 r g''8. fis''16 }
  \tag #'left { \clef bass \split { b4 a8 } { d4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''2 fis''8. g''16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''2 g''8. b''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4~ d'''8 e''' d''' c''' }
  \tag #'left { \clef bass <a fis>8 d' d d' <a fis> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 g''8 r g''8. fis''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''2 fis''8. g''16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''2 g''8. b''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 d'''16 cis''' d''' cis''' d''' c''' b'' a'' }
  \tag #'left { \clef bass r4 <c' d> <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r <d'' b'> }
  \tag #'left { \clef bass <b g>4 g, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' e''>4 r <fis'' d''> }
  \tag #'left { \clef treble r16 g a b c' d' e' fis' g'8 g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c''>4 r <d'' b'> }
  \tag #'left { \clef treble r16 g a b c' d' e' fis' g'8 g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' c''>4 <d'' c''> <d'' c''> }
  \tag #'left { \clef treble fis'8 e' fis' d' e' fis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' b'>4 r r }
  \tag #'left { \clef treble g'8 d' e' fis' g' a' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r16 d'' e'' fis'' g'' a'' b'' cis''' d'''8 d''' }
  \tag #'left { \clef treble <b' g'>4 r <a' fis'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r16 d'' e'' fis'' g'' a'' b'' cis''' d'''8 d''' }
  \tag #'left { \clef treble <g' e'>4 r <fis' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''8 a'' g'' fis'' e'' d'' }
  \tag #'left { \clef treble r4 g gis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \appoggiatura { cis''16 } a''4. b''16 a'' g''8 a''16 g'' }
  \tag #'left { \clef treble a16 cis' e' cis' a cis' e' cis' a cis' e' cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''8 g''16 fis'' e''8 fis''16 e'' d''8 e''16 d'' }
  \tag #'left { \clef treble a16 d' fis' d' a d' fis' d' a d' fis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble cis''4 r8 cis'' d''16 cis'' b' cis'' }
  \tag #'left { \clef treble a16 e' g' e' a e' g' e' a e' g' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 r8 d'' e''16 d'' cis'' d'' }
  \tag #'left { \clef treble a16 d' fis' d' a d' fis' d' a d' fis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''4. b''16 a'' g''8 a''16 g'' }
  \tag #'left { \clef treble a16 cis' e' cis' a cis' e' cis' a cis' e' cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''8 g''16 fis'' e''8 fis''16 e'' d''8 e''16 d'' }
  \tag #'left { \clef treble a16 d' fis' d' a d' fis' d' a d' fis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble cis''4 r8 cis'' e''16 d'' cis'' d'' }
  \tag #'left { \clef treble a16 e' g' e' ais e' g' e' b d' fis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''8. g''16 d''4 cis'' }
  \tag #'left { \clef treble g8 g' <fis' a>4 <e' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 e''16 fis'' g'' a'' b'' cis''' d'''8 d''' }
  \tag #'left { \clef treble <fis' d'>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8[ a''] a''[ fis''] fis''[ d''] }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''2 e''8. cis''16 }
  \tag #'left { \clef bass r4 \clef treble <fis' a> <g' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 e''16 fis'' g'' a'' b'' cis''' d'''8 d''' }
  \tag #'left { \clef treble <fis' d'>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { d'''8 a'' a'' a'' fis'' fis'' fis'' d'' d'' } }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''2 e''8. cis''16 }
  \tag #'left { \clef treble r4 <fis' a> <g' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8.[ d''16] cis''8.[ d''16 c''8. d''16] }
  \tag #'left { \clef treble <fis' d'>4 r <fis' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8.[ d''16] b'8.[ d''16 cis''8. e''16] }
  \tag #'left { \clef treble <g' d'>4 r <e' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8.[ d''16] cis''8.[ d''16 c''8. d''16] }
  \tag #'left { \clef treble <fis' d'>4 r <fis' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8.[ d''16] b'8.[ d''16 cis''8. e''16] }
  \tag #'left { \clef treble <g' d'>4 r <e' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8.[ d''16] cis''8.[ d''16 c''8. d''16] }
  \tag #'left { \clef treble <fis' d'>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8.[ d''16 a'8. d''16] g'8.[ fis'16] }
  \tag #'left { \clef treble r4 r \clef bass <b g>8 d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'2 fis'8. g'16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'2 g'8. b'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4~ d''8 e'' d'' c'' }
  \tag #'left { \clef bass <a fis>8 d' d d' <a fis> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 g' g'8. fis'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'2 fis'8. g'16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'2 g'8. b'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4. cis''8 c'' a' }
  \tag #'left { \clef bass r4 <c' d> <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 r b'8. b'16 }
  \tag #'left { \clef bass <b g>4 g, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 c''8 r c''8. c''16 }
  \tag #'left { \clef treble <fis' dis'>4 <g' e'>8 r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 b'8 r b'8. b'16 }
  \tag #'left { \clef treble <g' e'>4 <fis' d'!>8 r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8 a' gis' a' dis'' e'' }
  \tag #'left { \clef bass r4 c' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'!4 fis'8 r g''8. fis''16 }
  \tag #'left { \clef bass \split { b4 a8 } { d4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''2 fis''8. g''16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''2 g''8. b''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4~ d'''8 e''' d''' c''' }
  \tag #'left { \clef bass <a fis>8 d' d d' <a fis> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 g''8 r g''8. fis''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''2 fis''8. g''16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''2 g''8. b''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 d'''16 cis''' d''' cis''' d''' c''' b'' a'' }
  \tag #'left { \clef bass r4 <c' d> <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r c''8. e''16 }
  \tag #'left { \clef bass <b g>4 g, r }
  \tag #'common { s2. }
  |

  \bar "||"
  \key c \major

  \tag #'right { \clef treble <g'' e''>4. <e'' g'>8 <f'' a'> <d'' f'> }
  \tag #'left { \clef bass c8 c' c c' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e'>4 <c'' e'>8 g'[ c'' e''] }
  \tag #'left { \clef bass c8 c' c c' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' e''>4. <e'' g'>8 <f'' a'> <d'' f'> }
  \tag #'left { \clef bass c8 c' c c' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e'>4 r8 c'' b' c'' }
  \tag #'left { \clef bass c8 c' c r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8[ b'] g' d''[ c''[ d''] }
  \tag #'left { \clef bass r4 <d' b g> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''8[ c''] g' e''[ d'' e''] }
  \tag #'left { \clef bass r4 <e' c'> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''8 g'' a'' e'' f'' d'' }
  \tag #'left { \clef bass r4 r8 cis' d' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 b'8 g'[ c'' e''] }
  \tag #'left { \clef bass \split { e'4 d'8 } { g4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' e''>4. <e'' g'>8 <f'' a'> <d'' f'> }
  \tag #'left { \clef bass c8 c' c c' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e'>4 <c'' e'>8 g'[ c'' e''] }
  \tag #'left { \clef bass c8 c' c c' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' e''>4. <e'' g'>8 <f'' a'> <d'' f'> }
  \tag #'left { \clef bass c8 c' c c' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e'>4 r8 c'' b' c'' }
  \tag #'left { \clef bass c8 c' c r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8[ b'] g' d''[ c'' d''] }
  \tag #'left { \clef bass r4 <d' b g> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''8[ c''] g' e''[ d'' e''] }
  \tag #'left { \clef bass r4 <e' c'> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''8[ c''] a' fis''[ e'' fis''] }
  \tag #'left { \clef bass r4 <d' c'> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''8[ d''] b' g''[ a'' b''] }
  \tag #'left { \clef bass r4 <d' b> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''8 b'' a'' g'' fis'' e'' }
  \tag #'left { \clef bass r4 <d' fis> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 c'' b' a' g' fis' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |


  \bar "||"
  \key g \major

  \tag #'right { \clef treble e'8 d' r4 r }
  \tag #'left { \clef bass r4 cis'8 d' cis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r g'8. fis'16 }
  \tag #'left { \clef bass c'!8[ d' c' d'] <b g>[ d'] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'2 fis'8. g'16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'2 g'8. b'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4~ d''8 e'' d'' c'' }
  \tag #'left { \clef bass <a fis>8 d' d d' <a fis> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 g'8 r g'8. fis'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'2 fis'8. g'16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'2 g'8. b'16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4. cis''8 c'' a' }
  \tag #'left { \clef bass r4 <c' d> <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 r b'8. b'16 }
  \tag #'left { \clef bass <b g>4 g, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 c''8 r c''8. c''16 }
  \tag #'left { \clef treble <fis' dis'>4 <g' e'>8 r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 b'8 r b'8. b'16 }
  \tag #'left { \clef treble <g' e'>4 <fis' d'!>8 r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8 a' gis' a' dis'' e'' }
  \tag #'left { \clef bass r4 c' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'!4 fis'8 r g''8. fis''16 }
  \tag #'left { \clef bass \split { b4 a8 } { d4. } r8 <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''2 fis''8. g''16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''2 g''8. b''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4~ d'''8 e''' d''' c''' }
  \tag #'left { \clef bass <a fis>8 d' d d' <a fis> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 g''8 r g''8. fis''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''2 fis''8. g''16 }
  \tag #'left { \clef bass <c' a>8 d' d d' <c' a> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''2 g''8. b''16 }
  \tag #'left { \clef bass <b g>8 d' d d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 d'''16 cis''' d''' cis''' d''' c''' b'' a'' }
  \tag #'left { \clef bass r4 <c' d> <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r g''8. f''16 }
  \tag #'left { \clef bass <b g>4 g, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4 r f''8. e''16 }
  \tag #'left { \clef bass b8 g' d' g' b g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''4 r e''8. d''16 }
  \tag #'left { \clef bass c'8 e' c' e' c' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 r d''8. c''16 }
  \tag #'left { \clef bass gis8 e' b e' gis e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 r c''8. a'16 }
  \tag #'left { \clef bass a8 e' c' e' c' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8 fis' d''4. g'8 }
  \tag #'left { \clef bass <c' a>8 d' <a fis> d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8 fis' d''4. b'8 }
  \tag #'left { \clef bass <c' a>8 d' <a fis> d' <b g> d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 a'16 c'' r8 g'16 b' r8 fis'16 a' }
  \tag #'left { \clef bass c4 d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r16 g' a' b' c'' d'' e'' fis'' g'' a'' b'' g'' }
  \tag #'left { \clef bass g4 r r8 \clef treble <b' g'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''8 d'''4 d'''8 c'''16 b'' a'' g'' }
  \tag #'left { \clef treble <c'' a'>8 d'' <a' fis'> d'' <b' g'> d'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''16 d''' cis''' d''' cis''' d''' cis''' d''' c''' b'' a'' g'' }
  \tag #'left { \clef treble <c'' a'>8 d'' <a' fis'> d'' <b' g'> d'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble dis'''16 e''' dis''' e''' g''4 b''16 a'' g'' a'' }
  \tag #'left { \clef treble c'4 <b' d'> <c'' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r <fis' c'> }
  \tag #'left { \clef treble <b' g'>4 r \clef bass <a d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' b>4 r }
  \tag #'left { \clef bass <g g,>4 r }
  \tag #'common { s2 }
  |

  \bar "|."
}

movementSpecs = #'(
  (firstMovement "Allegro ma non troppo")
  (secondMovement "Tempo di Menuetto")
)
