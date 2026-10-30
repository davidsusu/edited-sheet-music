\version "2.26.0"

\include "../../shared/src/lilypond/lib.ily"

workTitle = "Piano Sonata No. 6"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 10 No. 2"
workDate = "1796-1798"
workEditor = "Dávid Horváth"

firstMovement = {
  \mark \markup { \bold "Allegro" }
  \tempo 4 = 116
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 2/4
    \set Timing.beatBase = #1/8
    \set Timing.beatStructure = #'(2 2)
    \set Timing.beamExceptions = \beamExceptions {
      8[ 8 8 8] |
      16[ 16 16 16] 16[ 16 16 16] |
      \tuplet 3/2 8 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } |
      32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32] |
    }
  \key f \major
  \accidentalStyle default

  \repeat volta 2 {

  \partial 8
  \tag #'right { \clef treble <a' f' c' a>8 }
  \tag #'left { \clef bass <f c f,>8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <c'' a' f' c'>4 r8 \tuplet 3/2 { c''16 b' d'' } }
  \tag #'left { \clef bass <f c f,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4 r8 <a' f' c'> }
  \tag #'left { \clef bass r4 r8 <f c f,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes' g' c'>4 r8 \tuplet 3/2 { bes'16 a' c'' } }
  \tag #'left { \clef bass <e c e,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'4 r8 bes' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble a'16 c'' f''4 e''8 }
  \tag #'left { \clef bass <c' a f>4 <c' bes g> }
  \tag #'common { s2 }
  |
\endRevisionSection
  \tag #'right { \clef treble f''8 a''4 g''8~ }
  \tag #'left { \clef treble <f' c' a>4 <g' f' d' bes> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 a''4 bes''16 c''' }
  \tag #'left { \clef treble <a' f' c'>4 <c'' a' f' ees'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 bes'' r4 }
  \tag #'left { \clef treble <bes' f' d'>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \afterGrace { bes''8\trill } { a''16 bes'' } d'''4 c'''16 bes'' }
  \tag #'left { \clef treble <bes' f' d'>4 <c'' g' e'!> }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble \grace { a''16 bes'' c''' } bes''8 a''~ a''16.[ g''32 bes''16. g''32] }
  \tag #'left { \clef treble <c'' a' f'>4 <g' d' bes> }
  \tag #'common { s2 }
  |
\endRevisionSection
  \tag #'right { \clef treble g''8 f''~ f''16.[ e''32 g''16. e''32] }
  \tag #'left { \clef treble <a' f' c'>4 <bes' g' c'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''4 r8 }
  \tag #'left { \clef treble <a' f'>4 r8 }
  \tag #'common { s4. }
  \tag #'right { \clef treble <a' f' c' a>8 }
  \tag #'left { \clef bass <f c f,>8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <c'' a' f' c'>4 r8 \tuplet 3/2 { c''16 b' d'' } }
  \tag #'left { \clef bass <f c f,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4 r8 <a' dis' c' a> }
  \tag #'left { \clef bass r4 r8 <dis c f,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' a' dis' c'>4 r8 \tuplet 3/2 { c''16 b' d'' } }
  \tag #'left { \clef bass <dis c f,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4 r8 \split { \tuplet 3/2 { c''16 b' a' } } { dis'8 } }
  \tag #'left { \clef bass r4 r8 \split { \tuplet 3/2 { a16 b c' } } { f8 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''8[ \tuplet 3/2 { c''16 b' a'] } e''8[ \tuplet 3/2 { c''16 b' a'] } } { e'8[ dis'] e'[ dis'] } }
  \tag #'left { \clef bass \split { gis8 \tuplet 3/2 { a16 b c' } gis8 \tuplet 3/2 { a16 b c' } } { e8[ f] e[ f] } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4 r8 <g'! g!> } { e'4 s } }
  \tag #'left { \clef bass \split { gis4 r8 g,16 b, } { e4 s } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' e>4 <g' e' c' g> }
  \tag #'left { \clef bass c16 e g, b, c e g, b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' g' e' c'>4. <e'' e'>8 }
  \tag #'left { \clef bass c16 e g, b, c e g, b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>8 <c''' c''>4 <e''' e''>16 <d''' d''> }
  \tag #'left { \clef bass c16 e g, b, c e g, c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>4 <b'' b'>8 r }
  \tag #'left { \clef bass d16 f g, cis d f g, cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' f' d' b>4 <d'' b' f' d'> }
  \tag #'left { \clef bass d16 f g, cis d f g, cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d'' b' f'>4. <b'' b'>8 }
  \tag #'left { \clef bass d16 f g, cis d f g, cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>8 <f''' f''>4 <e''' e''>8 }
  \tag #'left { \clef bass d16 f g, cis d f g, d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>4 <c''' c''>8 r }
  \tag #'left { \clef bass e16 g c! dis e g e d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' c'' g' e'>4 <g'' e'' c'' g'> }
  \tag #'left { \clef bass c16 c' e' d' c' e' c' b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>4. <cis'''~ cis''~>8 }
  \tag #'left { \clef bass a16 c' a g fis a fis e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <cis''' cis''>8 <d''' d''>4 <c''' c''>8 }
  \tag #'left { \clef bass d16 e fis g a d e fis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>8 <b'' b'> r \split { fis''8 } { c''8 } }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { g16[ b d' b d' b] a[ c' d' c' d' c'] } } { g4 a } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''4 } { c''8 b' } r8 c''' }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { g16[ b d' b d' b] fis[ a d' a d' a] } } { g4 fis } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''16 b'' a'' g'' r8 \split { fis'' } { c'' } }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { g16[ b d' b d' b] a[ c' d' c' d' c'] } } { g4 a } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''4 } { c''16 b' a' g' } r8 c''' }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { g16[ b d' b d' b] fis[ a d' a d' a] } } { g4 fis } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''16 b'' a'' g'' r8 c''' }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { g16[ b d' b d' b] fis[ a d' a d' a] } } { g4 fis } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''16 b'' a'' g'' r8 c''' }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { g16[ b d' b d' b] fis[ a d' a d' a] } } { g4 fis } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''16 b'' a'' g'' fis'' g'' a'' g'' }
  \tag #'left { \clef bass <d' b g>8\arpeggio r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''16 g'' a'' g'' fis'' g'' gis'' a'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 f'' d'' e''\turn }
  \tag #'left { \clef treble \split { g'4 g'8 g' } { f'8 d' b c' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 f'' d'' e''\turn }
  \tag #'left { \clef treble \split { g'4 g'8 g' } { f'8 d' b c' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d'' a'>8 r <d'' b' g'> r }
  \tag #'left { \clef bass <f' f>8 r <d' b g> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' c'' g' e'>4 }
  \tag #'left { \clef bass <c' g e c>4 }
  \tag #'common { s4 }
  \tag #'right { \clef treble r8 r32 g'' ees'' g' }
  \tag #'left { \clef treble r8 <g' ees'> }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble r32 aes'' f'' g' r f'' d'' g' r d'' b' g' r ees'' c'' g' }
  \tag #'left { \clef treble <aes' f'>8[ <f' d'>] <d' b>[ <ees' c'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 aes'' f'' g' r f'' d'' g' r d'' b' g' r ees'' c'' g' }
  \tag #'left { \clef treble <aes' f'>8[ <f' d'>] <d' b>[ <ees' c'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d'' aes'>8 r <d'' b' f'> r }
  \tag #'left { \clef bass <d' aes f>8 r <d' b g> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' aes' ees'>8 r r4 }
  \tag #'left { \clef bass <c' aes>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' a'! ees'>8 r r4 }
  \tag #'left { \clef bass <c' a! fis>8 r r4 }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble r16 <b' d'> r <d'' f'> r <c'' e'!> r <e'' c''> }
  \tag #'left { \clef bass <g f>8 <g b,> <g c> <g g,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <f'' b'> r <b'' f''> r <c''' e''> r <e''' c'''> }
  \tag #'left { \clef bass <g d>8 <g g,> <g c> <g g,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <f''' b''> r <b'' d''> r <c''' e''> r <e''' g''> }
  \tag #'left { \clef bass <g d>8 <g f> <g e> <g c> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <f''' f''> r <b'' d''> r <c''' e''> r <e''' g''> }
  \tag #'left { \clef bass <g d>8 <g f> <g e> <g c> }
  \tag #'common { s2 }
  |
\endRevisionSection
  \tag #'right { \clef treble r8 \tuplet 3/2 { d'''16[ cis''' e'''] } d'''8 \tuplet 3/2 { a''16[ gis'' b''] } }
  \tag #'left { \clef bass <d a, f,>8 r <d' a f> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 \tuplet 3/2 { f''16[ e'' g''] } f''8 \tuplet 3/2 { d''16[ cis'' e''] } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 d''4 e''16 f'' }
  \tag #'left { \clef treble r8 d'4 e'16 f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''4~ \tuplet 3/2 8 { g''16 a'' g'' f'' e'' d'' } }
  \tag #'left { \clef treble g'4 <f' d' b g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4 g''8 g'' }
  \tag #'left { \clef treble \tuplet 3/2 8 { c'16 e' g' c' e' g' c' e' g' c' e' g' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 r <c''' c''> <c''' c''> }
  \tag #'left { \clef treble \tuplet 3/2 8 { c'16 e' g' c' e' g' c' e' g' c' e' g' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' a'>8 r }
  \tag #'left { \clef bass \tuplet 3/2 8 { <a f>16 c' d' <a f> c' d' } }
  \tag #'common { s4 }
  \tag #'right { \clef bass fis,8 fis, }
  \tag #'left { \clef bass \tuplet 3/2 8 { <a fis>16 c' d' <a fis> c' d' } }
  \tag #'common { s4 }
  |

  \tag #'right { \clef bass \acciaccatura { fis,8 } \afterGrace { g,2\startTrillSpan s1*0\stopTrillSpan } { fis,16 g, } }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16 c' e' g c' e' g b d' g b d' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass c,4 }
  \tag #'left { \clef bass c32 e g c' c e g c' }
  \tag #'common { s4 }
  \tag #'right { \clef treble g'32 g''16. g'32 g''16. }
  \tag #'left { \clef bass c32 e g c' c e g c' }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble e'32 e''16. r8 c''32 c'''16. c''32 c'''16. }
  \tag #'left { \clef bass c32 e g c' c e g c' \tuplet 3/2 8 { e16 g c' e g c' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'32 a''16. r8 }
  \tag #'left { \clef bass f32 a c' d' f a c' d' }
  \tag #'common { s4 }
  \tag #'right { \clef bass fis,8 fis, }
  \tag #'left { \clef bass fis32 a c' d' fis a c' d' }
  \tag #'common { s4 }
  |

  \tag #'right { \clef bass \acciaccatura { fis,8 } \afterGrace { g,2\startTrillSpan s1*0\stopTrillSpan } { fis,16 g, } }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16 c' e' g c' e' g b d' g b d' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass c,4 }
  \tag #'left { \clef bass c32 e g c' c e g c' }
  \tag #'common { s4 }
  \tag #'right { \clef treble fis''8 fis'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { c16 ees g c ees g } }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble \acciaccatura { fis''8 } \afterGrace {g''2\startTrillSpan s1*0\stopTrillSpan } { fis''!16 g'' } }
  \tag #'left { \clef bass g,32 c d g g, c d g g, b, d g g, b, d g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>8 r <g'' g'> r }
  \tag #'left { \clef bass c8 r <g g,> r }
  \tag #'common { s2 }
  |

  }

  \alternative {
    {
      \tag #'right { \clef treble <c'' c'>4 r8 }
      \tag #'left { \clef bass <c c,>4 r8 }
      \tag #'common { s4. }
      |
    }
    {
      \tag #'right { \clef treble <c'' c'>4 r }
      \tag #'left { \clef bass <c c,>4 r }
      \tag #'common { s2 }
      |
    }
  }

  \repeat volta 2 {

  \tag #'right { \clef treble <a'' a'>8 r <e'' e'> r }
  \tag #'left { \clef bass <a a,>8 r <e e,> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' a>8 r r4 }
  \tag #'left { \clef bass <a, a,,>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 d'' e'' f'' e'' d'' r a'' b'' cis''' b'' a'' } }
  \tag #'left { \clef bass d'8 r a r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 d''' cis''' d''' e''' d''' f''' d''' }
  \tag #'left { \clef bass d8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 cis''' d''' e''' d''' cis''' r cis''' d''' e''' d''' cis''' } }
  \tag #'left { \clef bass a8 r e r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 \turnAccidental #7 ##f \markup \natural cis'''16 e''' d''' cis''' bes''! a'' g'' }
  \tag #'left { \clef bass a,8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' a'' f'' d''>8 r <a'' e'' cis'' a'> r }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 d, e, f, e, d, r a, b, cis b, a, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' a' f' d'>8 r r4 }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 d e f e d } a16 f e d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' e'' cis'' a'>8 r <e'' b' gis' e'> r }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 a, b, cis b, a, r e fis gis fis e } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' e' cis'>8 r r4 }
  \tag #'left { \clef bass r16 gis a bes! a g f e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f' f'' r gis' gis'' r a' a'' r d' d'' } }
  \tag #'left { \clef bass d,8 <a f d>[ <a f d> <a f d>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 d' d'' r cis' cis'' r cis' cis'' r e' e'' } }
  \tag #'left { \clef bass e,8 <a g e>[ <a g e> <a g e>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 e' e'' r d' d'' r d' d'' r f' f'' } }
  \tag #'left { \clef bass f,8 <a f>[ <a f> <a f>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f' f'' r e' e'' r e' e'' r g' g'' } }
  \tag #'left { \clef bass cis,8 <a cis>[ <a cis> <a cis>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 g' g'' r f' f'' r g' g'' r fis' fis'' } }
  \tag #'left { \clef bass d8[ d'] c![ c'!] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 a' a'' r g' g'' r bes' bes'' r a' a'' } }
  \tag #'left { \clef bass bes,8[ bes] fis,[ fis] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 c'' c''' r bes' bes'' r d'' d''' r g' g'' } }
  \tag #'left { \clef bass g,8 <d' bes g>[ <d' bes g> <d' bes g>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 g' g'' r e' e'' r fis' fis'' r a' a'' } }
  \tag #'left { \clef bass a,8 <d' c' a>[ <d' c' a> <d' c' a>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 a' a'' r fis' fis'' r g' g'' r bes' bes'' } }
  \tag #'left { \clef bass bes,8 <d' bes>[ <d' bes> <d' bes>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 bes' bes'' r gis' gis'' r a' a'' r c'' c''' } }
  \tag #'left { \clef bass fis8 <d' c'>[ <d' c'> <d' c'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 c'' c''' r bes' bes'' r c'' c''' r b' b'' } }
  \tag #'left { \clef bass g8[ g'] f![ f'!] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 d'' d''' r c'' c''' r ees'' ees''' r d'' d''' } }
  \tag #'left { \clef bass ees8[ ees'] b,[ b] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' f''' r ees'' ees''' r f'' f''' r e'' e''' } }
  \tag #'left { \clef bass c8[ c'] bes,![ bes!] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' f''' r c'' c''' r f'' f''' r ees'' ees''' } }
  \tag #'left { \clef bass a,8[ a] f,[ f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 ees'' ees''' r d'' d''' r f'' f''' r bes' bes'' } }
  \tag #'left { \clef bass bes,8 <f' d' bes>[ <f' d' bes> <f' d' bes>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 bes' bes'' r gis' gis'' r a' a'' r c'' c''' } }
  \tag #'left { \clef bass c8 <f' ees' c'>[ <f' ees' c'> <f' ees' c'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 c'' c''' r a' a'' r bes' bes'' r d'' d''' } }
  \tag #'left { \clef bass d8 <f' d'>[ <f' d'> <f' d'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 d'' d''' r b' b'' r c'' c''' r ees'' ees''' } }
  \tag #'left { \clef bass a8 <f' ees' c'>[ <f' ees' c'> <f' ees' c'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 d''' ees''' f''' ees''' d''' r d''' ees''' f''' ees''' d''' } }
  \tag #'left { \clef treble bes'8 r f' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 d''' ees''' f''' ees''' ees''' } e'''16 f''' d''' bes'' }
  \tag #'left { \clef treble bes8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 a'' bes'' c''' bes'' a'' r a'' bes'' c''' bes'' a'' } }
  \tag #'left { \clef bass f'8 r c' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 a'' bes'' c''' bes'' a'' } ees''' c''' a'' ees'' }
  \tag #'left { \clef bass f8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' f'' des'' bes'>8 r <f'' des'' bes' f'> r }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 bes, c des c bes, r bes, c des! c bes, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <des'' bes' f' des'>8 r r4 }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 bes, c des c bes, } f16 des c bes, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees'' a' f' ees'>8 r <c'' a' f' ees'> r }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 f, g, a, g, f, r a, bes, c bes, a, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' f' ees' c'>8 r r4 }
  \tag #'left { \clef bass \tuplet 3/2 8 { r16 c des ees des c } f ees des c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 bes' c'' des'' c'' bes' r bes' c'' des'' c'' bes' } }
  \tag #'left { \clef bass bes8 r f r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 bes' c'' des'' c'' bes' } bes''16 f'' des''' f'' }
  \tag #'left { \clef bass bes,8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 e'' f'' g'' f'' e'' r e'' f'' g'' f'' e'' } }
  \tag #'left { \clef bass c8 r g, r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 e'' f'' g'' f'' e'' } bes''16 g'' e'' bes' }
  \tag #'left { \clef bass c,8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 aes' bes' c'' bes' aes' r aes' bes' c'' bes' aes' } }
  \tag #'left { \clef bass f8 r c r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 aes' bes' c'' bes' aes' } f'' aes' aes'' aes' }
  \tag #'left { \clef bass f,8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' g'' aes'' g'' f'' r f'' g'' aes'' g'' f'' } }
  \tag #'left { \clef bass des8 r aes, r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' g'' aes'' g'' f'' } aes''16 f'' f''' f'' }
  \tag #'left { \clef bass des,8 r c, r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' g'' aes'' g'' f'' } d'''16 f'' d''' f'' }
  \tag #'left { \clef bass b,,8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' g'' aes'' g'' f'' } d'''16 f'' d''' f'' }
  \tag #'left { \clef bass bes,,!4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { r16 f'' g'' a''! g'' f'' } d'''16 f'' d''' f'' }
  \tag #'left { \clef bass a,,!4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''16 f'' d''' f'' d''' f'' d''' f'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 e'' d''' e'' d''' e'' d''' e'' }
  \tag #'left { \clef bass <a, a,,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 e'' cis''' e'' cis''' e'' cis''' e'' }
  \tag #'left { \clef bass <a, a,,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8\fermata }
  \tag #'left { \clef bass r4 r8\fermata }
  \tag #'common { s4. }
  \key d \major

  \tag #'right { \clef treble <fis' d'>8 }
  \tag #'left { \clef bass <a d>8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <a' fis' d'>4 r8 \tuplet 3/2 { a''16 gis'' b'' } }
  \tag #'left { \clef bass <a d>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''4 r8 <fis' d'> }
  \tag #'left { \clef bass r4 r8 <a d> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' e'>4 r8 \tuplet 3/2 { a''16 gis'' b'' } }
  \tag #'left { \clef bass <a cis>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''4 r8 g' }
  \tag #'left { \clef bass r2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis'16. a'32 d''4 cis''8 }
  \tag #'left { \clef bass <a fis d>4 <cis' a g e> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 fis''4 e''8~ }
  \tag #'left { \clef bass <d' a fis>4 <d' b g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 fis''4 g''16 a'' }
  \tag #'left { \clef treble <fis' d' c' a>4 <a' fis' d' c'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 g'' r4 }
  \tag #'left { \clef treble <g' d' b>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \afterGrace { g''8\trill } { fis''16 g'' } b''4 a''16 g'' }
  \tag #'left { \clef treble <g' d' b>4 <a' e' cis'!> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { fis''32 g'' a'' } g''8[ fis''~] fis''16.[ e''32 g''16. e''32] }
  \tag #'left { \clef treble <a' fis' d'>4 <e' b g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8[ d''~] d''16.[ cis''32 e''16. cis''32] }
  \tag #'left { \clef treble <fis' d' a>4 <g' e' a> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''4 r }
  \tag #'left { \clef treble <fis' d'>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 <a' fis'> }
  \tag #'left { \clef bass r4 r8 <d' d> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes' g'>4 r8 \tuplet 3/2 { bes''16 a'' c''' } }
  \tag #'left { \clef bass <d' g>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''4 r8 <bes' g'> }
  \tag #'left { \clef bass r4 r8 <d' g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes' e'>4 r8 \tuplet 3/2 { bes''16 a'' c''' } }
  \tag #'left { \clef bass <c' c>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''4 r8 \tuplet 3/2 { bes''16 a'' c''' } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''8[ \tuplet 3/2 { bes''16 a'' c'''] } bes''8 \tuplet 3/2 { bes''16 a'' c''' } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''4 r8 }
  \tag #'left { \clef bass r4 r8 }
  \tag #'common { s4. }
  \key f \major

  \tag #'right { \clef treble bes'8 }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble a'16. c''32 f''4 e''8 }
  \tag #'left { \clef treble <c' a f>4 <c' bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''8 a''4 g''8~ }
  \tag #'left { \clef treble <f' c' a>4 <g' f' d' bes> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 a''4 bes''16 c''' }
  \tag #'left { \clef treble <a' f' c'>4 <c'' a' f' ees'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 bes'' r4 }
  \tag #'left { \clef treble <bes' f' d'>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \afterGrace { bes''8\trill } { a''16 bes'' } d'''4 c'''16 bes'' }
  \tag #'left { \clef treble <bes' f' d'>4 <c'' g' e'!> }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble \grace { a''32 bes'' c''' } bes''8[ a''~] a''16.[ g''32 bes''16. g''32] }
  \tag #'left { \clef treble <c'' a' f'>4 <g' d' bes> }
  \tag #'common { s2 }
  |
\endRevisionSection
  \tag #'right { \clef treble g''8[ f''~] f''16.[ e''32 g''16. e''32] }
  \tag #'left { \clef treble <a' f' c'>4 <bes' g' c'>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''4 r8 <f' f> }
  \tag #'left { \clef bass f,16 a, c, e, f, a, c, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' f' c' a>4 <c'' a' f' c'> }
  \tag #'left { \clef bass f,16 a, c, e, f, a, c, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' c'' a' f'>4. <a'' f'' c'' a'>8 }
  \tag #'left { \clef bass f,16 a, c, e, f, a, c, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' a'' f'' c''>8 <f''' c''' a'' f''>4 <f''' c''' a'' f''>8 }
  \tag #'left { \clef bass f,16 a, c, e, f, a, c, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f''' c'''~ bes''~ f''>4 <e''' c''' bes'' e''>8 r }
  \tag #'left { \clef bass g,16 bes, c, fis, g, bes, c, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' bes g e>4 <g' e' bes g> }
  \tag #'left { \clef bass g,16 bes, c, fis, g, bes, c, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes' g' e' bes>4. <e'' e'>8 }
  \tag #'left { \clef bass g,16 bes, c, fis, g, bes, c, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>8 <bes'' bes'>4 <a'' a'>8 }
  \tag #'left { \clef bass g,16 bes, c, fis, g, bes, c, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>4 <f'' f'>8 r }
  \tag #'left { \clef bass a,16 c f,! gis, a, c f, aes, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'16 aes' c' e' f' aes' c' e' }
  \tag #'left { \clef bass \split { r4 f~ } { c2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'16 aes' c' e' f' aes' c' e' }
  \tag #'left { \clef bass \split { <aes f>4. } { c4. } <aes f>8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'16 aes' c' e' f' g' aes' f' }
  \tag #'left { \clef bass <aes f>8 <aes f> <aes f> <aes f> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16 bes' ees' fis' g' bes' ees' fis' }
  \tag #'left { \clef bass <bes g ees>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16 bes' ees' fis' g' bes' ees' fis' }
  \tag #'left { \clef bass \split { r4 g~ } { ees2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16 bes' ees' fis' g' bes' ees' fis' }
  \tag #'left { \clef bass \split { <bes g>4. } { ees4. } <des' bes>8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16 bes' ees' fis' g' bes' ees' g' }
  \tag #'left { \clef bass <des' bes>8 <des' bes> <des' bes> <des' bes> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes'16 c'' ees' g' a' c'' f' a' }
  \tag #'left { \clef bass <c' aes>4 ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16 f'' f' a' b' f' f'' b' }
  \tag #'left { \clef bass d'!4 des' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4 r8 f''' }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { c16[ e g e g e] b,[ d g d g d] } } { c4 b, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'''8 e''' r \split { b''8 } { f''8 } }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { c16[ e g e g e] d[ f g f g f] } } { c4 d } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4 } { f''8[ e''] } r8 f''' }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { c16[ e g e g e] b,[ d g d g d] } } { c4 b, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'''16 e''' d''' c''' r8 \split { b''8 } { f''8 } }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { c16[ e g e g e] d[ f g f g f] } } { c4 d } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4 } { f''16 e'' d'' c'' } r8 \split { b''8 } { f''8 } }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { c16[ e g e g e] d[ f g f g f] } } { c4 d } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4 } { f''16 e'' d'' c'' } r8 \split { b''8 } { f''8 } }
  \tag #'left { \clef bass \split { \tuplet 6/4 4 { c16[ e g e g e] d[ f g f g f] } } { c4 d } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4 s } { f''16 e'' d'' c'' b' c'' d'' c'' } }
  \tag #'left { \clef bass <g e c>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16 c'' d'' c'' b' c'' cis'' d'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 bes'! g' a'\turn }
  \tag #'left { \clef bass \split { c'4 c'8 c' } { bes!8 g e f } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 bes' g' a'\turn }
  \tag #'left { \clef bass \split { c'4 c'8 c' } { bes8 g e f } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes' g' d'>8 r <g' e' c'> r }
  \tag #'left { \clef bass <bes bes,>8 r <g e c> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' f' c'>4 }
  \tag #'left { \clef bass <f c f,>4 }
  \tag #'common { s4 }
  \tag #'right { \clef treble r8 r32 c''' aes'' c'' }
  \tag #'left { \clef treble r8 <c'' aes'> }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble r32 des''' bes'' c'' r bes'' g'' c'' r g'' e'' c'' r aes'' f'' c'' }
  \tag #'left { \clef treble <des'' bes'>8[ <bes' g'>] <g' e'>[ <aes' f'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 des''' bes'' c'' r bes'' g'' c'' r g'' e'' c'' r aes'' f'' c'' }
  \tag #'left { \clef treble <des'' bes'>8[ <bes' g'>] <g' e'>[ <aes' f'>] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' g'' des''>8 r <g'' e'' bes'> r }
  \tag #'left { \clef treble <g' des' bes>8 r <g' e' c'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' des'' aes'>8 r r4 }
  \tag #'left { \clef treble <f' des'>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' d'! aes>8 r r4 }
  \tag #'left { \clef bass <b, b,,>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <e' g> r <g' bes> r <f' a!> r <a' f'> }
  \tag #'left { \clef bass <c bes,!>8 <c e,> <c f,> <c c,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <bes' e'> r <e'' bes'> r <f'' a'> r <a'' f''> }
  \tag #'left { \clef bass <c g,>8 <c c,> <c f,> <c c,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <bes'' e''> r <c''' g'' e''> r <c''' a'' f''> r <f''' c''' a''> }
  \tag #'left { \clef bass <c g,>8 <c bes,> <c a,> <c f,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 <e''' c''' g''> r <c''' g'' e''> r <c''' a'' f''> r <f''' c''' a''> }
  \tag #'left { \clef bass <c g,>8 <c bes,> <c a,> <c f,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { d'''16 cis''' e''' } d'''8 \tuplet 3/2 { bes''16 a'' c''' } }
  \tag #'left { \clef bass <g d bes,>8 r <g' d' bes> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''8 \tuplet 3/2 { g''16 fis'' a'' } g''8 \tuplet 3/2 { d''16 cis'' e'' } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 g'4 a'16 bes' }
  \tag #'left { \clef bass r8 g4 a16 bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4~ \tuplet 3/2 8 { c''16 d'' c'' bes' a' g' } }
  \tag #'left { \clef bass c'4 <bes g e c> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 \split { g''4 a''16 b'' } { f''4. } }
  \tag #'left { \clef bass <a f>8 \clef treble \split { g'4 a'16 b' } { <f' d'>4. } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''4~ c'''32 d''' c''' b'' \tuplet 3/2 { c'''16 d''' e''' } }
  \tag #'left { \clef treble <c'' a' f' c'>4 <bes'! g' c'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'''8 r <c''' c''> <c''' c''> }
  \tag #'left { \clef bass \tuplet 3/2 8 { f16 a c' f a c' f a c' f a c' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' a'>8 r <f''' f''> <f''' f''> }
  \tag #'left { \clef bass \tuplet 3/2 8 { f16 a c' f a c' } \clef treble \tuplet 3/2 8 { a c' f' a c' f' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>8 r \clef bass b, b, }
  \tag #'left { \tuplet 3/2 8 { <d' bes>16 f' g' <d' bes> f' g' <d' b> f' g' <d' b> f' g' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \acciaccatura { b,8 } \afterGrace { c2\startTrillSpan s1*0\stopTrillSpan } { b,16 c } }
  \tag #'left { \clef treble \tuplet 3/2 8 { c'16 f' a' c' f' a' c' e' g' c' e' g' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass f,4 \clef treble c''32 c'''16. c''32 c'''16. }
  \tag #'left { \clef bass f32 a c' f' f a c' f' f a c' f' f a c' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'32 a''16. r8 f''32 f'''16. f''32 f'''16. }
  \tag #'left { \clef bass f32 a c' f' f a c' f' \clef treble \tuplet 3/2 8 { a16 c' f' a c' f' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''32 d'''16. r8 \clef bass b, b, }
  \tag #'left { \clef treble bes32 d' f' g' bes d' f' g' b d' f' g' b d' f' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \acciaccatura { b,8 } \afterGrace { c2\startTrillSpan s1*0\stopTrillSpan } { b,16 c } }
  \tag #'left { \clef treble \tuplet 3/2 8 { c'16 f' a' c' f' a' c' e' g' c' e' g' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass f,4 \clef treble b''8 b''}
  \tag #'left { \clef bass f32 a c' f' f a c' f' \tuplet 3/2 8 { f16 aes c' f aes c' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \acciaccatura { b''8 } \afterGrace { c'''2\startTrillSpan s1*0\stopTrillSpan } { b''16 c''' } }
  \tag #'left { \clef bass c32 f g c' c f g c' c e g c' c e g c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f''' f''>4 b'8 b' }
  \tag #'left { \clef bass f,32 a, c f f, a, c f \tuplet 3/2 8 { f,16 aes, c f, aes, c } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \acciaccatura { b'8 } \afterGrace { c''2\startTrillSpan s1*0\stopTrillSpan } { b'16 c'' } }
  \tag #'left { \clef bass c,32 f, g, c c, f, g, c c, e, g, c c, e, g, c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' f'>8 r <c'' c'> r }
  \tag #'left { \clef bass f,8 r <c c,> r }
  \tag #'common { s2 }
  |

  }
  \alternative {
  {
  \tag #'right { \clef treble <f' f>4 r }
  \tag #'left { \clef bass <f, f,,>4 r }
  \tag #'common { s2 }
  |
  } {
  \tag #'right { \clef treble <f' f>4 r8\fermata }
  \tag #'left { \clef bass <f, f,,>4 r8\fermata }
  \tag #'common { s4. }
  |
  }
  }
  
  \bar "|."
}

secondMovement = {
  \mark \markup { \bold "Allegretto" }
  \tempo 4 = 160
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 3/4
  \set Timing.beatBase = #1/4
  \set Timing.beatStructure = #'(3)
  \key f \minor
  \accidentalStyle default

  \repeat volta 2 {

  \partial 4
  \tag #'right { \clef bass c4 }
  \tag #'left { \clef bass c,4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef bass f4 aes e }
  \tag #'left { \clef bass f,4 aes, e, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass f4 aes c' }
  \tag #'left { \clef bass f,4 aes, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 bes e' }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'4 c' g' }
  \tag #'left { \clef bass f4 c g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes'2 bes'4 } { aes'4 f' ees'!~ } }
  \tag #'left { \clef bass aes4 f <bes g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <c'' aes'>2 \grace { ees''8 } <des'' bes'>4 } { ees'4 f'2 } }
  \tag #'left { \clef bass \split { <c' aes>2 s4 } { aes4 f des } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' aes' ees'>2 <bes' g' des'>4 }
  \tag #'left { \clef bass ees4 ees, ees, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>4 r }
  \tag #'left { \clef bass aes,4 aes,, }
  \tag #'common { s2 }

  }

  \repeat volta 2 {

  \tag #'right { \clef treble \split { c''4 } { r4 } }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble \split { c''4 des''8 c'' des''4 } { r4 r f' } }
  \tag #'left { \clef bass r4 r <c' aes> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { des''4 r des'' } { f'4 g'8 f' g'4 } }
  \tag #'left { \clef bass <des' bes>2 <des' bes>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { des''4 ees''8 des'' ees''4 } { g'4 r g' } }
  \tag #'left { \clef bass <des' bes>2 <des' bes>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 r ees'' } { g'4 a'8 g' a'4 } }
  \tag #'left { \clef bass <ees' c'>2 <ees' c'>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 f''8 ees'' f''4 } { a'4 r a' } }
  \tag #'left { \clef bass <ees' c'>2 <ees' c'>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''2 f''4 } { a'4 bes'8 a' bes'4 } }
  \tag #'left { \clef bass <f' des'>2 <f' des'>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''2\trill \grace { e''16 f'' } g''4 } { b'2 b'4 } }
  \tag #'left { \clef bass <f' des'>2 <f' des'>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g'>2\fermata c''4 }
  \tag #'left { \clef bass <e' c'>2\fermata r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4 aes'' e'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4 aes'' c''' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'''4 bes'' e''' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'''4 c''' aes'' }
  \tag #'left {  \clef bass r4 r \clef treble c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes''4 des''' g'' }
  \tag #'left { \clef treble des''4 bes' e'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes''2 <aes'' aes'>4 }
  \tag #'left { \clef treble f''4 c'' \clef bass c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes''2 g''4 } { <e'' des'' bes'>2. } }
  \tag #'left { \clef bass des'4 bes e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes''2 g''4 } { <e'' des'' bes'>2. } }
  \tag #'left { \clef bass des'4 bes e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' aes'>4 <g'' bes'> <e'' g'> }
  \tag #'left { \clef bass c'2 c'4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' aes'>4 c'' aes' }
  \tag #'left { \clef bass f4 r c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes'2 g'4 } { <e' des' bes>2. } }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes'2 g'4 } { <e' des' bes>2. } }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' aes>4 <g' bes> <e' g> }
  \tag #'left { \clef bass c2 c4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' aes>4 r c' }
  \tag #'left { \clef bass <f f,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { e'2 f'4 } { c'2. } }
  \tag #'left { \clef bass \split { bes2 aes4 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' e' c'>2 <aes' f' c'>4 }
  \tag #'left { \clef bass \split { <bes g>2 <aes f>4 } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4. bes'8 aes' g' }
  \tag #'left { \clef bass <c' g e c>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 aes' g' f' \afterGrace { c''4\trill } { b'16 c'' } }
  \tag #'left { \clef bass <c' aes f>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <g'' e''>2 <aes'' f''>4 } { c''2.~ } }
  \tag #'left { \clef treble \split { <bes' g'>2 <aes' f'>4 } { c'2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <bes'' g''>4 } { c''4 } r4 <e''' g'' e''> }
  \tag #'left { \clef treble \split { <g' e'>4 } { c'4 } r4 \clef bass <c' c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' aes'' f''>4 r r }
  \tag #'left { \clef bass <f f,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r }
  \tag #'left { \clef bass r4 r }
  \tag #'common { s2 }

  }

  \key des \major

  \tag #'right { \clef treble <f' aes f>4 }
  \tag #'left { \clef bass <des des,>4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble <f' aes f>2 <f' aes f>4 }
  \tag #'left { \clef bass <des des,>2 <des des,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' aes f>2 <f' aes f>4 }
  \tag #'left { \clef bass <des des,>2 <des des,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' bes~ ges~>2. }
  \tag #'left { \clef bass <des des,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees' bes ges>2 \turnAccidental #4.5 ##f \markup \natural ees'8 f' }
  \tag #'left { \clef bass <des des,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges' ees' aes>2 <ges' ees' aes>4 }
  \tag #'left { \clef bass <c c,>2 <c c,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges' ees' aes>2 <ges' ees' aes>4 }
  \tag #'left { \clef bass <c c,>2 <c c,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges' ees' aes~>2. }
  \tag #'left { \clef bass <des des,~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' des' aes>4 r f'8 g' }
  \tag #'left { \clef bass <des des,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' f'>2 <aes' f'>4 }
  \tag #'left { \clef bass <aes des>2 <aes des>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' ees'>2 <aes' ees'>4 }
  \tag #'left { \clef bass <aes c>2 <aes c>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <des''^~ aes' ees'_~ des'_~>2. }
  \tag #'left { \clef bass <aes ees~ bes,~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <des'' g' ees' des'>2 <c'' aes' ees' c'>4 }
  \tag #'left { \clef bass <g ees bes,>2 <aes ees c>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4 bes' aes' } { f'2 f'4 } }
  \tag #'left { \clef bass <bes f des>2 <ces' f d>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' ees'>2 <g' des'!>4 }
  \tag #'left { \clef bass <c'! ees>2 <bes ees>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'>2. }
  \tag #'left { \clef bass \splitThree { g2. } { \stemDir #DOWN { g2 ees4_~ } } { aes,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>4 r <f' aes f> }
  \tag #'left { \clef bass \splitThree { \stemDir #DOWN { \once \shiftOff aes4 } } { \stemDir #DOWN { \once \shiftOff ees4 } } { \stemDir #DOWN { \once \shiftOff aes,4 } } r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' aes f>2 <f' aes f>4 }
  \tag #'left { \clef bass r4 <des des,> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' aes f>2 <f' aes f>4 }
  \tag #'left { \clef bass r4 <des des,> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' bes ges>2. }
  \tag #'left { \clef bass r4 des ees8 f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees' bes>4 r ees'8 f' }
  \tag #'left { \clef bass ges8 f ees des c bes, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges' ees' c' a>2 <ges' ees' c' a>4 }
  \tag #'left { \clef bass a,4 a, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges' ees' c' a>2 <ges' ees' c' a>4 }
  \tag #'left { \clef bass r4 a, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges' ees' c' a>2. }
  \tag #'left { \clef bass r4 a, bes,8 c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' des' bes>4 r g'8 aes' }
  \tag #'left { \clef bass des8 c bes, aes,! g, f, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' g' des'>2 <bes' g' des'>4 }
  \tag #'left { \clef bass e,4 e, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' g' des'>2 <bes' g' des'>4 }
  \tag #'left { \clef bass r4 e, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' g' c'~>2. }
  \tag #'left { \clef bass r4 e, f,8 g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' f' c'>4 r <aes' aes> }
  \tag #'left { \clef bass aes,8 g, f, ees,! des, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' bes aes>4 r <f' bes aes> }
  \tag #'left { \clef bass des,4 des, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees' bes g>4 r <ees' bes g> }
  \tag #'left { \clef bass r4 ees, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes4 r r }
  \tag #'left { \clef bass r4 aes,,8 c, ees, aes, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass aes,,4 r <ces' aes f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass <ces' aes f>2 <ces' aes f>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass <ces' aes f ees>2 <ces' aes f ees>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r f'''~ }
  \tag #'left { \clef bass <ces' aes^~ f_~ d_~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'''8 ees''' d''' ces''' bes'' aes'' }
  \tag #'left { \clef bass <bes aes f d>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ges''!4 r r }
  \tag #'left { \clef bass <bes ges ees>2 <bes ges ees>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass <beses ges ees des!>2 <beses ges ees des>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r ees'''~ }
  \tag #'left { \clef bass <beses ges~ ees~ c~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees'''8 des''' c''' bes'' aes'' ges'' }
  \tag #'left { \clef bass <aes ges ees c>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' f'>2 <f'' aes' f'>4 }
  \tag #'left { \clef bass des4 des' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' aes' f'>2 <f'' aes' f'>4 }
  \tag #'left { \clef bass r4 des' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' bes'~ ges'>2. }
  \tag #'left { \clef bass r4 \clef treble des' ees'8 f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees'' bes'>4 r <ees'' c''>8 <f'' des''> }
  \tag #'left { \clef treble ges'8 f' ees' des' c' bes }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>2 <ges'' ees'' c''>4 }
  \tag #'left { \clef treble a4 a' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>2 <ges'' ees'' c''>4 }
  \tag #'left { \clef treble r4 a' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>2. }
  \tag #'left { \clef treble r4 bes'2~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' des''>4 r r }
  \tag #'left { \clef treble bes'4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'>2 <bes' des'>4 }
  \tag #'left { \clef bass <e g,>2 <e g,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'>2 <bes' des'>4 }
  \tag #'left { \clef bass <e g,>2 <e g,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'~>2. }
  \tag #'left { \clef bass <e aes,~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' des'>4 r r }
  \tag #'left { \clef bass <f aes,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>2 <aes' c'>4 }
  \tag #'left { \clef bass <ges! aes,>2 <ges aes,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>2 <aes' c'>4 }
  \tag #'left { \clef bass <ges aes,>2 <ges aes,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 r r }
  \tag #'left { \clef bass <f des>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass r4 r <ces' aes f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass <ces' aes f>2 <ces' aes f>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass <ces' aes f ees>2 <ces' aes f ees>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r \acciaccatura { f''8 } f'''4~ }
  \tag #'left { \clef bass <ces' aes^~ f_~ d_~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'''8 ees''' d''' ces''' bes'' aes'' }
  \tag #'left { \clef bass <bes aes f d>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ges''4 r r }
  \tag #'left { \clef bass <bes ges ees>2 <bes ges ees>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass <beses ges ees des>2 <beses ges ees des>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r \acciaccatura { ees''8 } ees'''4~ }
  \tag #'left { \clef bass <beses ges^~ ees_~ c_~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees'''8 des''' c''' bes'' aes'' ges'' }
  \tag #'left { \clef bass <aes ges ees c>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' f'>2 <f'' aes' f'>4 }
  \tag #'left { \clef bass des4 des' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' f'>2 <f'' aes' f'>4 }
  \tag #'left { \clef bass r4 des' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' bes'~ ges'~>2. }
  \tag #'left { \clef bass r4 \clef treble des' ees'8 f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees'' bes' ges'>4 r <ees'' c''>8 <f'' des''> }
  \tag #'left { \clef treble ges'8 f' ees' des' c' bes }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>2 <ges'' ees'' c''>4 }
  \tag #'left { \clef treble a4 a' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>2 <ges'' ees'' c''>4 }
  \tag #'left { \clef treble r4 a' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>2. }
  \tag #'left { \clef treble r4 bes'2~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' des''>4 r r }
  \tag #'left { \clef treble bes'4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'>2 <bes' des'>4 }
  \tag #'left { \clef bass <e g,>2 <e g,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'>2 <bes' des'>4 }
  \tag #'left { \clef bass <e g,>2 <e g,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' des'~>2. }
  \tag #'left { \clef bass <e aes,~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <beses' des'>2. }
  \tag #'left { \clef bass <f aes,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>2 <aes' c'>4 }
  \tag #'left { \clef bass <ges! aes,>2 <ges aes,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>2 <aes' c'>4 }
  \tag #'left { \clef bass <ges aes,>2 <ges aes,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 r r }
  \tag #'left { \clef bass <f des>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'2 des'4 }
  \tag #'left { \clef bass des2 des4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'2 des'4 }
  \tag #'left { \clef bass des2 des4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'2.~ }
  \tag #'left { \clef bass c2.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'2. }
  \tag #'left { \clef bass c2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <e' bes g>2 <e' bes g>4 }
  \tag #'left { \clef bass <c c,>2 <c c,>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <e' bes g>2 <e' bes g>4 }
  \tag #'left { \clef bass <c c,>2 <c c,>4 }
  \tag #'common { s2. }
  |

  \key f \minor

  \tag #'right { \clef bass <f' f>4 aes e }
  \tag #'left { \clef bass f,4 aes, e, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass f4 aes c' }
  \tag #'left { \clef bass f,4 aes, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 bes e' }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'4 c' g' }
  \tag #'left { \clef bass f4 c g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes'2 bes'4 } { aes'4 f' ees'!~ } }
  \tag #'left { \clef bass aes4 f <bes g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <c'' aes'>2 \grace { ees''8 } <des'' bes'>4 } { ees'4 f'2 } }
  \tag #'left { \clef bass \split { <c' aes>2 s4 } { aes4 f des } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' aes' ees'>2 <bes' g' des'>4 }
  \tag #'left { \clef bass ees4 ees, ees, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' c'>4 r r8 \clef bass c~ }
  \tag #'left { \clef bass aes,4 aes,, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass c8 f4 aes e8~ }
  \tag #'left { \clef bass f,4 aes, e, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass e8 f4 aes \clef treble c'8~ }
  \tag #'left { \clef bass f,4 aes, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'8 des'4 bes e'8~ }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'8 f'4 c' g'8~ }
  \tag #'left { \clef bass f4 c g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8 aes'4 f' \splitThree { \once \omit Flag \once \omit Stem bes'8 } { s8 } { bes'8~ } }
  \tag #'left { \clef bass aes4 f <bes g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \splitThree { c''4. c''8 \once \shiftOn \once \override NoteColumn.force-hshift = #-0.4 es''[ des''] } { s2 \once \shiftOff bes'4_~ } { bes'8 as'4. \once \shiftOff bes'8 f' } }
  \tag #'left { \clef bass <c' aes>4 f des }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \splitThree { \once \shiftOn \once \override NoteColumn.force-hshift = #1.1 c''4. des''8[ \once \shiftOff bes' c''] } { \once \shiftOff bes'4 \stemDir #DOWN { \once \shiftOff as' \once \shiftOff g' } } { \once \shiftOff bes'8 es'~ \once \shiftOff es'4 \once \shiftOff des' } }
  \tag #'left { \clef bass ees4 ees, ees, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \splitThree { \once \shiftOff aes'4 } { \stemDir #DOWN { \once \shiftOff aes'4 } } { \once \shiftOff c'4 } r4 \split { c''4 } { r4 } }
  \tag #'left { \clef bass aes,4 aes,, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4 b'8 c'' des''4 } { r4 r f' } }
  \tag #'left { \clef bass aes8 c' aes c' aes c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { des''4 r des'' } { f'4 e'8 f' g'4 } }
  \tag #'left { \clef bass bes8 des' bes des' bes des' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { des''4 c''8 des'' ees''4 } { g'4 r g' } }
  \tag #'left { \clef bass bes8 des' bes des' bes des' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 r ees'' } { g'4 f'8 g' a'4 } }
  \tag #'left { \clef bass c'8 ees' c' ees' c' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 d''8 ees'' f''4 } { a'4 r a' } }
  \tag #'left { \clef bass c'8 ees' c' ees' c' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 r f'' } { a'4 g'8 a' bes'4 } }
  \tag #'left { \clef bass des'8 f' des' f' des' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''2\trill \grace { e''16 f'' } g''4 } { b'2 b'4 } }
  \tag #'left { \clef bass d'8 f' d' f' d' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''2\fermata s4 } { g'2 c''4 } }
  \tag #'left { \clef bass <e' c'>2\fermata r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4 aes'' e''~ }
  \tag #'left { \clef bass r4 r \clef treble c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''8 f''4 aes'' c'''8~ }
  \tag #'left { \clef treble aes'4 f' aes' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''8 des'''4 bes'' e'''8~ }
  \tag #'left { \clef treble bes'4 f' bes' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'''8 f'''4 c''' aes''8~ }
  \tag #'left { \clef treble aes'4 f' c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes''8 bes''4 des''' g''8~ }
  \tag #'left { \clef treble des''4 bes' e'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''8 aes''4 aes'' aes''8 }
  \tag #'left { \clef treble f''4 c'' \clef bass c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes''2 g''4 } { r8 <des'' bes'>4 <des'' bes'> <des'' bes'>8 } }
  \tag #'left { \clef bass des'4 bes e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes''2 g''4 } { r8 <des'' bes'>4 <des'' bes'> <des'' bes'>8 } }
  \tag #'left { \clef bass des'4 bes e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 g'' e'' } { r8 aes'4 bes' g'8 } }
  \tag #'left { \clef bass c'4 c' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''8 ees''! des'' c'' bes' aes' } { aes'4 r r } }
  \tag #'left { \clef bass f4 r c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes'2 g'4 } { r8 <des' bes>4 <des' bes> <des' bes>8 } }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { aes'2 g'4 } { r8 <des' bes>4 <des' bes> <des' bes>8 } }
  \tag #'left { \clef bass des4 bes, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'4 g' e' } { r8 aes4 bes g8 } }
  \tag #'left { \clef bass c4 c c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'4 } { aes4 } r4 c' }
  \tag #'left { \clef bass <f f,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { e'2 f'4 } { r8 c'4 c' c'8 } }
  \tag #'left { \clef bass \split { r4 bes aes } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <g' e'>2 <aes' f'>4 } { r8 c'4 c' c'8 } }
  \tag #'left { \clef bass \split { r4 <bes g> <aes f> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4. bes'8 aes' g' }
  \tag #'left { \clef bass <c' g e c>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 aes' g' f' \afterGrace { c''4\trill } { b'16 c'' } }
  \tag #'left { \clef bass <c' aes f>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <g'' e''>2 <aes'' f''>4 } { r8 c''4 c'' c''8~ } }
  \tag #'left { \clef treble \split { r4 <bes' g'> <aes' f'> } { c'2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <bes'' g''>4 r <e''' g''> } { c''8 c'' b' c'' e''4 } }
  \tag #'left { \clef treble \split { <g' e'>4 r \clef bass <c' c> } { c'4 s2 \clef bass } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <f''' aes''>4 } { f''4 } r4 r }
  \tag #'left { \clef bass <f f,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2.\fermata }
  \tag #'left { \clef bass R2.\fermata }
  \tag #'common { s2. }
  |

  \bar "|."
}

thirdMovement = {
  \mark \markup { \bold "Presto" }
  \tempo 4 = 152
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 2/4
    \set Timing.beatBase = #1/8
    \set Timing.beatStructure = #'(4)
    \set Timing.beamExceptions = \beamExceptions {
      8[ 8 8 8] |
      16[ 16 16 16] 16[ 16 16 16] |
    }
  \key f \major
  \accidentalStyle default

  \repeat volta 2 {

  \partial 8
  \tag #'right { \clef treble r8 }
  \tag #'left { \clef bass c8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass f8 f f c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass a8 a a f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass c'8 c' c'16 d' c' bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 c' }
  \tag #'left { \clef bass a8 a a16 bes a g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 f' f' c' }
  \tag #'left { \clef bass a8 c'16 bes a8 g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 a' a' f' }
  \tag #'left { \clef bass f8 e f d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 c'' c''16 d'' c'' bes' }
  \tag #'left { \clef bass e8 c d e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { s4 s8 g' } { a'8 a' g'16 a' g' f' } }
  \tag #'left { \clef bass f8 g a b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 c'' c'' g' }
  \tag #'left { \clef treble <e' c'>8 <f' d'> <g' e'> <f' d'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 e'' e'' c'' }
  \tag #'left { \clef treble <e' c'>8 <d' b> <e' c'> <c' a> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 g'' g''16 a'' g'' f'' }
  \tag #'left { \clef treble <d' b>8 <b g> <c' a> <d' b> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 e'' e''16 d'' e'' c'' }
  \tag #'left { \clef treble <e' c'>8 <f' d'> <g' e'> <e' c'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 a'' a''16 bes''! a'' g'' }
  \tag #'left { \clef treble <e' cis'>8 <cis' a> <d' b> <e' cis'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''8 f'' f''16 e'' f'' d'' }
  \tag #'left { \clef treble <f' d'>8 <g' e'> <a' f'> <f' d'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'''8 f''' e'''16 dis''' e''' c''' }
  \tag #'left { \clef treble <g' d' b>8[ <g' d' b>] <g' e' c'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'''8 f''' e'''16 dis''' e''' c''' }
  \tag #'left { \clef treble <g' d' b>8[ <g' d' b>] <g' e' c'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''!16 c''' b'' a'' g'' f'' e'' d'' }
  \tag #'left { \clef bass <d' a f>8 r <d' b g> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16 b' c'' d'' e'' f'' g'' e'' }
  \tag #'left { \clef bass <c' g e c>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16 d'' f'' d'' e'' dis'' e'' c'' }
  \tag #'left { \clef bass <g f d b,>8[ <g f d b,>] <g e c> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16 d'' f'' d'' e'' dis'' e'' c'' }
  \tag #'left { \clef bass <g f d b,>8[ <g f d b,>] <g e c> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''16 gis'' a'' gis'' a'' g'' f'' e'' }
  \tag #'left { \clef bass f,8 f f f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''16 c'' b' a' g' f' e' d' }
  \tag #'left { \clef bass g,8 g g g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass c'8 <g e> <g e> <c' e> }
  \tag #'left { \clef bass \split { c8 c c g, } { c,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g e>8 <g e> <g e> <c' e> }
  \tag #'left { \clef bass \split { c8 c c g, } { c,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g f>8 <d' f> <d' f> <d' f> }
  \tag #'left { \clef bass \split { d8 c b, a, } { c,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <d' f>8 <d' f> <d' f>16 e' <d' f> e' }
  \tag #'left { \clef bass \split { g,8 a, b, g, } { c,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' e>8 <g e> <g e> <c' e> }
  \tag #'left { \clef bass \split { c8 c c g, } { c,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g e>8 <g e> <g e> <c' e> }
  \tag #'left { \clef bass \split { c8 c c g, } { c,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g f>8 <d' f> <d' f> <d' f> }
  \tag #'left { \clef bass \split { d8 c b, a, } { c,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <d' f>8 <d' f> <d' f>16 e' <d' f> e' }
  \tag #'left { \clef bass \split { g,8 a, b, g, } { c,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' e>8 g <c' e> g }
  \tag #'left { \clef bass <c c,>8 g, <c c,> g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' e>4 r8 }
  \tag #'left { \clef bass <c c,>4 r8 }
  \tag #'common { s4. }

  }

  \repeat volta 2 {

  \tag #'right { \clef bass ees8 }
  \tag #'left { \clef bass ees,8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef bass aes8 aes \acciaccatura { bes8 } aes16 g aes bes }
  \tag #'left { \clef bass aes,8 aes, \acciaccatura { bes,8 } aes,16 g, aes, bes, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'8 c' \acciaccatura { des'8 } c'16 b c' des' }
  \tag #'left { \clef bass c8 c \acciaccatura { des8 } c16 b, c des }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees'8 ees' \acciaccatura { f'8 } ees'16 d' ees' f' }
  \tag #'left { \clef bass ees8 ees \acciaccatura { f8 } ees16 d ees f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'8 g' g'16 ees' f' g' }
  \tag #'left { \clef bass g8 g g16 ees f g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes'8 aes' aes' ees' }
  \tag #'left { \clef bass aes16 c' aes c' aes c' aes c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 c'' c'' aes' }
  \tag #'left { \clef bass aes16 c' aes c' aes c' aes c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8 ees'' ees''16 f'' ees'' d'' }
  \tag #'left { \clef bass aes16 bes aes bes aes bes aes bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8 ees'' ees''16 f'' ees'' des'' }
  \tag #'left { \clef bass <g ees>16 bes <g ees> bes <g ees> bes <g ees> bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <aes'' c''>8 aes'' aes'' ees'' }
  \tag #'left { \clef bass aes4 \clef treble r8 c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 c''' c''' aes'' }
  \tag #'left { \clef treble aes'8 aes' aes' ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees'''8 ees''' ees'''16 f''' ees''' des''' }
  \tag #'left { \clef treble c''8 c'' c''16 des'' c'' bes' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 c''' c'''16 des''' c''' bes'' }
  \tag #'left { \clef treble a'!8 ees'' ees''16 f'' ees'' des'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''!8[ a''] a''[ bes''] } { ees''8 ees'' ees''16 f'' ees'' des'' } }
  \tag #'left { \clef treble c''8 c'' c''16 des'' c'' bes' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4 r } { c''4 r } }
  \tag #'left { \clef treble a'8 a' a'16 bes' a' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des'''8 des''' des'''16 ees''' des''' c''' }
  \tag #'left { \clef treble bes'4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''8 bes'' bes''16 c''' bes'' aes'' }
  \tag #'left { \clef treble des''8 des'' des''16 ees'' des'' c'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' e''!>8[ <g'' e''>] <g'' e''>[ <aes'' f''>] }
  \tag #'left { \clef treble bes'8 bes' bes'16 c'' bes' aes' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' g''>2 }
  \tag #'left { \clef treble g'16 aes' g' f' e'! d' e' c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes''8 aes'' aes''16 g'' aes'' f'' }
  \tag #'left { \clef treble f'2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { b''2 } { f''8 f'' f''16 ees'' f'' d'' } }
  \tag #'left { \clef treble g'2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''8 c''' c'''16 b'' c''' ees''' } { ees''4 r } }
  \tag #'left { \clef treble c'2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis''2 } { c''8 c'' c''16 b' c'' a' } }
  \tag #'left { \clef treble d'2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''4 r } { bes'!8 bes' bes'16 a' bes' g' } }
  \tag #'left { \clef treble g2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis''8 fis'' fis''16 e'' fis'' d'' } { c''2 } }
  \tag #'left { \clef bass <d' d>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''8 g'' g''16 fis'' g'' bes'' } { bes'4 r } }
  \tag #'left { \clef bass <g g,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''2 } { g'8 g' g'16 f' g' e' } }
  \tag #'left { \clef bass <a a,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''4 r } { f'8 f' f'16 e' f' d' } }
  \tag #'left { \clef bass <d d,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''8 cis'' cis''16 b' cis'' a' } { g'2 } }
  \tag #'left { \clef bass <a a,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''8 d'' d''16 cis'' d'' f'' } { f'4 r } }
  \tag #'left { \clef bass <d d,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'2 } { f'8 f' f'16 e' f' d' } }
  \tag #'left { \clef bass <bes, bes,,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'2 } { cis'8 cis' cis'16 b cis' a } }
  \tag #'left { \clef bass <a, a,,>8 e e16 dis e cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'2 } { d'8 d' d'16 cis' d' b } }
  \tag #'left { \clef bass \split { f8 f f16 e f d } { a,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'2 } { cis'8 cis' cis'16 b cis' a } }
  \tag #'left { \clef bass \split { e8 e e16 dis e cis } { a,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'2 } { d'8 d' d'16 cis' d' b } }
  \tag #'left { \clef bass \split { f8 f f16 e f d } { a,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'8 } { cis'8 } a''16[ gis''] a'' gis'' a'' gis'' }
  \tag #'left { \clef bass \split { e4 } { a,4 } r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''16 gis'' a'' gis'' a'' gis'' a'' gis'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a'' fis''>8 <a'' fis''> <a'' fis''> <a'' fis''> } { a'8 a' a' d'' } }
  \tag #'left { \clef bass \split { d'8 d' d' a } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a'' fis''>8 <a'' fis''> <a'' fis''> <a'' fis''> } { a'8 a' a' d'' } }
  \tag #'left { \clef bass \split { d'8 d' d' a } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''8 b'' cis''' d''' } { g''8 <a'' g''> <a'' g''> <a'' g''> } }
  \tag #'left { \clef bass \split { e'8 d' cis' b } { d2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e'''8 cis''' d''' e''' } { <a'' g''>8 <a'' g''> <a'' g''> <a'' g''> } }
  \tag #'left { \clef bass \split { a8 cis' b a } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a'' fis''>8 <a'' fis''> <a'' fis''> <a'' fis''> } { a'8 a' a' d'' } }
  \tag #'left { \clef bass \split { d'8 d' d' a } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a'' fis''>8 <a'' fis''> <a'' fis''> <a'' fis''> } { a'8 a' a' d'' } }
  \tag #'left { \clef bass \split { d'8 d' d' a } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''8 b'' cis''' d''' } { g''8 <a'' g''> <a'' g''> <a'' g''> } }
  \tag #'left { \clef bass \split { e'8 d' cis' b } { d2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e'''8 cis''' d''' e''' } { <a'' g''>8 <a'' g''> <a'' g''> <a'' g''> } }
  \tag #'left { \clef bass \split { a8 cis' b a } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''8 a'' b'' c'''! } { fis''8 fis'' fis'' fis'' } }
  \tag #'left { \clef treble d''8 c''! b' a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d'''8 b'' c''' d''' } { f''8 f'' f'' f'' } }
  \tag #'left { \clef treble g'8 b' a' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''8 g'' a'' bes''! } { e''8 e'' e'' e'' } }
  \tag #'left { \clef treble c''8 bes'! a' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''8 a'' bes'' c''' } { ees''8 ees'' ees'' ees'' } }
  \tag #'left { \clef treble f'8 a' g' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d''>8 <f'' d''> <g'' e''!> <a'' f''> }
  \tag #'left { \clef treble bes'8 c'' bes' a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' g''>8 <bes'' g''> <bes'' g''> <bes'' g''> }
  \tag #'left { \clef treble g'8 f' e' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' g''>8 <bes'' g''> <bes'' g''> <bes'' g''> }
  \tag #'left { \clef bass c'8 b bes a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' g''>8 <bes'' a''> <bes'' g''> <bes'' f''> }
  \tag #'left { \clef bass g8 f e d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' e''>16 c''' d''' c''' bes'' a'' g'' f'' }
  \tag #'left { \clef bass c4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''16 f'' g'' f'' e'' d'' c'' bes' }
  \tag #'left { \clef bass r4 r8 \tuplet 3/2 { c,16 d, e, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 c'''16 bes'' a'' g'' f'' e'' }
  \tag #'left { \clef bass f,8 f, f, c, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16 e'' d'' c'' bes' a' g' f' }
  \tag #'left { \clef bass a,8 a, a, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'16 f' g' f' e' c' d' e' }
  \tag #'left { \clef bass c8 c c16 d c bes, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'16 c' f' c' f' c' g' c' }
  \tag #'left { \clef bass a,8 a, a,16 bes, a, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 f' f' c' }
  \tag #'left { \clef bass f,8 c'16 bes a g f e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 a' a' f' }
  \tag #'left { \clef bass f16 e d c bes, a, g, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 c'' c''16 d'' c'' bes' }
  \tag #'left { \clef bass e,16 f, g, f, e, c, d, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'16 c'' g' cis'' fis' d'' a' c'' }
  \tag #'left { \clef bass f,8 ees, d, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 d'''16 c''' bes'' a'' g'' fis'' }
  \tag #'left { \clef bass g,8 g, g, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16 f''! ees'' d'' c'' bes' a' g' }
  \tag #'left { \clef bass bes,8 bes, bes, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis'16 g' a' g' fis' d' e' fis' }
  \tag #'left { \clef bass d8 d d16 ees d c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16 d' g' d' g' d' a' d' }
  \tag #'left { \clef bass bes,8 bes, bes,16 c bes, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 g' g' d' }
  \tag #'left { \clef bass g,8 d'16 c' bes a g fis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 bes' bes' g' }
  \tag #'left { \clef bass g16 f ees d c bes, a, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 d'' d''16 ees'' d'' c'' }
  \tag #'left { \clef bass fis,16 g, a, g, fis, d, e,! fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16 d'' e''! bes' f'' a' ees'' c'' }
  \tag #'left { \clef bass g,8 ges, f, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 f'''16 ees''' d''' c''' bes'' a'' }
  \tag #'left { \clef bass bes,8 bes, bes, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''16 a'' g'' f'' ees'' d'' c'' bes' }
  \tag #'left { \clef bass d8 d d bes, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'16 bes' c'' bes' a' f' g' a' }
  \tag #'left { \clef bass f8 f f16 g f ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16 f' bes' f' bes' f' c'' f' }
  \tag #'left { \clef bass d8 d d16 ees d c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des''8 bes'16 bes'' bes' bes'' f' f'' }
  \tag #'left { \clef bass bes,8 bes16 des' bes des' bes des' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des''16 des''' des'' des''' des'' des''' bes' bes'' }
  \tag #'left { \clef bass bes16 des' bes des' bes des' bes des' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16 f''' f'' f''' f'' f''' ees'' ees''' }
  \tag #'left { \clef bass f16 c' a c' a c' a c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des''16 des''' des'' des''' des'' des''' bes' bes'' }
  \tag #'left { \clef bass bes16 des' bes des' bes des' bes des' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16 f''' f'' f''' f'' f''' ees'' ees''' }
  \tag #'left { \clef bass f16 c' a c' a c' a c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des''16 des''' des'' des''' des'' des''' c'' c''' }
  \tag #'left { \clef bass bes16 des' bes des' bes des' c' ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16 bes'' bes' bes'' bes' bes'' aes' aes'' }
  \tag #'left { \clef bass des'16 f' des' f' des' f' c' ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ges'16 ges'' ges' ges'' ges' ges'' f' f'' }
  \tag #'left { \clef bass bes16 des' bes des' bes des' aes c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'!16 e''! e' e'' e' e'' g'! g''! }
  \tag #'left { \clef bass g!16 bes g bes g bes g bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'16 f'' aes' aes'' g' g'' bes' bes'' }
  \tag #'left { \clef bass aes16 c' aes c' e c' e c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes'16 aes'' c'' c''' a' a'' c'' c''' }
  \tag #'left { \clef bass f16 c' f c' ees f ees f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16 bes'' des'' des''' c'' c''' ees'' ees''' }
  \tag #'left { \clef bass des16 f des f a, f a, f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des''16 des''' des'' des''' des'' des''' c'' c''' }
  \tag #'left { \clef bass bes,16 f bes, f bes, f c f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16 b'' b' b'' b' b'' f'' f''' }
  \tag #'left { \clef bass des16 f des f des f des, des }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''16 e''' e'' e''' e'' e''' bes'! bes''! }
  \tag #'left { \clef bass c,16 c c, c c, c e, e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'!16 a''! a' a'' a' a'' ees'' ees''' }
  \tag #'left { \clef bass f,16 f f, f f, f a,, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 d'''16 cis''' d''' c''' bes'' a'' }
  \tag #'left { \clef bass bes,,16 bes, bes,, bes, bes,, bes, b,, b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16 f'' e'' d'' c'' bes'! a' g' }
  \tag #'left { \clef bass c,16 c c, c c, c c, c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 <c' a> <c' a> <f' a> }
  \tag #'left { \clef bass \split { f8 f f c } { f,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c' a>8 <c' a> <c' a> <f' a> }
  \tag #'left { \clef bass \split { f8 f f c } { f,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c' bes>8 <g' bes> <g' bes> <g' bes> }
  \tag #'left { \clef bass \split { g8 f e d } { f,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' bes>8 <g' bes> <g' bes>16 a' <g' bes> a' }
  \tag #'left { \clef bass \split { c8 d e c } { f,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' a>8 <c' a> <c' a> <f' a> }
  \tag #'left { \clef bass \split { f8 f f c } { f,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c' a>8 <c' a> <c' a> <f' a> }
  \tag #'left { \clef bass f8 f f c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c' bes>8 <g' bes> <g' bes> <g' bes> }
  \tag #'left { \clef bass \split { g8 f e d } { f,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' bes>8 <g' bes> <g' bes>16 a' <g' bes> a' }
  \tag #'left { \clef bass \split { c8 d e c } { f,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' a>8 \split { <c''' a''>8[ <c''' a''> <c''' a''>] } { c''8[ c'' f''] } }
  \tag #'left { \clef bass \split { r8 f' f' c' } { f2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' a''>8 <c''' a''> <c''' a''> <c''' a''> } { c''8 c'' c'' f'' } }
  \tag #'left { \clef bass \split { f'8 f' f' c' } { f2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' bes''>8 <c''' bes''> <c''' bes''> <c''' bes''> } { c''8 d'' e'' f'' } }
  \tag #'left { \clef bass \split { g'8 f' e' d' } { f2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' bes''>8 <c''' bes''> <c''' bes''> <c''' bes''> } { g''8 e'' f'' g'' } }
  \tag #'left { \clef bass \split { c'8 e' d' c' } { f2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' a''>8 <c''' a''> <c''' a''> <c''' a''> } { c''8 c'' c'' f'' } }
  \tag #'left { \clef bass \split { f'8 f' f' c' } { f2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' a''>8 <c''' a''> <c''' a''> <c''' a''> } { c''8 c'' c'' f'' } }
  \tag #'left { \clef bass \split { f'8 f' f' c' } { f2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' bes''>8 <c''' bes''> <c''' bes''> <c''' bes''> } { c''8 d'' e'' f'' } }
  \tag #'left { \clef bass \split { g'8 f' e' d' } { f2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' bes''>8 <c''' bes''> <c''' bes''> <c''' bes''> } { g''8 e'' f'' g'' } }
  \tag #'left { \clef bass \split { c'8 e' d' c' } { f2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <c''' a''>8 } { f''8 } <c''' a''>[ <c''' a''> <c''' a''>] }
  \tag #'left { \clef treble f'8 e''[ d'' c''] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' g'' e''>8 <c''' g'' e''> <d''' g'' e''> <e''' g'' e''> }
  \tag #'left { \clef treble bes'8 a' g' c'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f''' a'' f''>8 <c''' a'' c''>[ <c''' a'' c''> <c''' a'' c''>] }
  \tag #'left { \clef bass f'8  e'[ d' c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' bes'' c''>8 <c''' bes'' c''> <c''' bes'' d''> <c''' bes'' e''> }
  \tag #'left { \clef bass bes8 a g c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f''' f''>8 <e''' e''> <d''' d''> <c''' c''> }
  \tag #'left { \clef bass <a f>8 <a f> <a f> <a f> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' bes'>8 <a'' a'> <g'' g'> <c''' c''> }
  \tag #'left { \clef bass <g f>8 <g f> <g e> <g e> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' f'>8 <e'' e'> <d'' d'> <c'' c'> }
  \tag #'left { \clef bass f8 c, c, c, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes' bes>8 <a' a> <g' g> <c'' c'> }
  \tag #'left { \clef bass c,8 c, d, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' f>4 r }
  \tag #'left { \clef bass <f, f,,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8\fermata }
  \tag #'left { \clef bass r4 r8\fermata }
  \tag #'common { s4. }

  }

  \bar "|."
}

movementSpecs = #'(
  (firstMovement "Allegro")
  (secondMovement "Allegretto")
  (thirdMovement "Presto")
)
