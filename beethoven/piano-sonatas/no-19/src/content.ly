\version "2.26.0"

\include "../../shared/src/lilypond/lib.ily"

workTitle = "Piano Sonata No. 19"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 49 No. 1"
workDate = "1795-1798"
workEditor = "Dávid Horváth"

firstMovement = {
  \mark \markup { \bold "Andante" }
  \tempo 4 = 84
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 2/4
    \set Timing.beatBase = #1/8
    \set Timing.beatStructure = #'(2 2)
    \set Timing.beamExceptions = \beamExceptions {
      8[ 8 8 8] |
      16[ 16 16 16] 16[ 16 16 16] |
    }
  \key g \minor
  \accidentalStyle default

  \repeat volta 2 {

  \partial 8
  \tag #'right { \clef treble d'8 }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble bes'8 g' fis' g' }
  \tag #'left { \clef bass r8 <d' bes> <c' a> <bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' d'>2 }
  \tag #'left { \clef bass <a fis>8 <fis d> <g e> <a fis> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 g' fis' g' }
  \tag #'left { \clef bass <bes g>8 <d' bes> <c' a> <bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees'' g'>2 }
  \tag #'left { \clef bass c8 ees g c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 fis''[ g''] d'' }
  \tag #'left { \clef bass bes4 r8 <d' bes> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 gis''[ a''] c'' }
  \tag #'left { \clef bass <d' fis>4 r8 <d' fis> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 g''! a' ees'' }
  \tag #'left { \clef bass <d' g>4 <c' c> }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble g'8. a'32 g' fis'8 d'\noBeam }
  \tag #'left { \clef bass <bes d~>4 <a d>8 r }
  \tag #'common { s2 }
  |
\endRevisionSection
  \tag #'right { \clef treble bes'8 g' fis' g' }
  \tag #'left { \clef bass r8 <d' bes> <c' a> <bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' d'>2 }
  \tag #'left { \clef bass <a fis>8 <fis d> <g e> <a fis> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 g' fis' g' }
  \tag #'left { \clef bass <bes g>8 <d' bes> <c' a> <bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''4. ees''8~ }
  \tag #'left { \clef bass \split { c8 ees g a } { c4. c8 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 d'' f'' e'' g'' f'' ees'' d'' }
  \tag #'left { \clef bass <bes d>4 r8 <f d> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { c''16 d'' ees'' } d''8[ c''] \grace { b'16 c'' d'' } c''8[ bes'] }
  \tag #'left { \clef bass \split { g8 c' g c' } { ees4 e } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { a'16 bes' c'' } bes'16 a' g' f' e' f' g' f' }
  \tag #'left { \clef bass <c' f>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''!8 a' a' a' }
  \tag #'left { \clef bass a16 f' c' f' ees' f' c' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(-0.5 . 0) bes'8. d''16 f''8 f''\noBeam }
  \tag #'left { \clef bass d'16 f' bes f' d' f' bes f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees'''8 a'' a'' a'' }
  \tag #'left { \clef bass a16 f' c' f' ees' f' c' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5 #'(-0.5 . 0) bes''8. d'''16 f'''8 f'\noBeam }
  \tag #'left { \clef bass d'16 f' bes f' d' f' bes f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8 a' a' a' }
  \tag #'left { \clef bass a16 f' c' f' ees' f' c' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(-0.5 . 0) bes'8. c''16 d'' bes' c'' d'' }
  \tag #'left { \clef bass d'16 f' bes f' aes f' bes f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(-0.5 . 0) ees''8. f''16 g'' a'' bes'' g'' }
  \tag #'left { \clef bass g16 ees' bes ees' ees ees' bes ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''16 f'' g'' f'' f'' ees'' d'' c'' }
  \tag #'left { \clef bass f16 d' bes d' f ees' a ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble cis''16 d'' ees'' d'' f'' ees'' d'' c'' }
  \tag #'left { \clef bass <d' bes>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(-0.5 . 0) bes'8. c''16 d'' bes' c'' d'' }
  \tag #'left { \clef bass d'16 f' bes f' aes f' bes f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 f'' g'' a'' c''' bes'' a'' g'' }
  \tag #'left { \clef bass g16 ees' bes ees' ees ees' bes ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16 f'' e'' f'' a'' g'' f'' ees'' }
  \tag #'left { \clef bass d16 d' bes d' ees c' g c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 d'' cis'' d'' f'' ees'' d'' c'' }
  \tag #'left { \clef bass f16 d' bes d' f ees' a ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'4 r8 c''16 d'' }
  \tag #'left { \clef bass <d' bes>16 f' e' f' g' f' ees' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8 a' a' a' }
  \tag #'left { \clef bass c'16 f' ees' f' <c' f> f' ees' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'4 r8 c''16 d'' }
  \tag #'left { \clef bass <d' bes>16 f' e' f' g' f' ees' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8 a' a' a' }
  \tag #'left { \clef bass c'16 f' ees' f' <c' f> f' ees' f' }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble <c'' a'>4 bes'8 }
  \tag #'left { \clef bass <ees' bes~>4 <d' bes>8 }
  \tag #'common { s4. }
  |
\endRevisionSection
  }

  \partial 8
  \tag #'right { \clef treble bes8\trill }
  \tag #'left { \clef bass bes,8\trill }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble f'8 bes bes bes\trill }
  \tag #'left { \clef bass f8 bes, bes, bes,\trill }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 aes aes aes\trill }
  \tag #'left { \clef bass f8 aes, aes, aes,\trill }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g8 bes ees' g' }
  \tag #'left { \clef bass g,8 bes, ees g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { f'8 aes' d' bes } { c'4 aes } }
  \tag #'left { \clef bass \split { aes8 f f d } { aes,4 bes, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees' bes g>4 r16 g'' f'' ees'' }
  \tag #'left { \clef bass <ees ees,>8 \clef treble <g' ees'>[ <g' ees'>] r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 r r16 aes'' g'' f'' }
  \tag #'left { \clef treble r8 <aes' f'> <aes' f'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8 r16 ees''' d''' ees''' d''' c''' }
  \tag #'left { \clef treble r8 <bes' g'> <bes' g'> <bes' g'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''16 c''' bes'' aes'' g'' f'' c''' bes'' }
  \tag #'left { \clef treble <c'' aes'>4 <d'' bes'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes''8 g'' r16 g''32 f'' aes'' g'' f'' ees'' }
  \tag #'left { \clef treble r8 <bes' ees'> <g' ees'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \acciaccatura { f''8 } ees''16 d'' d''8 r16 aes''32 g'' bes'' aes'' g'' f'' }
  \tag #'left { \clef treble r8 <aes' f'> <aes' f'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \acciaccatura { g''8 } f''16 es'' es''8 r16 ees'''32 d''' f''' ees''' d''' c''' }
  \tag #'left { \clef treble r8 <bes' g'> <bes' g'> <bes' g'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''16 c''' bes'' aes'' g'' f'' aes'' d'' }
  \tag #'left { \clef treble <c'' aes'>4 <aes' f' bes> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''4 r8 f''16 g'' }
  \tag #'left { \clef treble <g' ees'>16 bes' a'! bes' c'' bes' aes' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes''8 d'' d'' d'' }
  \tag #'left { \clef treble f'16 bes' aes' bes' <f' bes> bes' aes' bes' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''4 r8 d''16 ees'' }
  \tag #'left { \clef treble ees'16 g' fis' g' aes' g' f' ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''8 b' b' b' }
  \tag #'left { \clef treble d'16 g' f' g' <d' g> g' f' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4 r8 <a'' a'>16 <bes'' bes'> }
  \tag #'left { \clef bass c'16 d' ees' d' c' bes! a g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>8 <fis'' fis'> <fis'' fis'> <fis'' fis'> }
  \tag #'left { \clef bass fis16 d' a d' c' d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>4 <a'' a'> }
  \tag #'left { \clef bass bes16 d' g d' fis d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>8 <bes'' bes'> <a'' a'> <g'' g'> }
  \tag #'left { \clef bass g16 d' bes d' ees cis' g cis' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' fis'>4 r16 d'' cis'' d'' }
  \tag #'left { \clef bass d16 d' fis d' a d' fis d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' bes'>8 r r16 d'' cis'' d'' }
  \tag #'left { \clef bass d16 d' g d' bes d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 r r16 d'' cis'' d'' }
  \tag #'left { \clef bass d16 d' fis d' a d' fis d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' bes'>8 r r16 d'' cis'' d'' }
  \tag #'left { \clef bass d16 d' g d' bes d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'4 b' }
  \tag #'left { \clef bass d16 d' fis d' d d' gis d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4. bes'!8 }
  \tag #'left { \clef bass d16 d' gis d' a d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 a'' b' b'' }
  \tag #'left { \clef bass d16 d' fis d' d d' gis d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 c'''4 bes'!8 }
  \tag #'left { \clef bass d16 d' gis d' a d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 a'' b' b'' }
  \tag #'left { \clef bass d16 d' fis d' d d' gis d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 c''' cis'' cis''' }
  \tag #'left { \clef bass <d' a d>4\arpeggio r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 g' fis' g' }
  \tag #'left { \clef bass r8 <d' bes> <c' a> <bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' d'>2 }
  \tag #'left { \clef bass <a fis>8 <fis d> <g e> <a fis> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 g' fis' g' }
  \tag #'left { \clef bass <bes g>8 <d' bes> <c' a> <bes g> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees'' g'>2 }
  \tag #'left { \clef bass c8 ees g c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 fis''[ g''] d'' }
  \tag #'left { \clef bass bes4 r8 <d' bes> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 gis''[ a''] c'' }
  \tag #'left { \clef bass <d' fis>4 r8 <d' fis> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'8 g''! a' ees'' }
  \tag #'left { \clef bass <d' g>4 <c' c> }
  \tag #'common { s2 }
  |
\beginRevisionSection
  \tag #'right { \clef treble g'8. a'32 g' fis'8 r }
  \tag #'left { \clef bass <bes d~>4 <a d>8 \clef treble d'\noBeam }
  \tag #'common { s2 }
  |
\endRevisionSection
  \tag #'right { \clef treble r16 d'' bes'' d'' <a'' c''> d'' <g'' bes'> d'' }
  \tag #'left { \clef treble bes'8 g' fis' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''16 d'' cis'' d'' e'' fis'' g'' a'' }
  \tag #'left { \clef treble <c'' d'>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''16 d'' <d''' bes''> d'' <c''' a''> d'' <bes'' g''> d'' }
  \tag #'left { \clef treble bes'8 g' fis' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''16 f''! e'' f'' g'' a'' bes'' c''' }
  \tag #'left { \clef treble <ees''! f'>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''16 f'' <f''' d'''> f'' <ees''' c'''> f'' <d''' bes''> f'' }
  \tag #'left { \clef treble <d'' bes'>8 bes'[ a' bes'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' a''>16 d'' <bes'' g''> d'' <a'' fis''> c'' g'' bes' }
  \tag #'left { \clef treble fis'8[ g'] d'[ ees'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r16 a' ees'' d'' c'' bes' a' g' }
  \tag #'left { \clef treble c'4. cis'8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis'16 g' a' gis' a' b' c'' b' }
  \tag #'left { \clef treble d'8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 fis' fis' fis' }
  \tag #'left { \clef bass fis16 d' a d' c' d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5 #'(-0.5 . 0) ##f \markup \sharp g'8. bes'16 d''8 d''\noBeam }
  \tag #'left { \clef bass bes16 d' g d' bes d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 fis'' fis'' fis'' }
  \tag #'left { \clef bass fis16 d' a d' c' d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \sharp g''8. bes''16 d'''8 d'\noBeam }
  \tag #'left { \clef bass bes16 d' g d' bes d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 fis' fis' fis' }
  \tag #'left { \clef bass fis16 d' a d' c' d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5.5 #'(-0.5 . 0) ##f \markup \sharp g'8. a'16 b' g' a' b' }
  \tag #'left { \clef bass bes16 d' g d' f! d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \natural c''8. d''16 ees'' f'' g'' ees'' }
  \tag #'left { \clef bass ees16 c' g c' c g ees g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 ees''16 d'' f'' ees'' d'' c'' }
  \tag #'left { \clef bass bes,16 g d g c a ees a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(-0.5 . 0) bes'8. bes'16 d'' c'' bes' a' }
  \tag #'left { \clef bass d16 bes g bes d c' fis c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5.5 #'(-0.5 . 0) ##f \markup \sharp g'8. a'16 b' g' a' b' }
  \tag #'left { \clef bass g16 d' bes d' f! d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \natural c''8. d''16 ees'' e'' f'' fis'' }
  \tag #'left { \clef bass ees16 c' g c' c g ees g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''4~ \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \sharp g''8. a''16 }
  \tag #'left { \clef bass cis16 bes e bes g bes e bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''4 cis' }
  \tag #'left { \clef bass cis16 bes e bes g bes e bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'8 d''4 cis''16 d'' }
  \tag #'left { \clef bass d16 d' g d' bes d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 d'' c''! bes' a' bes' c'' fis' }
  \tag #'left { \clef bass d16 d' a d' c' d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'8 g''4 cis''16 d'' }
  \tag #'left { \clef bass d16 d' g d' bes d' g d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 d'' c''! bes' a' bes' c'' fis' }
  \tag #'left { \clef bass d16 d' a d' c' d' a d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'8 <d' bes g> <d' bes g> <d' bes g> }
  \tag #'left { \clef bass g4 r8 d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d' c' a>8 <d' c' a> <d' c' a> <d' c' a> }
  \tag #'left { \clef bass c8 fis, fis, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' bes g>8 <d' bes g> <d' bes g> <d' bes g> }
  \tag #'left { \clef bass g,4 r8 d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d' c' a>8 <d' c' a> <d' c' a> <d' c' a> }
  \tag #'left { \clef bass c8 fis, fis, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' bes g>8 <d' bes g> <d' bes g> <d' bes g> }
  \tag #'left { \clef bass g,4 r8 d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d' c' a>8 <d' c' a> <d' c' a> <d' c' a> }
  \tag #'left { \clef bass c8 fis, fis, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d' bes>8 g <f' b> g }
  \tag #'left { \clef bass g,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <ees' c'>8 g <c' ees> fis }
  \tag #'left { \clef bass g,,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b d>8 g <d' f!> g }
  \tag #'left { \clef bass g,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' ees>8 g <fis c> ees }
  \tag #'left { \clef bass g,,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g b,>8 d <fis c> ees }
  \tag #'left { \clef bass <g, g,,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g b,>8 d <fis c> ees }
  \tag #'left { \clef bass <g, g,,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g b,>8 d <g b,> d }
  \tag #'left { \clef bass <g, g,,>4 <g, g,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <g b,>4 r8 }
  \tag #'left { \clef bass <g, g,,>4 r8 }
  \tag #'common { s4. }
  |

  \bar "|."
}

secondMovement = {
  \mark \markup { \bold "Rondo. Allegro" }
  \tempo 4 = 138
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 6/8
  \key g \major
  \accidentalStyle default

  \partial 2
  \tag #'right { \clef treble d'8 d' g' a' }
  \tag #'left { \clef bass r8 r <d' b> <c' a> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'8[ g'] e' e' a' b' }
  \tag #'left { \clef bass <b g>4 r8 r <e' c'> <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[ a'] e'' d'' c'' b' }
  \tag #'left { \clef bass <c' a>4 r8 r <a fis> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 g' a' \grace { g'16 a' } bes'8 a' g' }
  \tag #'left { \clef bass <c' a>8 <d' b> <e' c'> <e' cis'>4. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'8[ d'] d' d' g' a' }
  \tag #'left { \clef bass d'4 r8 r <d' b> <c'!a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8[ g'] e' e' a' b' }
  \tag #'left { \clef bass <b g>4 r8 r <e' c'> <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[ a'] e'' d'' c'' b' }
  \tag #'left { \clef bass <c' a>4 r8 r <a fis> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 g' a' \split { d'8 g' fis' } { d'4 c'8 } }
  \tag #'left { \clef bass <c' a>8 <d' b> <e' c'> <b d>4 <a d>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' b>4 d'8 g' b' d'' }
  \tag #'left { \clef bass <g g,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 <c'' a'> <c'' a'> d''_[ <b' g'> <b' g'>] }
  \tag #'left { \clef bass r8 <d' fis> <d' fis> r <d' g> <d' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 <c'' a'> <c'' a'> d''_[ <b' g'> <b' g'>] }
  \tag #'left { \clef bass r8 <d' fis> <d' fis> r <d' g> <d' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 <c'' a'> <b' g'> d'' <c'' a'> <b' g'> }
  \tag #'left { \clef bass r8 <d' fis> <d' g> r <d' fis> <d' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' c'' a'>4\fermata d''8 d'' g'' a'' }
  \tag #'left { \clef bass <d' fis>4\fermata r8 r \clef treble <d'' b'> <c'' a'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''8 g'' e'' e'' a'' b'' }
  \tag #'left { \clef treble <b' g'>4 r8 r <e'' c''> <d'' b'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''8 a'' e''' d''' c''' b'' }
  \tag #'left { \clef treble <c'' a'>4 r8 r <a' fis'> <b' g'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { b''16 } a''8 g'' a'' \split { d''8 g'' fis'' } { d''4 c''8 } }
  \tag #'left { \clef treble <c'' a'>8 <d'' b'> <e'' c''> <b' d'>4 <a' d'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' b'>4 d''8 \acciaccatura { ees''16 } d''8 cis'' d'' }
  \tag #'left { \clef bass <g' g>4 d'8 \acciaccatura { ees'16 } d'8 cis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''4 d''8 c''! bes' a' }
  \tag #'left { \clef bass ees'4 d'8 c'! bes a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 c''8 bes' a' g' }
  \tag #'left { \clef bass d'4 c'8 bes a g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees'8 c'' bes' a' g' fis' }
  \tag #'left { \clef bass <a c>4. <c' d> }
  \tag #'common { s2. }
  |

  \key g \minor

  \tag #'right { \clef treble g'4 d'''8 d''' cis''' d''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' fis d' a d' a d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8 cis''' d''' d''' cis''' d''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' fis d' a d' a d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8 c''' bes'' \acciaccatura { c'''16 } bes''8 a'' g'' }
  \tag #'left { \clef bass g16 d' bes d' bes d' g d' bes d' bes d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''8 g'' e'' d''4 d''8 }
  \tag #'left { \clef bass a16 d' a d' a cis' d d' cis' d' c' a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { ees'''16 } d'''8 cis''' d''' \acciaccatura { ees'''16 } d'''8 cis''' d''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' fis d' a d' a d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { ees'''16 } d'''8 cis''' d''' \acciaccatura { f'''16 } ees'''8 d''' ees''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' g ees' bes ees' bes ees' }
  \tag #'common { s2. }
  |
\beginRevisionSection
  \tag #'right { \clef treble \acciaccatura { f''16 } f'''4.~ f'''8 ees''' d''' }
  \tag #'left { \clef bass a16 f' c' f' c' f' bes f' d' f' d' f' }
  \tag #'common { s2. }
  |
\endRevisionSection
  \tag #'right { \clef treble \acciaccatura { d'''16 } c'''8 b'' c''' ees''' c''' a'' }
  \tag #'left { \clef bass ees16 c' g c' g c' f c' a c' a c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes''!8 d''' f'''~ f''' ees''' d''' }
  \tag #'left { \clef bass d16 d' bes d' bes d' f d' bes d' bes d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { d'''16 } c'''8 b'' c''' ees''' c''' a'' }
  \tag #'left { \clef bass ees16 c' g c' g c' f ees' c' ees' c' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes''!8 d''' c''' bes'' a'' g'' }
  \tag #'left { \clef bass <d' bes>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''8 e'' f'' fis'' g'' ees'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4. \acciaccatura { ees''16 } d''8 c'' d'' }
  \tag #'left { \clef bass r8 f' f' bes f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''4. \acciaccatura { d''16 } c''8 b' c'' }
  \tag #'left { \clef bass c'8 f' f' ees' f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 ees'' d'' }
  \tag #'left { \clef bass d'8 f' f' bes f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 d'' bes' a' bes' g' }
  \tag #'left { \clef bass c'8 f' f' c' e' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'4.~ f'8 g' a' }
  \tag #'left { \clef bass f8 a c' ees a c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { c''16 } bes'8 a' bes' f' a' bes' }
  \tag #'left { \clef bass d8 f f bes, f f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { d''16 } c''8 b' c'' f' bes' c'' }
  \tag #'left { \clef bass a,8 f f f, f f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { ees''16 } d''8 c'' d'' ees'' f'' g'' }
  \tag #'left { \clef bass bes,8 f bes ees g c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4. \acciaccatura { ees''16 } d''8 c'' d'' }
  \tag #'left { \clef bass f8 f' f' bes f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''4. \acciaccatura { d''16 } c''8 b' c'' }
  \tag #'left { \clef bass c'8 f' f' ees' f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 ees'' d'' }
  \tag #'left { \clef bass d'8 f' f' bes f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 d'' bes' a' bes' g' }
  \tag #'left { \clef bass c'8 f' f' c' e' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'4.~ f'8 g' a' }
  \tag #'left { \clef bass f8 a c' ees a c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { c''16 } bes'8 a' bes' f' a' bes' }
  \tag #'left { \clef bass d8 f f bes, f f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { d''16 } c''8 b' c'' \acciaccatura { ees''16 } d''8 c'' d'' }
  \tag #'left { \clef bass a,8 f f bes, f f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''8 f'' g'' bes'!4 d''16 c'' }
  \tag #'left { \clef bass ees8 g c' f d' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 \acciaccatura { c''16 } bes'8 a' bes' }
  \tag #'left { \clef bass bes8 d' f' r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 f''8 f''4 f''8 } { bes'4. b' } }
  \tag #'left { \clef treble <f' d'>4. <f' des'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 e''8 \acciaccatura { d''16 } c''8 b' c'' } { c''4. s4 s8 } }
  \tag #'left { \clef treble <g' c'>4. r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''!4 ees''8 ees''4 ees''8 } { c''4. c'' } }
  \tag #'left { \clef treble <g' c'>4. <ges' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 d''8 \acciaccatura { ees''16 } d''8 c'' d'' } { bes'4. s4 s8 } }
  \tag #'left { \clef treble <f' bes>4. \clef bass bes8 f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''4. \acciaccatura { d''16 } c''8 b' c'' }
  \tag #'left { \clef bass c'8 f' f' ees' f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 fis'' g'' }
  \tag #'left { \clef bass d'8 bes bes ees bes bes }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 8. #3 #'(0 . 0) bes'4. d''4 c''8 }
  \tag #'left { \clef bass f8 bes bes f a a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 \acciaccatura { c''16 } bes'8 a' bes' }
  \tag #'left { \clef bass bes,8 bes bes r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 f''8 f''4 f''8 } { bes'4. b' } }
  \tag #'left { \clef bass d'8 f' f' des' f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 e''8 \acciaccatura { d''16 } c''8 b' c'' } { c''4. s4 s8 } }
  \tag #'left { \clef bass c'8 g' g' g' g' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 ees''8 ees''4 ees''8 } { c''4. c'' } }
  \tag #'left { \clef bass c'8 g' g' a ges' ges' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4 d''8 \acciaccatura { ees''16 } d''8 c'' d'' } { bes'4. s4 s8 } }
  \tag #'left { \clef bass bes8 f' f' f' f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''4. \acciaccatura { d''16 } c''8 b' c'' }
  \tag #'left { \clef bass c'8 f' f' ees' f' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 fis'' g'' }
  \tag #'left { \clef bass d'8 bes bes ees bes ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 8. #3 #'(0 . 0) bes'4. d''4 c''8 }
  \tag #'left { \clef bass f8 bes d' f a ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 d''8 \acciaccatura { ees''16 } d''8 cis'' d'' }
  \tag #'left { \clef bass <d' bes>4 d'8 \acciaccatura { ees'16 } d'8 cis' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''4 d''8 c''! bes' a' }
  \tag #'left { \clef bass ees'4 d'8 c'! bes a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 c''8 bes' a' g' }
  \tag #'left { \clef bass d'4 c'8 bes a g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees'8 c'' bes' a' g' fis' }
  \tag #'left { \clef bass <a c>4. <c' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 d'''8 d''' cis''' d''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' fis d' a d' a d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8 cis''' d''' d''' cis''' d''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' fis d' a d' a d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8 c'''! bes'' \acciaccatura { c'''16 } bes''8 a'' g'' }
  \tag #'left { \clef bass g16 d' bes d' bes d' g d' bes d' bes d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''!8 g'' e'' d''4 d''8 }
  \tag #'left { \clef bass a16 d' a d' a cis' d d' cis' d' c' a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { ees'''16 } d'''8 cis''' d''' \acciaccatura { ees'''16 } d'''8 cis''' d''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' fis d' a d' a d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { ees'''16 } d'''8 cis''' d''' \acciaccatura { f'''16 } ees'''8 d''' ees''' }
  \tag #'left { \clef bass g16 d' bes d' bes d' g ees' bes ees' bes ees' }
  \tag #'common { s2. }
  |
\beginRevisionSection
  \tag #'right { \clef treble \acciaccatura { f''16 } f'''4.~ f'''8 ees''' d''' }
  \tag #'left { \clef bass a16 f' c' f' c' f' bes f' d' f' d' f' }
  \tag #'common { s2. }
  |
\endRevisionSection
  \tag #'right { \clef treble \acciaccatura { ees''16 } ees'''4.~ ees'''8 d''' c''' }
  \tag #'left { \clef bass g16 ees' bes ees' bes ees' a ees' c' ees' c' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { d''16 } d'''4.~ d'''8 c''' bes'' }
  \tag #'left { \clef bass fis16 d' a d' a d' g d' bes d' bes d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''8 bes'' c''' fis'' g'' a'' }
  \tag #'left { \clef bass c16 a ees a ees a d a fis a fis a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 d'8 d' g' a' }
  \tag #'left { \clef bass g,8 g r r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 g' r d' a' bes' }
  \tag #'left { \clef bass r4 d'8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 a' r d' g' a' }
  \tag #'left { \clef bass r4 d'8 r <d' b> <c' a> }
  \tag #'common { s2. }
  |

  \key g \major

  \tag #'right { \clef treble b'8[ g'] e' e' a' b' }
  \tag #'left { \clef bass <b g>4 r8 r <e' c'> <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[ a'] e'' d'' c'' b' }
  \tag #'left { \clef bass <c' a>4 r8 r <a fis> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 g' a' \grace { g'16 a' } bes'8 a' g' }
  \tag #'left { \clef bass <c' a>8 <d' b> <e' c'> <e' cis'>4. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'8[ d'] d' d' g' a' }
  \tag #'left { \clef bass d'4 r8 r <d' b> <c'! a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8[ g'] e' e' a' b' }
  \tag #'left { \clef bass <b g>4 r8 r <e' c'> <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[ a'] e'' d'' c'' b' }
  \tag #'left { \clef bass <c' a>4 r8 r <a fis> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 g' a' \split { d'8 g' fis' } { d'4 c'8 } }
  \tag #'left { \clef bass <c' a>8 <d' b> <e' c'> <b d>4 <a d>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' b>4 d'8 g' b' d'' }
  \tag #'left { \clef bass <g g,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 <c'' a'> <c'' a'> d''_[ <b' g'> <b' g'>] }
  \tag #'left { \clef bass r8 <d' fis> <d' fis> r <d' g> <d' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 <c'' a'> <c'' a'> d''_[ <b' g'> <b' g'>] }
  \tag #'left { \clef bass r8 <d' fis> <d' fis> r <d' g> <d' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 <c'' a'> <b' g'> d'' <c'' a'> <b' g'> }
  \tag #'left { \clef bass r8 <d' fis> <d' g> r <d' fis> <d' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' c'' a'>4\fermata d''8 d'' g'' a'' }
  \tag #'left { \clef bass <d' fis>4\fermata \clef treble r8 r <d'' b'> <c'' a'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''8[ g''] e'' e'' a'' b'' }
  \tag #'left { \clef treble <b' g'>4 r8 r <e'' c''> <d'' b'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''8[ a''] e''' d''' c''' b'' }
  \tag #'left { \clef treble <c'' a'>4 r8 r <a' fis'> <b' g'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { b''16 } a''8 g'' a'' \split { d''8 g'' fis'' } { d''4 c''8 } }
  \tag #'left { \clef treble <c'' a'>8 <d'' b'> <e'' c''> <b' d'>4 <a' d'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' b'>4 r8 r c''' b'' }
  \tag #'left { \clef treble <g' g>4 c''8 b' a' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''8 g'' fis'' \split { b'8 e'' dis'' } { b'4 a'8 } }
  \tag #'left { \clef treble fis'8 e' fis' \split { g'4 fis'8 } { b4. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis''8[ e''] } { g'4 } a''8 g'' f'' e'' }
  \tag #'left { \clef treble e'4 r8 r a' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 c'' d'' \split { g'8 c'' b' } { g'4 f'8 } }
  \tag #'left { \clef treble f'8 e' f' \clef bass \split { e'4 d'8 } { g4. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d''8 c'' c'' e' a' gis' } { e'4. e'4 d'8 } }
  \tag #'left { \clef bass \split { c'4 } { c4 } r8 \split { c'4 b8 } { e4. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'8 a' a' d' g' fis' } { c'4 r8 d'4 c'8 } }
  \tag #'left { \clef bass \split { a4 } { a,4 } r8 \split { b4 a8 } { d4. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'8 g' g' d' cis' cis' } { b4. g } }
  \tag #'left { \clef bass <g g,>4. <e a,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' fis>4 r8 \acciaccatura { c''16 } b'8 a' b' }
  \tag #'left { \clef bass d,8 d d g, d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4. \acciaccatura { b'16 } a'8 gis' a' }
  \tag #'left { \clef bass a,8 d d c d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4.~ d''8 c'' b' }
  \tag #'left { \clef bass b,8 d d g, d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 b' g' fis' g' e' }
  \tag #'left { \clef bass a,8 d d a, cis cis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'4.~ d'8 e' fis' }
  \tag #'left { \clef bass d,8 d d c! d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { a'16 } g'8 fis' g' d' fis' g' }
  \tag #'left { \clef bass b,8 d d g, d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { b'16 } a'8 gis' a' d' g' a' }
  \tag #'left { \clef bass fis,8 d d d, d d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { c''16 } b'8 a' b' c'' d'' e'' }
  \tag #'left { \clef bass g,8 d g c e a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4 r8 \acciaccatura { c'''16 } b''8 a'' b'' }
  \tag #'left { \clef bass d8 d' d' g d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4. \acciaccatura { b''16 } a''8 gis'' a'' }
  \tag #'left { \clef bass a8 d' d' c' d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4.~ d'''8 c''' b'' }
  \tag #'left { \clef bass b8 d' d' g d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''8 b'' g'' fis'' g'' e'' }
  \tag #'left { \clef bass a8 d' d' a cis' cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4.~ d''8 e'' fis'' }
  \tag #'left { \clef bass d8 d' d' c'! d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { a''16 } g''8 fis'' g'' d'' fis'' g'' }
  \tag #'left { \clef bass b8 d' d' g d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { b''16 } a''8 gis'' a'' \acciaccatura { c'''16 } b''8 a'' b'' }
  \tag #'left { \clef bass fis8 a d' g b d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { d'''16 } c'''8 b'' c''' e'''4 fis''8 }
  \tag #'left { \clef bass c8 e a <fis d> a c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r8 \acciaccatura { a'16 } g'8 fis' g' }
  \tag #'left { \clef bass g8 b d' r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d''4 d''8 d''4 d''8 } { g'4. gis' } }
  \tag #'left { \clef bass <d' b>4. <d' bes> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d''4 cis''8 \acciaccatura { b'16 } a'8 gis' a' } { a'4. s4 s8 } }
  \tag #'left { \clef bass <e' a>4. r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''!4 c''8 c''4 c''8 } { a'4. a' } }
  \tag #'left { \clef bass <e' a>4. <ees' fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4 b'8 \acciaccatura { c''16 } b'8 a' b' } { g'4. s4 s8 } }
  \tag #'left { \clef bass <d' g>4. g8 d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4. \acciaccatura { b'16 } a'8 gis' a' }
  \tag #'left { \clef bass a8 d' d' c' d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4.~ d''8 dis'' e'' }
  \tag #'left { \clef bass b8 g g c g g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 8. #3 #'(0 . 0) g'4. b'4 a'8 }
  \tag #'left { \clef bass d8 g g d fis fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 r8 \acciaccatura { a'16 } g'8 fis' g' }
  \tag #'left { \clef bass g,8 g g r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d''4 d''8 d''4 d''8 } { g'4. gis' } }
  \tag #'left { \clef bass b8 d' d' bes d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d''4 cis''8 \acciaccatura { b'16 } a'8 gis' a' } { a'4. s4 s8 } }
  \tag #'left { \clef bass a8 e' e' e' e' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''!4 c''8 c''4 c''8 } { a'4. a' } }
  \tag #'left { \clef bass a8 e' e' fis ees' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4 b'8 \acciaccatura { c''16 } b'8 a' b' } { g'4. s4 s8 } }
  \tag #'left { \clef bass g8 d' d' d' d' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4. \acciaccatura { b'16 } a'8 gis' a' }
  \tag #'left { \clef bass a8 d' d' c' d' d' }
  \tag #'common { s2. }
  |
\beginRevisionSection
  \tag #'right { \clef treble d''4.~ d''8 dis'' e'' }
  \tag #'left { \clef bass b8 a g c g c' }
  \tag #'common { s2. }
  |
\endRevisionSection
  \tag #'right { \clef treble \turnInside 8. #3 #'(0 . 0) g'4. b'4 a'8 }
  \tag #'left { \clef bass d8 g b d fis c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 d'8 d' g' a' }
  \tag #'left { \clef bass <b g>4 r8 r <d' b> <c' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8[ g'] d' d' a' b' }
  \tag #'left { \clef bass <b g>4 r8 r <c' a> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 a' r r <d'' b'> <c'' a'> }
  \tag #'left { \clef bass <a fis>4 d8 d g a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b' g'>8 d' r r <c'' a'> <b' g'> }
  \tag #'left { \clef bass b4 d8 d a b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' fis'>8[ d'] d' d' g' a' }
  \tag #'left { \clef bass c'4 r8 r <d' b> <c' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8[ g'] e' e' a' b' }
  \tag #'left { \clef bass <b g>4 r8 r <e' c'> <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[ a'] e'' d'' c'' b' }
  \tag #'left { \clef bass <c' a>4 r8 r <a fis> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 g' r r e'' <g'' d''> }
  \tag #'left { \clef bass <c' a>8[ <d' b>] e' d' c' b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis'' c''>8[ <g'' b'>] e'' d'' c'' b' }
  \tag #'left { \clef bass a8 g r r <a fis> <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 g' r r e'' <g'' d''> }
  \tag #'left { \clef bass <c' a>8[ <d' b>] e' d' c' b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis'' c''>8 <g'' b'> r <gis'' eis''> <a'' fis''> r }
  \tag #'left { \clef bass a8 g d' r4 d'8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ais'' fis''>8 <b'' g''!> r <b'' gis''> <c''' a''> r }
  \tag #'left { \clef bass r8 r d' r r d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <c''' a'' fis''>4.~ <c''' a'' fis''>4 a''8 } { c''2.~ } }
  \tag #'left { \clef bass <d' a fis d>2.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis''4\fermata } { c''4 } r8 r4 r8 }
  \tag #'left { \clef bass <d' a fis d>4\fermata d,8 d, a, b, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d'4. d' } { fis8 a fis g b g } }
  \tag #'left { \clef bass c4. b, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis'4. g' } { c'8 d' c' b d' b } }
  \tag #'left { \clef bass a,4. g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 e' gis' a' c'' a' }
  \tag #'left { \clef bass \split { r4 r8 c'4. } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g'!8 b' g' fis' a' fis' } { d'4. c' } }
  \tag #'left { \clef bass \split { b4. a } { d4. d } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' b>4 d'8 d' a' b' }
  \tag #'left { \clef bass g,8 d g g, d g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 d''8 d'' a'' b'' }
  \tag #'left { \clef bass g,8 d fis g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4 d'8 d' d'' c'' }
  \tag #'left { \clef bass g,8 d fis g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 d''8 d'' d''' c''' }
  \tag #'left { \clef bass g,8 d g g, d g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 d'8 d' a' b' }
  \tag #'left { \clef bass g,8 d g g, d g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 d''8 d'' a'' b'' }
  \tag #'left { \clef bass g,8 d fis g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4 d'8 d' d'' c'' }
  \tag #'left { \clef bass g,8 d fis g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 r8 d'' d''' c''' }
  \tag #'left { \clef bass g,8 d g g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 r8 d' d'' c'' }
  \tag #'left { \clef bass g,8 d g g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'4 r8 d'' d''' c''' }
  \tag #'left { \clef bass g,8 d g g, d fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 r8 <b'' g'' d'' b'>4 r8 }
  \tag #'left { \clef bass g,8 d g g, d g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b' g'>4 r8 r4\fermata }
  \tag #'left { \clef bass g,4 r8 r4\fermata }
  \tag #'common { s8*5 }
  |

  \bar "|."
}

movementSpecs = #'(
  (firstMovement "Andante")
  (secondMovement "Rondo. Allegro")
)
