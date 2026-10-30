\version "2.26.0"

\include "../../shared/src/lilypond/lib.ily"

workTitle = "Piano Sonata No. 10"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 14 No. 2"
workDate = "1798-1799"
workEditor = "Dávid Horváth"

firstMovement = {
  \mark \markup { \bold "Allegro" }
  \tempo 4 = 104
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
  \key g \major
  \accidentalStyle default

  \repeat volta 2 {

  \partial 4
  \tag #'right { \clef treble r16 d' d'' ais' }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble b'16[ fis' g'8.] d'16[ d'' ais'] }
  \tag #'left { \clef bass r8 \splitThree { g,16 b, \once \shiftOff d4 } { s16 \stemDir #DOWN { b,_~ \once \shiftOff b,4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16[ fis' g'8.] e'16[ e'' b'] }
  \tag #'left { \clef bass r8 \splitThree { g16 b \once \shiftOff d'4 } { s16 \stemDir #DOWN { b_~ \once \shiftOff b4 } } { g8~ \once \shiftOff g4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ gis' a'8.] e'16[ e'' b'] }
  \tag #'left { \clef bass r8 \splitThree { g,16 c \once \shiftOff e4 } { s16 \stemDir #DOWN { c_~ \once \shiftOff c4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ gis' a'8.] a'16[ c''' b''] }
  \tag #'left { \clef bass r8 \splitThree { g16 c' \once \shiftOff e'4 } { s16 \stemDir #DOWN { c'_~ \once \shiftOff c'4 } } { g8~ \once \shiftOff g4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8. g''16 fis'' e'' d'' c'' }
  \tag #'left { \clef bass r16 fis a d' r d a c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \acciaccatura { d''8 } c''16 b'8 g''16 g'' a'8 e''16 }
  \tag #'left { \clef bass r16 g b d' r c e a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''16 g'8 d''16 d'' c'8 fis'16 }
  \tag #'left { \clef bass r16 d g b r d, a, d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' b>4 r8 d'' }
  \tag #'left { \clef bass g,16 b, d b, g, b, d b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 d'' d'' \afterGrace { d''\trill } { cis''16 d'' } }
  \tag #'left { \clef bass g,16 b, d b, g, b, d b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''4 d''8 r }
  \tag #'left { \clef bass a,16 c fis c a, c fis c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8. d''16 d'' d'' d'' d'' }
  \tag #'left { \clef bass a,16 c fis c a, c fis c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''4 d''8 r }
  \tag #'left { \clef bass b,16 d g d b, d g d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 d''~ d''16[ e''32 d''] c''16[ b'] }
  \tag #'left { \clef bass b,16 d g d b, d g d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'8 a'4 g'8 }
  \tag #'left { \clef bass c16 e a e cis e a e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { fis'16 g' a' } g'8 fis'4 d''8 }
  \tag #'left { \clef bass d16 fis a fis d fis b fis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 cis''4 b'8 }
  \tag #'left { \clef bass e16 g b g e g cis' g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { a'16 b' cis'' } b'8 a'4 fis''8 }
  \tag #'left { \clef bass fis16 a cis' a fis a d' a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''8 e''4 d''8 }
  \tag #'left { \clef bass g16 b e' b gis b e' b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 cis''4 b'8 }
  \tag #'left { \clef treble a16 e' a' e' a d' gis' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'8 a' \tuplet 6/4 { r16 d''[ e'' fis'' e'' d''] } }
  \tag #'left { \clef treble a16 cis' e' cis' a e' gis' e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 cis'' \tuplet 6/4 { r16 b'[ cis'' d'' cis'' b'] } }
  \tag #'left { \clef treble a16 e' a' e' a d' gis' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'8 a' \tuplet 6/4 { r16 d''[ e'' fis'' e'' d''] } }
  \tag #'left { \clef treble a16 cis' e' cis' a e' gis' e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 6/4 4 { d''16[ cis'' d'' e'' d'' cis''] } \tuplet 6/4 4 { cis''16[ b' cis'' d'' cis'' b'] } }
  \tag #'left { \clef treble a16 e' a' e' a d' gis' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 6/4 { b'16[ a' gis' a' b' cis''] } \tuplet 3/2 { d''16 dis'' e'' } f''32 fis'' g'' gis'' }
  \tag #'left { \clef treble <e' cis' a>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 a'' a'' a'' }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' fis''>8. <gis'' eis''>16 <a'' fis''>8. <gis'' eis''>16 }
  \tag #'left { \clef bass r16 d, d r r d d' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' fis''>8. <g''! e''!>16 <g'' e''> <fis'' d''> <fis'' d''> <e'' cis''> }
  \tag #'left { \clef treble r16 d' d'' r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' cis''>16 <d'' b'> <d'' b'> <cis'' a'> <cis'' a'> <b' g'> <b' g'> <a' fis'> }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis' dis'>4 <g' e'>8 r }
  \tag #'left { \clef bass r8 a,,[ a,, a,,] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' e''>8. <fis'' dis''>16 <g'' e''>8. <fis'' dis''>16 }
  \tag #'left { \clef bass r16 a,, a, r r a, a r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' e''>8. <fis''! d''!>16 <fis'' d''> <e'' cis''> <e'' cis''> <d'' b'> }
  \tag #'left { \clef treble r16 a a' r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' b'>16 <cis'' a'> <cis'' a'> <b' g'> <b' g'> <a' fis'> <a' fis'> <g' e'> }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis' d'>8 <b' fis'> <a' e'> <g' cis'> }
  \tag #'left { \clef bass r16 a d a cis a a, a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis' d'>8 <b' fis'> <a' e'> <g' cis'> }
  \tag #'left { \clef bass r16 a d a cis a a, a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'8 b' a' gis' } { fis'16 d' fis' d' cis' e' b d' } }
  \tag #'left { \clef bass d4 e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 r r4 }
  \tag #'left { \clef treble a16 a' <g'! e'> a' <fis' d'> a' <e' cis'> a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''8 b'' a'' <g'' cis''> }
  \tag #'left { \clef treble <fis' d'>16 a' <fis' d'> a' <e' cis'> a' <e' a> a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' d''>8 b'' a'' <g'' cis''> }
  \tag #'left { \clef treble <fis' d'>16 a' <fis' d'> a' <e' cis'> a' <e' a> a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' d''>8 d'''4 d'''8~ }
  \tag #'left { \clef treble <fis' d'>16 d'' <g' e'> d'' <a' fis'> d'' <b' g'> d'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''8 d''' d''' d''' }
  \tag #'left { \clef treble <c'' a'>16 d'' <b' gis'> d'' <c'' a'> d'' <ais' fis'> d'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''32 cis''' b'' ais'' b'' cis''' d''' cis''' b'' cis''' b'' ais'' b'' cis''' d''' cis''' }
  \tag #'left { \clef treble <b' g'!>8 r <d'' b' g'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''32 e''' d''' cis''' d''' e''' f''' e''' d''' e''' d''' cis''' d''' e''' f''' e''' }
  \tag #'left { \clef treble <f'' d'' b' gis'>8 r <f'' d'' b' gis'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''32 e''' d''' cis''' d''' cis''' d''' cis''' d''' cis''' b'' a'' g'' fis'' e'' d'' }
  \tag #'left { \clef treble <fis''! d'' a'>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' d''>4 <e'' cis''> }
  \tag #'left { \clef treble \split { a'4 g' } { a2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''32[ e'' fis'' g'' a'' g'' fis'' e''] d''[ cis'' b' a' g' fis' e' d'] }
  \tag #'left { \clef treble \split { fis'8 r r4 } { d'8 s s4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis' d'>4 <e' cis'> }
  \tag #'left { \clef bass \split { a4 g } { a,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'16 a <fis' d'> a <g' e'> a <gis' eis'> a }
  \tag #'left { \clef bass \split { fis8 r r4 } { d8 s s4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a'~ fis'~>2 } { r16 a8 a a a16~ } }
  \tag #'left { \clef bass r8 d, fis, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a' fis'>8 fis' b' a' } { a16 a d' a g' a fis' a } }
  \tag #'left { \clef bass d2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <g'~ e'~>2 } { r16 a8 a a a16~ } }
  \tag #'left { \clef bass d8 d cis b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <g' e'>8 g' a' g' } { a16 a e' a fis' a e' a } }
  \tag #'left { \clef bass cis4 a,~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <fis'~ d'~>2 } { d'16 a r ais r b r fis } }
  \tag #'left { \clef bass a,8 ais, b, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <fis' d'>8 e' e' g'! } { r16 g d' gis d' a! cis' a } }
  \tag #'left { \clef bass g,8 gis, a,!4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <fis'~ d'~>2 } { d'16 a r ais r b r fis } }
  \tag #'left { \clef bass a,8 ais, b, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <fis' d'>8 e' e' g'! } { r16 g d' gis d' a cis' a } }
  \tag #'left { \clef bass g,8 gis, a,4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <fis'~ d'~>2 } { d'16 a r ais r b r c'! } }
  \tag #'left { \clef bass a,8 ais, b, c! }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <fis' d'>8 g' fis' e' } { r16 b e' b d' a! cis' g } }
  \tag #'left { \clef bass b,8 g, a, a,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d'4. e'8 } { fis16 a fis a fis a g cis' } }
  \tag #'left { \clef bass \split { r4 r8 d } { d,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'4. e'8 } { a16 d' a d' a d' g cis' } }
  \tag #'left { \clef bass \split { d4. d8 } { d,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'4. <cis'' e'>8[ }
  \tag #'left { \clef bass \split { fis16 a fis a fis a g a } { d4. d8~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' d'>8] <cis'' e'>[ <d'' d'>] \afterGrace { <cis'' e'>\trill } { b'16 cis'' } }
  \tag #'left { \clef bass \split { fis16 a g a fis a g a } { d8 d~ d d } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' g'>2 }
  \tag #'left { \clef bass <cis' a~ d~>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' fis'>8 r }
  \tag #'left { \clef bass <d' a d>8 r }
  \tag #'common { s4 }

  }

  \tag #'right { \clef treble r16 d' d'' a' }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble bes'16 fis' g'8. d'16[ d'' a'] }
  \tag #'left { \clef bass r8 \splitThree { g,16 bes, \once \shiftOff d4 } { s16 \stemDir #DOWN { bes,_~ \once \shiftOff bes,4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16 fis' g'8. g'16[ g'' d''] }
  \tag #'left { \clef bass r8 \splitThree { g16 bes \once \shiftOff d'4 } { s16 \stemDir #DOWN { bes_~ \once \shiftOff bes4 } } { g8~ \once \shiftOff g4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 b' c''8. g'16[ g'' d''] }
  \tag #'left { \clef bass r8 \splitThree { g,16 c \once \shiftOff es4 } { s16 \stemDir #DOWN { c_~ \once \shiftOff c4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''16 b' c''8. d'''16[ ees''' b''] }
  \tag #'left { \clef bass r8 \splitThree { g16 c' \once \shiftOff ees'4~ } { s16 \stemDir #DOWN { c'_~ \once \shiftOff c'4_~ } } { g8~ \once \shiftOff g4~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 r r16 d'' ees'' b' }
  \tag #'left { \clef bass \splitThree { ees'8 fis!16[ c'] \once \shiftOff ees'4~ } { \stemDir #DOWN { \once \omit Flag \once \shiftOff c'8 } s16 \stemDir #DOWN { c'16_~ \once \shiftOff c'4_~ } } { \once \shiftOff g8 fis8\noBeam~ \once \shiftOff fis4~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 r r16 d''' ees''' b'' }
  \tag #'left { \clef bass \splitThree { ees'8 fis16[ c'] \once \shiftOff ees'4~ } { \stemDir #DOWN { \once \omit Flag \once \shiftOff c'8 } s16 \stemDir #DOWN { c'16_~ \once \shiftOff c'4_~ } } { \once \shiftOff fis8 f8\noBeam~ \once \shiftOff f4~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8 r r16 f' ees'' b' }
  \tag #'left { \clef bass \splitThree { ees'16 } { \stemDir #DOWN { \once \omit Flag \once \shiftOff c'16 } } { \once \shiftOff f16 } f16[ ees' b] c' gis a8~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16 gis' a'8. f'16[ ees'' b'] }
  \tag #'left { \clef bass a16 f ees' b c' gis a8~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16 gis' a'8 r4 }
  \tag #'left { \clef bass a16 f ees' b c' gis a e! }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass f16 fis g ees f d ees c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d''>8. <e'' cis''>16 <f'' d''>8. <e'' cis''>16 }
  \tag #'left { \clef bass r16 bes, bes r \clef treble r bes! bes' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d''>8. <ees'' c''!>16 <ees'' c''> <d'' bes'> <d'' bes'> <c'' a'> }
  \tag #'left { \clef treble r16 bes' bes'' r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' a'>16 <bes' g'> <bes' g'> <a' f'> <a' f'> <g' ees'> <g' ees'> <f' d'> }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d' b!>4 <ees' c'>8 r }
  \tag #'left { \clef bass r8 f, f, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees'' c''>8. <d'' b'!>16 <ees'' c''>8. <d'' b'>16 }
  \tag #'left { \clef bass r16 f, f r r f f' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees'' c''>8. <d'' b'>16 <ees'' c''>8. <d'' b'>16 }
  \tag #'left { \clef bass r16 fis! fis'! r r fis fis' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ees'' c''>8. <d'' b'>16 <ees'' c''>8. <d'' b'>16 }
  \tag #'left { \clef bass r16 g g' r r g g' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { ees''16 c'' ees' ees'' c'' ees' ees'' c'' ees' ees'' c'' ees' } }
  \tag #'left { \clef bass <aes~ aes,~>4 <aes aes,>16 d ees b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { ees''16 c'' ees' ees'' c'' ees' ees'' c'' ees' ees'' c'' ees' } }
  \tag #'left { \clef bass c16[ g, aes,8.] d16[ ees b,] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { ees''16 c'' ees' ees'' c'' ees' ees'' c'' ees' ees'' c'' ees' } }
  \tag #'left { \clef bass c16[ g, aes,8.] c16[ aes, g,] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { d''16 c'' d' d'' c'' d' d'' c'' d' d'' c'' d' } }
  \tag #'left { \clef bass fis,16 d, fis, a, d e fis g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { d''16 c'' d' d'' c'' d' d'' c'' d' d'' c'' d' } }
  \tag #'left { \clef bass a16 g fis ees d c bes, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { d''16 bes' d' d'' bes' g' d'' bes' g' d'' bes' g' } }
  \tag #'left { \clef bass g,4~ g,16 cis' d' a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { d''16 bes' g' d'' bes' g' d'' bes' g' d'' bes' g' } }
  \tag #'left { \clef bass bes16[ fis g8.] cis'16[ d' a] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { des''16 bes' g' des'' bes' g' des'' bes' g' des'' bes' g' } }
  \tag #'left { \clef bass bes16[ fis g8.] bes16[ g f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { c''16 bes' g' c'' bes' g' c'' bes' g' c'' bes' g' } }
  \tag #'left { \clef bass e16 c e g c' d' e' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { c''16 bes' g' e'' bes' g' e'' bes' g' e'' bes' g' } }
  \tag #'left { \clef bass g'16 f' e' des' c' bes aes g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { f''16 aes' f' f'' aes' f' f'' aes' f' f'' aes' f' } }
  \tag #'left { \clef bass f16 f, aes, c f g aes bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { f''16 a' f' ees'' a' f' ees'' a' f' ees'' a' f' } }
  \tag #'left { \clef bass c'16 bes a! g f ees d c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { ees''16 bes' f' d'' bes' f' d'' bes' f' d'' bes' f' } }
  \tag #'left { \clef bass bes,16 bes,, d, f, bes, c d ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { d''16 bes' f' d'' bes' f' d'' bes' f' d'' bes' f' } }
  \tag #'left { \clef bass f16 ees d c bes, c d ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { d''16 bes' f' f'' d'' bes' f'' d'' bes' f'' d'' bes' } }
  \tag #'left { \clef bass f16 ees d c bes, c d ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { f''16 d'' bes' es'' d'' bes' aes'' d'' bes' aes'' d'' bes' } }
  \tag #'left { \clef bass f16 ees d c bes, c d ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { aes''16 d'' bes'! f'' d'' bes' f'' d'' bes' f'' d'' bes' } }
  \tag #'left { \clef bass \split { f16 g aes g aes g aes g } { r8 bes, bes, bes, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d'' bes'>4\fermata r16 bes' bes'' fis'' }
  \tag #'left { \clef bass \split { aes4 } { bes,4\fermata } r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16 d'' ees''8. bes'16[ bes'' fis''] }
  \tag #'left { \clef bass r8 \splitThree { es16 g \once \shiftOff bes4 } { s16 \stemDir #DOWN { g_~ \once \shiftOff g4 } } { es8~ \once \shiftOff es4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16 d'' ees''8. c''16[ c''' g''] }
  \tag #'left { \clef bass r8 \clef treble \splitThree { ees'16 g' \once \shiftOff bes'4 } { s16 \stemDir #DOWN { g'_~ \once \shiftOff g'4 } } { ees'8~ \once \shiftOff ees'4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes''16 e'' f''8. c''16[ c''' g''] }
  \tag #'left { \clef treble r8 \clef bass \splitThree { es16 as \once \shiftOff c'4 } { s16 \stemDir #DOWN { as_~ \once \shiftOff as4 } } { es8~ \once \shiftOff es4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble aes''16 e'' f''8. f''16[ f''' f'''] }
  \tag #'left { \clef bass r8 \clef treble \splitThree { ees'16 as' \once \shiftOff c''4 } { s16 \stemDir #DOWN { as'_~ \once \shiftOff as'4 } } { ees'8~ \once \shiftOff ees'4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'''8. ees'''16 d''' c''' bes'' aes'' }
  \tag #'left { \clef treble r16 d' f' bes' r bes d' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8. f''16 ees'' d'' c'' bes' }
  \tag #'left { \clef treble r16 b! d' g' \clef bass r c' ees' g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8. g'16 fis'! ees' d' c' }
  \tag #'left { \clef bass r16 fis! a d' r d fis a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes8. a16 g a bes cis' }
  \tag #'left { \clef bass r16 g, bes, d r ees, ees ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 d' e'! fis' g' a' b' cis'' d'' e''! fis'' g'' a'' d'' e'' fis'' }
  \tag #'left { \clef bass d,8 \split { d4 c'!8 } { d4.~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''32 a'' bes'' c''' d''' ees''' d''' c''' bes'' c''' bes'' a'' g'' bes'' a'' g'' }
  \tag #'left { \clef bass \split { bes8 fis g cis' } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''32 d' e' fis' g' a' b'! cis'' d'' e'' fis'' g'' a'' d'' e'' fis'' }
  \tag #'left { \clef bass \split { r8 d'4 c'!8 } { d2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''32 a'' bes'' c''' d''' ees''' d''' c''' bes'' c''' bes'' a'' g'' bes'' a'' g'' }
  \tag #'left { \clef bass \split { bes8 fis g cis' } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''32 d' e' fis' g' a' b'! cis'' d'' e'' fis'' g'' a'' d'' e'' fis'' }
  \tag #'left { \clef bass \split { r8 d'4 c'!8 } { d2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''32 a'' bes'' c''' d''' ees''' d''' c''' bes'' c''' bes'' a'' g'' bes'' a'' g'' }
  \tag #'left { \clef bass \split { bes8 fis g cis' } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''32 a'' g'' fis'' g'' bes'' a'' g'' fis'' a'' g'' fis'' g'' bes'' a'' g'' }
  \tag #'left { \clef bass \split { d'8 cis' d' cis' } { d2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''32 a'' g'' fis'' g'' bes'' a'' g'' fis'' a'' g'' fis'' g'' bes'' a'' g'' }
  \tag #'left { \clef bass \split { d'8 cis' d' cis' } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''8 r \clef bass r16 gis a eis }
  \tag #'left { \clef treble \tuplet 3/2 8 { d'16 fis' a' d' fis' a' d' fis' a' d' fis' a' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass fis8 r \clef treble r16 gis'' a'' eis'' }
  \tag #'left { \clef treble \tuplet 3/2 8 { d'16 fis' a' d' fis' a' d' fis' a' d' fis' a' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''8 r \clef bass r16 b c' gis }
  \tag #'left { \clef treble \tuplet 3/2 8 { d'16 a' c'' d' a' c'' d' a' c'' d' a' c'' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass a8 r \clef treble r16 b'' c''' gis'' }
  \tag #'left { \clef treble \tuplet 3/2 8 { d'16 a' c'' d' a' c'' d' a' c'' d' a' c'' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''16 \clef bass [b c' gis] a \clef treble b''[ c''' gis''] }
  \tag #'left { \clef treble \tuplet 3/2 8 { d'16 a' c'' d' a' c'' d' a' c'' d' a' c'' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''16 \clef bass [b c' gis] a \clef treble b''[ c''' gis''] }
  \tag #'left { \clef treble \tuplet 3/2 8 { d'16 a' c'' d' a' c'' d' a' c'' d' a' c'' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''16 dis'''[ e''' b''] c''' dis'''[ e''' b''] }
  \tag #'left { \clef treble <c'' a' d'>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''16 dis'''[ e'''] b''[ c'''] gis''[ a''] eis''[ }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''16] dis''[ e''] b'[ c''] gis'[ a'] bes' }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'!16 c'' cis''8.\fermata d'16[ d'' ais'] }
  \tag #'left { \clef treble r8 r8.\fermata r16 r8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16[ fis' g'8.] d'16[ d'' ais'] }
  \tag #'left { \clef bass r8 \splitThree { g,16 b, \once \shiftOff d4 } { s16 \stemDir #DOWN { b,_~ \once \shiftOff b,4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16[ fis' g'8.] e'16[ e'' b'] }
  \tag #'left { \clef bass r8 \splitThree { g16 b \once \shiftOff d'4 } { s16 \stemDir #DOWN { b_~ \once \shiftOff b4 } } { g8~ \once \shiftOff g4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ gis' a'8.] e'16[ e'' b'] }
  \tag #'left { \clef bass r8 \splitThree { g,16 c \once \shiftOff e4 } { s16 \stemDir #DOWN { c_~ \once \shiftOff c4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ gis' a'8.] a'16[ c''' b''] }
  \tag #'left { \clef bass r8 \splitThree { g16 c' \once \shiftOff e'4 } { s16 \stemDir #DOWN { c'_~ \once \shiftOff c'4 } } { g8~ \once \shiftOff g4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8. g''16 fis'' e'' d'' c'' }
  \tag #'left { \clef bass r16 fis a d' r d a c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \acciaccatura { d''8 } c''16 b'8 g''16 g'' a'8 e''16 }
  \tag #'left { \clef bass r16 g b d' r c e a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''16 g'8 d''16 d'' c'8 fis'16 }
  \tag #'left { \clef bass r16 d g b r d, a, d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' b>4 r8 d'' }
  \tag #'left { \clef bass g,16 b, d b, g, b, d b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 d'' d'' \afterGrace { d''\trill } { cis''16 d'' } }
  \tag #'left { \clef bass g,16 b, d b, g, b, d b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''4 d''8 r }
  \tag #'left { \clef bass a,16 c fis c a, c fis c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8. d''16 d'' d'' d'' d'' }
  \tag #'left { \clef bass a,16 c fis c a, c fis c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''4 d''8 r }
  \tag #'left { \clef bass b,16 d g d b, d g d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 g'' g'' \afterGrace g''\trill { fis''!16 g'' } }
  \tag #'left { \clef bass b,16 f g f b, f g f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''4 g''8 r }
  \tag #'left { \clef bass c16 e g e c e g e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8. g''16 g'' g'' g'' g'' }
  \tag #'left { \clef bass d16 f b f d f b f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 g''~ g''16 a''32 g'' f''16 e'' }
  \tag #'left { \clef bass e16 g c' g e g c' g }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 d''4 c''8 }
  \tag #'left { \clef bass f16 a d' a fis a d' a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { b'16 c'' d'' } c''8 b'4 g''8 }
  \tag #'left { \clef bass g16 b d' b g b e' b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 fis''4 e''8 }
  \tag #'left { \clef bass a16 c' e' c' a c' fis' c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \grace { d''16 e'' fis'' } e''8 d''4 b''8 }
  \tag #'left { \clef treble b16 d' fis' d' b d' g' d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''8 a''4 g''8 }
  \tag #'left { \clef treble c'16 e' a' e' cis' e' a' e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 fis''4 e''8 }
  \tag #'left { \clef treble d'16 a' d'' a' d' g' cis'' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 d'' \tuplet 6/4 { r16 g''[ a'' b'' a'' g''] } }
  \tag #'left { \clef treble d'16 fis' a' fis' d' a' cis'' a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 fis'' \tuplet 6/4 { r16 e''[ fis'' g'' fis'' e''] } }
  \tag #'left { \clef treble d'16 a' d'' a' d' g' cis'' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 d'' \tuplet 6/4 { r16 g''[ a'' b'' a'' g''] } }
  \tag #'left { \clef treble d'16 fis' a' fis' d' a' cis'' a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 6/4 { g''16[ fis'' g'' a'' g'' fis''] } \tuplet 6/4 { fis''16[ e'' fis'' g'' fis'' e''] } }
  \tag #'left { \clef treble d'16 a' d'' a' d' g' cis'' g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 6/4 { e''16[ d'' cis'' d'' e'' fis''] } \tuplet 3/2 { g''16 gis'' a'' } bes''32 b'' c'''! cis''' }
  \tag #'left { \clef treble <a' fis' d'>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'''8 d''' d''' d''' }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' b''>8. <cis''' ais''>16 <d''' b''>8. <cis''' ais''>16 }
  \tag #'left { \clef bass r16 g, g r r g g' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' b''>8. <c'''! a''!>16 <c''' a''> <b'' g''> <b'' g''> <a'' fis''> }
  \tag #'left { \clef treble r16 g' g'' r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' fis''>16 <g'' e''> <g'' e''> <fis'' d''> <fis'' d''> <e'' c''> <e'' c''> <d'' b'> }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' gis'>4 <c'' a'>8 r }
  \tag #'left { \clef bass r8 d, d, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' a''>8. <b'' gis''>16 <c''' a''>8. <b'' gis''>16 }
  \tag #'left { \clef bass r16 d, d r r d d' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' a''>8. <b'' g''!>16 <b'' g''> <a'' fis''> <a'' fis''> <g'' e''> }
  \tag #'left { \clef treble r16 d' d'' r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' e''>16 <fis'' d''> <fis'' d''> <e'' c''> <e'' c''> <d'' b'> <d'' b'> <c'' a'> }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' g'>8 <e'' b'> <d'' a'> <c'' fis'> }
  \tag #'left { \clef bass r16 d' g d' fis d' d d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' g'>8 <e'' b'> <d'' a'> <c'' fis'> }
  \tag #'left { \clef bass r16 d' g d' fis d' d d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { b'8 e'' d'' cis'' } { b'16 g' b' g' fis' a' e' g' } }
  \tag #'left { \clef bass g4 a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''8 } { fis'16[ d'] } r8 r4 }
  \tag #'left { \clef bass d8 \clef treble <c''! a'>16[ d'] <b' g'> d' <a' fis'> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''8 <e''' e''> <d''' d''> <c''' fis''> }
  \tag #'left { \clef treble <b' g'>16 d' <b' g'> d' <a' fis'> d' <c'' a'> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b'' g''>8 <e''' e''> <d''' d''> <c''' fis''> }
  \tag #'left { \clef treble <b' g'>16 d' <b' g'> d' <a' fis'> d' <c'' a'> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b'' g''>8 g''4 g''8~ }
  \tag #'left { \clef treble g'16 b' a' c'' b' d'' c'' e'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8 g'' g'' g'' }
  \tag #'left { \clef treble d''16 f'' cis'' e'' d'' f'' b' dis'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''32 fis''! e'' dis'' e'' fis'' g'' fis'' e'' fis'' e'' dis'' e'' fis'' g'' fis'' }
  \tag #'left { \clef treble c''!8 r <g' e' c'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''32 a'' g'' fis'' g'' a'' bes'' a'' g'' a'' g'' fis'' g'' a'' bes'' a'' }
  \tag #'left { \clef treble <bes' g' e' cis'>8 r <bes' g' e' cis'> r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''32 a'' g'' fis'' g'' a'' b''! a'' g'' fis'' e'' d'' c'' b' a' g' }
  \tag #'left { \clef treble <b'! g' d'>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' g'>4 <a' fis'> }
  \tag #'left { \clef bass \split { d'4 c' } { d2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'32[ a' b' c'' d'' c'' b' a'] g'[ fis' e' d' c' b a g] }
  \tag #'left { \clef bass <b g>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b g>4 <a fis> }
  \tag #'left { \clef bass \split { d4 c } { d,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass g16 d <b g> d <c' a> d <cis' ais> d }
  \tag #'left { \clef bass \split { b,8 } { g,8 } r8 r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <d'~ b~>2 } { r16 d8 d d d16~ } }
  \tag #'left { \clef bass r8 g,, b,, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <d' b>8 b e' d' } { d16 d g d c' d b d } }
  \tag #'left { \clef bass g,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <c'~ a~>2 } { r16 d8 d d d16~ } }
  \tag #'left { \clef bass g,8 g, fis, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <c' a>8 c' d' c' } { d16 d a d b d a d } }
  \tag #'left { \clef bass fis,4 d,~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <b~ g~>2 } { g16 d r dis r e r b, } }
  \tag #'left { \clef bass d,8 dis, e, b,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <b g>8 a a c'! } { r16 c g cis g d! fis d } }
  \tag #'left { \clef bass c,8 cis, d,!4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <b~ g~>2 } { g16 d r dis r e r b, } }
  \tag #'left { \clef bass d,8 dis, e, b,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <b g>8 a a c'! } { r16 c g cis g d! fis d } }
  \tag #'left { \clef bass c,8 cis, d,!4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <b~ g~>2 } { g16 d r dis r e r f } }
  \tag #'left { \clef bass d,8 dis, e, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { <b g>8 b c' d' } { r16 e g d! g e b f } }
  \tag #'left { \clef bass e,8 f, e, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { e'4 a } { g16 e g e g e g e } }
  \tag #'left { \clef bass c,4 cis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { b4 c'8. a16 } { g16 d g d fis! d fis d } }
  \tag #'left { \clef bass d,4 d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass g4 \clef treble r16 d' d'' ais' }
  \tag #'left { \clef bass r8 \splitThree { g,16 b, \once \shiftOff d4 } { s16 \stemDir #DOWN { b,_~ \once \shiftOff b,4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'4~ b'16 g' g'' b' }
  \tag #'left { \clef bass r8 \splitThree { g,16 d \once \shiftOff f4 } { s16 \stemDir #DOWN { d_~ \once \shiftOff d4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4~ c''16 c'' c''' b'' }
  \tag #'left { \clef bass r8 \splitThree { g,16 c \once \shiftOff e4 } { s16 \stemDir #DOWN { c_~ \once \shiftOff c4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8. g''16 fis'' e'' d'' c'' }
  \tag #'left { \clef bass r8 \splitThree { g,16 d \once \shiftOff fis!4 } { s16 \stemDir #DOWN { d_~ \once \shiftOff d4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ais'8 b' r16 g' d'' ais'! }
  \tag #'left { \clef bass r8 \splitThree { g,16 d \once \shiftOff g4 } { s16 \stemDir #DOWN { d_~ \once \shiftOff d4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'4~ b'16 g' g'' b' }
  \tag #'left { \clef bass r8 \splitThree { g,16 d \once \shiftOff f4 } { s16 \stemDir #DOWN { d_~ \once \shiftOff d4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''4~ c''16 c'' e''' d''' }
  \tag #'left { \clef bass r8 \splitThree { g,16 c \once \shiftOff e4 } { s16 \stemDir #DOWN { c_~ \once \shiftOff c4 } } { g,8~ \once \shiftOff g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''4~ c'''16 b'' a'' g'' }
  \tag #'left { \clef bass r8 \splitThree { g,16 a,_~ <fis! a,>4~ } { s16 \stemDir #DOWN a,16 s4 } { g,8~ g,4 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''16 e'' d'' c'' b' a' g' fis' }
  \tag #'left { \clef bass \split { <fis~ a,>2 } { g,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'16 d' cis' d' cis' d' e' c' }
  \tag #'left { \clef bass \split { <fis a,>2 } { g,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b8 r r16 dis'' e'' c'' }
  \tag #'left { \clef bass <g d b, g,>8 r \clef treble <fis' d'>4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'8 r r16 d''' eis''' c''' }
  \tag #'left { \clef treble <g' g>8 r <fis'' d''>4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''4. b''32 c''' d''' c''' }
  \tag #'left { \clef treble <fis'' d''>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''8 r }
  \tag #'left { \clef treble <g'' g'>8 r }
  \tag #'common { s4 }

  \bar "|."
}

secondMovement = {
  \mark \markup { \bold "Andante" }
  \tempo 4 = 112
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 4/4
  \key c \major
  \accidentalStyle default

  \partial 16
  \tag #'right { \clef bass g16 }
  \tag #'left { \clef bass r16 }
  \tag #'common { s16 }
  |

  \tag #'right { \clef bass <c' g e>8 r <b g f> r <c' g> r <d' g> r }
  \tag #'left { \clef bass c8 r d r e r b, r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <e' c' g>8 r <f' d' a> r <d' b>2 }
  \tag #'left { \clef bass c8 r f, r g,4 g8. f16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' c'>8 r <g' f' b> r <g' e' c'> r <gis' e' d'> r }
  \tag #'left { \clef bass e8 r d r c r b, r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' e' c'>8 r <a' f' c'> r <d' b>4~ <d' b>8. g16 }
  \tag #'left { \clef bass a,8 r f, r g,2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <c' g e>8 r <b g f> r <c' g> r <d' g> r }
  \tag #'left { \clef bass c8 r d r e r b, r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <e' g>8 r \clef treble <fis' c'> r <g' d'>2 }
  \tag #'left { \clef bass c8 r <d a,> r <d b,>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' e'>8 r <bes' e'> r <b' d'>2 }
  \tag #'left { \clef bass <g c>8 r <g cis> r <g d>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' fis'>8 r <a' fis'> r g' r r8. }
  \tag #'left { \clef bass <a d>8 r <c' d> r <b g> r r8. }
  \tag #'common { s1*15/16 }

  \repeat volta 2 {

  \tag #'right { \clef treble g'16 }
  \tag #'left { \clef bass r16 }
  \tag #'common { s16 }
  |

  \tag #'right { \clef treble <g'' c''>4 <f''! b'> <e'' c''> \afterGrace <e'' c''>\trill { d''16 e'' } }
  \tag #'left { \clef treble <g' e'>4 <g' d'> <g' c'> <g' bes> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' c''>4 <bes'' c''> <a'' c''>~ <a'' c''>8. a'16 }
  \tag #'left { \clef bass <f' a>4 <e' g> <f' f>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' a'>4 <g'' a'> <f'' a'> <e'' cis'' g'> }
  \tag #'left { \clef bass <c' f>4 <cis' e> <d' d> e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' a' f'>4 <c''!~ a' ees'> <c'' g' d'> b' }
  \tag #'left { \clef bass f4 fis g \clef treble g'8. f'!16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' g'>8 r <b' g' f'> r <c'' g' e'> r <d'' g' d'> r }
  \tag #'left { \clef treble e'8 r d' r c' r \clef bass <b g d b,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { <e'' c'' g' e'>8 r <f'' d'' a' f'> r <d'' b' g' d'> r g''4~ } { s2. g'4~ } }
  \tag #'left { \clef bass <c' g e c>8 r <f d a, f,> r <g d b, g,> r r \split { b8 } { f8 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''4 g''~ g'' f'' } { g'4 bes' a'2 } }
  \tag #'left { \clef bass \split { c'4 cis'~ cis' d' } { e4 e f2 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' c'' g'>8 r <d'' b'! f'> r <c'' g' e'> r r4 }
  \tag #'left { \clef bass \split { \once \omit Flag \once \omit Stem g8 } { g8 } r8 g, r c r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <b f d>8 r <c' g e> r <cis' g e> r <d' a f> r }
  \tag #'left { \clef bass g,8 r c, r a, r d, r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <dis' a fis>8 r <e' b g> r <f' b g>2~ }
  \tag #'left { \clef bass b,8 r e, r <d! d,!>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <f' b g>4 <e' c' g> <d' c' f> <f' c' a> }
  \tag #'left { \clef bass c,4 c a, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <e' c' g>8 r <d' b f> r <c' g e> r r8. }
  \tag #'left { \clef bass g,8 r g,, r c, r r8. }
  \tag #'common { s1*15/16 }

  }

  \tag #'right { \clef treble r16 }
  \tag #'left { \clef bass g16 }
  \tag #'common { s16 }
  |

  \tag #'right { \clef treble r8 g''4 g'' g'' g''8~ }
  \tag #'left { \clef bass <c' e>4 <b f> <c' e> <d' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 g''4 g'' g''8 g'' g'' }
  \tag #'left { \clef bass <e' c'>4 <f' d'> <d' b>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g''4 f'' e'' d''8~ }
  \tag #'left { \clef treble <g' e'>4 <g' d'> <g' c'> <gis' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''8 c''4 d''8 c'' b' a' g' } { r4 a' d'2 } }
  \tag #'left { \clef treble <a' a>4 \clef bass f g2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 g''4 g'' g'' g''8~ }
  \tag #'left { \clef bass <c' e>4 <b f> <c' e> <d' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 c''' c''' c''' c''' b'' a'' g'' }
  \tag #'left { \clef treble <e' c'>4 <fis' a> <g' b>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 e''' e''' e''' e''' d''' cis''' d'''~ }
  \tag #'left { \clef treble <a' c'>4 <ais' cis'> <b' d'>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'''8 d'' e'' fis''~ fis'' g'' d'' b' }
  \tag #'left { \clef treble <c''! d'>4 <a'! d'> <g' g>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g''4 g'' g'' g''8~ }
  \tag #'left { \clef treble <g' e'>4 <f'! d'> <e' c'> <e' bes> }
  \tag #'common { s1 }
  |

  \repeat volta 2 {

  \tag #'right { \clef treble \split { g''8 f''4 e''8~ e'' f'' g'' gis'' } { c''4 bes' a'2 } }
  \tag #'left { \clef bass <c' a>4 <c' g> <c' f>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 a''4 a'' a'' a''8~ }
  \tag #'left { \clef treble <a' f'>4 <g' cis'> <f' d'> <e' g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 d'''4 d''8~ d'' g''4 f''!16 d'' }
  \tag #'left { \clef bass \split { d'4 c' c' b } { f4 fis g2 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''8 g''4 g'' g'' g''8~ }
  \tag #'left { \clef bass <c' e>4 <b f!> <c' e> <d' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 g''4 g'' g'' b'8~ }
  \tag #'left { \clef treble <e' c'>4 <f' d'> <d' b> <g' f'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 c''4 cis'' d'' a''8~ }
  \tag #'left { \clef treble <g' e'>4 <g' bes> <g' a> <f' a> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 c''!4 b'8 c'' g' e' c' }
  \tag #'left { \clef bass <e' g>4 <d' g> <c' c> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r8 <b f d>4 <c' g e>8 r <cis' g e>4 <d' a f>8 }
  \tag #'left { \clef bass g,4 c,8 r a,4 d,8 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r8 <dis' a fis>4 <e' b g>8 r <f'! b g>4 <f' b g>8~ }
  \tag #'left { \clef bass b,4 e,8 r <d! d,!>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <f' b g>8 <f' b g>4 <e' c' g> <d' c' f> <f' c' a>8~ }
  \tag #'left { \clef bass c,4 c a, f, }
  \tag #'common { s1 }

  }
  \alternative {
    {
      \tag #'right { \clef bass <f' c' a>8 <e' c' g>4 <d' b f>8 <c' g e>4 r8 \clef treble g' }
      \tag #'left { \clef bass g,4 g,, c, r }
      \tag #'common { s1 }
      |

      \tag #'right { \clef treble g''8 g''4 g'' g'' g''8 }
      \tag #'left { \clef treble <g' e'>4 <f' d'> <e' c'> <e' bes> }
      \tag #'common { s1 }
      |
    }
    {
      \tag #'right { \clef bass <f' c' a>8 <e' c' g>4 <d' b f>8 <c' g e>4 r8 \clef treble g' }
      \tag #'left { \clef bass g,4 g,, c, r }
      \tag #'common { s1 }
      |
    }
  }

  \tag #'left { \pushContextProperty Voice.autoBeaming \autoBeamOff  }

  \tag #'right { \clef treble c''8 <c'' g'> r <b' g' f'> r <c'' g' e'> r <d'' g' f'> }
  \tag #'left { \clef bass c8 e' c d' c c' c b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <e'' c'' g'> r <f'' c'' f'> r <d'' c'' f'> r <d'' b'! f'> }
  \tag #'left { \clef bass c8 bes c a c aes c g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <g'' d'' b' g'> r <g'' c'' g'> r <g'' f'' b'> r <gis'' e'' bes'> }
  \tag #'left { \clef bass c,8 f c, e c, d c, \stemDir #DOWN c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <a'' f'' a'> r <a'' f'' a'> r \split { <d'' b'!>4. } { aes'4 g'16 f' } }
  \tag #'left { \clef bass f,8 f d, d g, g4. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <c'' g'> r <b' g' f'> r <c'' g' e'> r <d'' g' d'> }
  \tag #'left { \clef bass c8 e' c d' c c' b, b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <e'' c'' g' e'> r <fis'' ees'' c'' fis'> r <g'' d'' g'>4 <g'' d'' g'>8 }
  \tag #'left { \clef bass c8 c' a, a b, <d' b>4 <d' b>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <a'' g'' e''! a'> r <bes'' g'' e'' bes'> r <b'' g'' d'' b'>4 <b'' g'' d'' b'>8 }
  \tag #'left { \clef bass c8 c' cis cis' \stemDir #UP d <g' d'>4 <g' d'>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <c''' fis'' c''> r <a'' fis'' c''> r g''4 \tuplet 3/2 { d''16 b' g' } }
  \tag #'left { \clef bass \stemDir #UP d8 d' \stemDir #UP d d' <g g,>4 r }
  \tag #'common { s1 }
  |

  \repeat volta 2 {

  \tag #'right { \clef treble r8 <g'' cis'' bes' g'> r <f''! cis'' bes' g'> r <e'' cis'' bes' g'> r <e'' c'' bes' g'> }
  \tag #'left { \clef bass \stemDir #UP g8 <e' cis' bes> \stemDir #UP g <e' cis' bes> \stemDir #UP g <e' cis' bes> \stemDir #UP g <e' c' bes> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <c''' f'' c''> r <bes'' e'' c'' bes'> r <a'' f'' c'' a'> r <a'' f'' cis'' a'> }
  \tag #'left { \clef bass \stemDir #UP a8 <f' c'> \stemDir #UP g <e' c'> \stemDir #UP f <f' c'> \stemDir #UP f <f' cis'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <a'' f'' d'' a'> r <g'' e'' cis'' bes' g'> r <f'' d'' a' f'> r <e'' cis'' bes' g' e'> }
  \tag #'left { \clef bass \stemDir #UP f8 <f' d'> \stemDir #UP f <e' cis' bes> \stemDir #UP f <d' a> f, <bes g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <d'' a' f' d'> r <c''! a' fis' ees' c'!> r <b'! g' d' b!>4. }
  \tag #'left { \clef bass f,8 <a f> fis, <a fis> g, g4 \tuplet 3/2 { f16[ e d] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <c'' g' e'> r <b' g' f'> r <c'' g' e'> r <d'' g' f'> }
  \tag #'left { \clef bass c8 c' c d' c c' c b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <e'' c'' g'> r <f'' c'' f'> r <d'' c'' f'> r <d'' b'! f'> }
  \tag #'left { \clef bass c8 bes c a c aes c g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <g'' d'' b' g'> r <g'' cis'' bes' g'> r <g'' cis'' bes' g'> r <f'' d'' a' f'> }
  \tag #'left { \clef bass \stemDir #UP f8 <d' b> \stemDir #UP e <e' cis' bes> \stemDir #UP f <e' cis' bes> \stemDir #UP f <d' a> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <e'' c''! g' e'> r <d'' g' f'> r c''4 \tuplet 3/2 { g'16 e' c' } }
  \tag #'left { \clef bass g,8 <c'! g> g, <b! g> c r r4 }
  \tag #'common { s1 }
  |

  \tag #'left { \popContextProperty Voice.autoBeaming  }

  \tag #'right { \clef bass r8 <b f d> r <c' g e> r <cis' g e> r <d' a f> }
  \tag #'left { \clef bass g,8 r c, r a, r d, r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r8 <dis' a fis> r <e' b g> r <f'! b g> <f' b g> <f' b g> }
  \tag #'left { \clef bass b,8 r e, r <d! d,!>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r8 <f' b g> r <e' c' g> r <d' c' f> r <f' c' a> }
  \tag #'left { \clef bass c,8 r c r a, r f, r }
  \tag #'common { s1 }

  }
  \alternative {
    {
      \tag #'right { \clef bass r8 <e' c' g> r <d' b f> r \clef treble c' g' g' }
      \tag #'left { \clef bass g,8 r g,, r c, r r4 }
      \tag #'common { s1 }
      |
    }
    {
      \tag #'right { \clef bass r8 <e' c' g> r <d' b f> r \clef treble c' c'' c'' }
      \tag #'left { \clef bass g,8 r g,, r c, r r4 }
      \tag #'common { s1 }
      |
    }
  }

  \tag #'right { \clef treble r8 <c'' f' d'> r <b' f' d'> r <aes' f' d'> r <g' f' d'> }
  \tag #'left { \clef bass g,8 r g r g r g r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <f'' d'' c''> r <f'' d'' b'> r <f'' d'' aes'> r <f'' d'' g'> }
  \tag #'left { \clef bass g,8 r g r g r g r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <aes'' d'' b'> r <g'' d'' b'> r <fis'' d'' b'> r <f'' d'' b'> }
  \tag #'left { \clef bass g,8 r g r g r g r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <f'' d'' bes'> r <f'' d'' a'!> r <f'' d'' aes'> r <f'' d'' g'> }
  \tag #'left { \clef bass g8 r g r g r g r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 e' c'' g' r f' b'! g' r fis' c'' g' r g' d'' g' }
  \tag #'left { \clef bass c'4 d' e' b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 g' e'' c'' r a' f'' d'' r g' d'' b' d'' b' d'' b' }
  \tag #'left { \clef bass c'4 f g4. f8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 g' g'' c'' r g' g'' f'' r g' g'' e'' r gis' gis'' d'' }
  \tag #'left { \clef bass e4 d c b, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 a' a'' c'' r a' a'' f'' d'' b' f'' d'' b' g' f' d' }
  \tag #'left { \clef bass a,4 f, g,2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 e' c'' g' r f' b' g' r fis' c'' g' r d' d'' g' }
  \tag #'left { \clef bass c4 d e b, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 e' e'' g' r fis' fis'' c'' r d'' g'' fis'' g'' d'' b' g' }
  \tag #'left { \clef bass c4 a, b,2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 e'' a'' g'' r e'' ais'' g'' r g'' b'' ais'' b'' g'' d'' b' }
  \tag #'left { \clef bass c4 cis d2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16 c'' e'' c'' b' a' g' fis' g' a' b' c'' d'' e'' f''! fis'' }
  \tag #'left { \clef bass d,4 d g,2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 g' g'' c'' r g' f''! b' r g' e'' c'' r g' e'' c'' }
  \tag #'left { \clef bass e'4 d' c' bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 c'' c''' f'' r c'' bes'' e'' r c'' a'' f'' a'' f'' a'' f'' }
  \tag #'left { \clef bass a4 g f2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 a' a'' c'' r a' g'' cis'' r a' f'' d'' r g' e'' cis'' }
  \tag #'left { \clef bass f4 e d e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 f' d'' a' r ees' c''! a' r d' c'' g' b' g' d' g' }
  \tag #'left { \clef bass f4 fis g4. f8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 c' c'' g' r f' b' g' r e' c'' g' r d' d'' g' }
  \tag #'left { \clef bass e4 d c b, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 g' e'' c'' r a' f'' d'' r g' d'' b' d'' b' d'' b' }
  \tag #'left { \clef bass c4 f, g,4. f,8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 g' g'' c'' r bes' g'' cis'' r a' g'' cis'' r a' f'' d'' }
  \tag #'left { \clef bass \split { e,4 e f, f } { e,2 f, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 g' e'' c''! r f' d'' b'! r e' c'' g' f' e' d' c' }
  \tag #'left { \clef bass \split { g,4 g c } { g,2 c4 } r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r16 d b f r e c' g r e cis' g r f d' a }
  \tag #'left { \clef bass g,4 c,8 r a,4 d,8 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r16 fis dis' a r g e' b r g f'! b f' b f' b }
  \tag #'left { \clef bass b,4 e,8 r <d! d,!>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r16 g f' b r g e' c' r f d' c' r a f' c' }
  \tag #'left { \clef bass c,4 c a, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r16 g e' c' r f d' b r \clef treble c' d' e' f' g' a' b' }
  \tag #'left { \clef bass g,4 g,, c,8 r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' g'>8 r <b' g'> r <c'' g'> r <d'' g'> r }
  \tag #'left { \clef bass <e' c'>8 r <f' d'> r e' r <f' b> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' g'>8 r <f'' a'> r <d'' g'> r r4 }
  \tag #'left { \clef bass <e' c'>8 r <d' f> r <b g> r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 r <g'' f''> r <g'' e''> r <gis'' d''> r }
  \tag #'left { \clef treble <g' e'>8 r <g' d'> r <g' c'> r <e' b> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' c''>8 r r4 <f' d' a>8 r r4 }
  \tag #'left { \clef treble <e' a>8 r r4 \clef bass <f d a, f,>8 r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' c'' g'>8 r r4 <d' b f>8 r r4 }
  \tag #'left { \clef bass <e' c' g>8 r r4 <d b, g,>8 r r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' g'' e'' c''>4 r r r8. }
  \tag #'left { \clef bass <c g, e, c,>4 r r r8. }
  \tag #'common { s1*15/16 }

  \bar "|."
}

thirdMovement = {
  \mark \markup { \bold "Scherzo. Allegro assai" }
  \tempo 4 = 120
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 3/8
  \key g \major
  \accidentalStyle default

  \partial 8
  \tag #'right { \clef treble b16 c' }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble d'8 e'16[ fis' g'8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a'16[ b' c''8] cis'' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''4 e''16 cis'' }
  \tag #'left { \clef bass \split { b4 c'16 ais } { g4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 r b'16 c''! }
  \tag #'left { \clef bass \split { b8 } { g8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] cis''' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \acciaccatura { d''8 } d'''4 c'''!16 a'' }
  \tag #'left { \clef treble \split { b'4 a'16 fis' } { d'4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r \tuplet 3/2 { d'16 e' fis' } }
  \tag #'left { \clef treble \split { g'8 } { g'8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } c''8 r }
  \tag #'left { \clef bass r8 r \clef bass <c' a d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 c''' \tuplet 3/2 { d'16[ e' fis'] } }
  \tag #'left { \clef treble <c'' a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } c''8 r }
  \tag #'left { \clef treble r8 r \clef bass <c' a d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 c''' \tuplet 3/2 { d'16[ e' fis'] } }
  \tag #'left { \clef treble <c'' a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } \tuplet 3/2 { c''16[ d'' e''] } fis''32[ g'' a'' b''] }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 c''' c''' }
  \tag #'left { \clef treble r8 r \clef bass d,32 e, fis, g, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 a'' g'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { a,16[ b, c] d[ e fis] g[ a b] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <fis'' a'>4\fermata b'16 c'' }
  \tag #'left { \clef bass <d' c'>4\fermata r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] cis''' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''4 e'''16 cis''' }
  \tag #'left { \clef treble \split { b'4 c''16 ais' } { g'4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''8 r \split { c'''!16 a'' } { e'' } }
  \tag #'left { \clef treble \split { b'8 } { g'8 } r \clef bass c' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''8 } { b'8 } r8 \split { a''16 fis'' } { c''8 } }
  \tag #'left { \clef bass d'8 r d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''8 } { b'8 } r8 r }
  \tag #'left { \clef bass g8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <b' fis' dis' b>4. }
  \tag #'left { \clef bass <b, b,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { b'16[ dis'' fis''] b''[ a'' g''] fis''[ e'' dis''] } }
  \tag #'left { \clef bass r8 r \clef treble a' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { e''16[ b' g''] e''[ b' g''] fis''[ b' a''] } }
  \tag #'left { \clef treble g'8 g' dis' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r r }
  \tag #'left { \clef treble e'8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <b' fis' dis' b>4. }
  \tag #'left { \clef bass <b, b,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { b'16[ dis'' fis''] b''[ a'' g''] fis''[ e'' dis''] } }
  \tag #'left { \clef treble r8 r <a' b> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { e''16[ g'' cis''] d''![ fis'' b'] cis''[ e'' ais'] } }
  \tag #'left { \clef treble <g' e'>8 \clef bass fis'[ fis] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble b'8 r r }
  \tag #'left { \clef bass b8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <b' fis' dis' b>4. }
  \tag #'left { \clef bass <b, b,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { b'16[ dis'' fis''] b''[ a'' g''] fis''[ e'' dis''] } }
  \tag #'left { \clef bass r8 r \clef treble a' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { e''16[ ais'' b''] e''[ ais'' b''] fis''[ ais'' b''] } }
  \tag #'left { \clef treble g'8 g' dis' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r r }
  \tag #'left { \clef treble e'8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <e'' b' gis' e'>4. }
  \tag #'left { \clef bass <e e,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { e''16[ gis'' b''] e'''[ d''' c'''] b''[ a'' gis''] } }
  \tag #'left { \clef bass r8 r \clef treble d'' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a''16[ dis''' e'''] a''[ dis''' e'''] b''[ dis''' e'''] } }
  \tag #'left { \clef treble c''8 c'' gis' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 r r }
  \tag #'left { \clef treble a'8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c''' fis''>8 r r }
  \tag #'left { \clef treble <a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c'' fis'>8 r r }
  \tag #'left { \clef bass <a d>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 r b16 c' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'8 e'16[ fis' g'8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a'16[ b' c''8] cis'' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''4 e''16 cis'' }
  \tag #'left { \clef bass \split { b4 c'16 ais } { g4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 r b'16 c'' }
  \tag #'left { \clef bass \split { b8 } { g8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] cis''' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \acciaccatura { d''8 } d'''4 c'''!16 a'' }
  \tag #'left { \clef treble \split { b'4 a'16 fis' } { d'4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r \tuplet 3/2 { d'16 e' fis' } }
  \tag #'left { \clef treble \split { g'8 } { g'8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } c''8 r }
  \tag #'left { \clef treble r8 r \clef bass <c' a d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 c''' \tuplet 3/2 { d'16[ e' fis'] } }
  \tag #'left { \clef treble <c'' a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } c''8 r }
  \tag #'left { \clef treble r8 r \clef bass <c' a d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 c''' \tuplet 3/2 { d'16[ e' fis'] } }
  \tag #'left { \clef treble <c'' a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } \tuplet 3/2 { c''16[ d'' e''] } fis''32[ g'' a'' b''] }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 c''' c''' }
  \tag #'left { \clef treble r8 r \clef bass d,32 e, fis, g, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 a'' g'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { a,16[ b, c] d[ e fis] g[ a b] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <fis'' a'>4\fermata b'16 c'' }
  \tag #'left { \clef bass <d' c'>4_\fermata r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] cis''' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''4 e'''16 cis''' }
  \tag #'left { \clef treble \split { b'4 c''16 ais' } { g'4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''8 r \split { c'''!16 a'' } { e'' } }
  \tag #'left { \clef treble \split { b'8 } { g'8 } r \clef bass c' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''8 } { b'8 } r8 \split { a''16 fis'' } { c''8 } }
  \tag #'left { \clef bass d'8 r d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''8 } { b'8 } r8 r }
  \tag #'left { \clef bass g8 r \tuplet 3/2 { g,16 a, b, } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 r <g' d' b> }
  \tag #'left { \clef bass \tuplet 3/2 { c16[ d e] } f8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 r r }
  \tag #'left { \clef bass r8 f' \tuplet 3/2 { g,16[ a, b,] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r4 <g' d' b>8 }
  \tag #'left { \clef bass \tuplet 3/2 { c16[ d e] } f8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 r r }
  \tag #'left { \clef bass r8 f' \tuplet 3/2 { g,16[ a, b,] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { c'[ d' e'] } }
  \tag #'left { \clef bass \tuplet 3/2 { c16[ d e] } f8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f'8 r \tuplet 3/2 { g'16 a' b' } }
  \tag #'left { \clef bass \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { c'16[ d' e'] } f'8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { c''16 d'' e'' } f''4 }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble dis''4. }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e''4. }
  \tag #'left { \clef bass c16 g c' g c g }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''4 g''32 f'' e'' f'' }
  \tag #'left { \clef bass c16 a c' a c a }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis''!8 g'' g'' }
  \tag #'left { \clef bass c16 f b f c f }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''4 e''8 }
  \tag #'left { \clef bass c16 e c' e c e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble cis''4. }
  \tag #'left { \clef bass \split { bes,16 e g e a, e } { bes,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 \acciaccatura { e''8 } d''16 cis'' d'' e'' }
  \tag #'left { \clef bass \split { a,16 d f d a, d } { a,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''8 b' b' }
  \tag #'left { \clef bass \split { aes,16 d f d g, d } { aes,4 g,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''4 r8 }
  \tag #'left { \clef bass c16 e g f e d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e''4. }
  \tag #'left { \clef bass c16 g bes g c g }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''4 g''32 f'' e'' f'' }
  \tag #'left { \clef bass c16 f a f c f }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis''!8 g'' g'' }
  \tag #'left { \clef bass c16 d b! d c d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''4 e''8 }
  \tag #'left { \clef bass c16 e c' e c e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble cis''4. }
  \tag #'left { \clef bass \split { bes,16 e g e a, e } { bes,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 \acciaccatura { e''8 } d''16 cis'' d'' e'' }
  \tag #'left { \clef bass \split { a,16 d f d a, d } { a,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''8 b' b' }
  \tag #'left { \clef bass \split { aes,16 d f d g, d } { aes,4 g,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''4 g8 }
  \tag #'left { \clef bass c16 g f e d c }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <f' g>4 <e' g>8~ }
  \tag #'left { \clef bass r16 g, a, b, c fis,! }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d' g>4 <e' g>8~ }
  \tag #'left { \clef bass r16 g, a, b, c fis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d' g>4 <e' g>8~ }
  \tag #'left { \clef bass r16 g, a, b, c fis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d' g>16 cis' d' e' f' fis' }
  \tag #'left { \clef bass g,4.~ }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g' e'>4 <f' d'>8 }
  \tag #'left { \clef bass g,16 fis, g, fis, g, gis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <e' c'>4 <e' c'>8 }
  \tag #'left { \clef bass a,16 gis, a, gis, a, g, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <a' c'>8 <a' c'> <a' c'> }
  \tag #'left { \clef bass fis,16 e, fis, d, e, fis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d' b>4 r8 }
  \tag #'left { \clef bass g,16 a, b, c d e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass r16 g a b c' fis! }
  \tag #'left { \clef bass \split { f4 ees8 } { g,4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass r16 g a b c' fis }
  \tag #'left { \clef bass \split { d4 ees8 } { g,4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass r16 g a b c' fis }
  \tag #'left { \clef bass \split { d4 ees8 } { g,4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g16 b c' d' e'! f' }
  \tag #'left { \clef bass \split { d4 r8 } { g,4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g' e'>4 <f' d'>8 }
  \tag #'left { \clef bass g,16 fis, g, fis, g, gis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <e' c'>4 <e' c'>8 }
  \tag #'left { \clef bass a,16 gis, a, gis, a, g, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <a' c'>8 <a' c'> <a' c'> }
  \tag #'left { \clef bass fis,16 e, fis, d, e, fis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d' b>4 r8 }
  \tag #'left { \clef bass g,16 a, b, c d e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' c'' a'>8 <d'' c'' a'> <d'' c'' a'> }
  \tag #'left { \clef bass fis16 e fis d e fis }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' b' g'>4 r8 }
  \tag #'left { \clef bass g16 a b c' d' e' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <a'' c''>8 <a'' c''> <a'' c''> }
  \tag #'left { \clef bass fis'16 e' fis' d' e' fis' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' b'>16 g' a' b' c'' d'' }
  \tag #'left { \clef bass g'4 r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e''4. }
  \tag #'left { \clef bass c16 g c' g c g }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''4 g''32 f'' e'' f'' }
  \tag #'left { \clef bass c16 a c' a c a }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis''!8 g'' g'' }
  \tag #'left { \clef bass c16 f b f c f }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''4 e''8 }
  \tag #'left { \clef bass c16 e c' e c e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble cis''4. }
  \tag #'left { \clef bass \split { bes,16 e g e a, e } { bes,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 \acciaccatura { e''8 } d''16 cis'' d'' e'' }
  \tag #'left { \clef bass \split { a,16 d f d a, d } { a,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''8 b' b' }
  \tag #'left { \clef bass \split { aes,16 d f d g, d } { aes,4 g,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 g''16 f'' e'' d'' }
  \tag #'left { \clef bass c16 e g e c e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble cis''4. }
  \tag #'left { \clef bass \split { bes,16 e g e a, e } { bes,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 \acciaccatura { e''8 } d''16 cis'' d'' e'' }
  \tag #'left { \clef bass \split { a,16 d f d a, d } { a,4 a,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''8 b' b' }
  \tag #'left { \clef bass \split { aes,16 d f d g, d } { aes,4 g,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 r r }
  \tag #'left { \clef bass c16 e g e d c }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \acciaccatura { f''8 } f'''4 b''8 }
  \tag #'left { \clef bass g,16 d f d g, d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 r r }
  \tag #'left { \clef bass c16 e g e d c }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \acciaccatura { f'8 } f''4 b'8 }
  \tag #'left { \clef bass g,16 d f d g, d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 r e'16 f' }
  \tag #'left { \clef bass <e c>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 a'16[ b' c''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''16[ e'' f''8] fis'' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''4 a''16 fis''! }
  \tag #'left { \clef treble \split { e'4 f'16 dis' } { c'4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r e'16 f' }
  \tag #'left { \clef treble \split { e'8 } { c'8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 a'16[ b' c''8] }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''16[ e'' f''8] fis'' }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \acciaccatura { g'8 } g''4 f''16 d'' }
  \tag #'left { \clef bass e'4 d'16 b }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e''8 r d''16 b' }
  \tag #'left { \clef bass c'8 r b16 gis }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 r b'16 g'! }
  \tag #'left { \clef bass a8 r g16 e }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a'8 r g'16 e' }
  \tag #'left { \clef bass fis!8 r e16 cis }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis'!8 r r }
  \tag #'left { \clef bass d8 r e,16 cis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef bass d,8 r e,16 cis, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef bass d,4.~ }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r4\fermata b16 c' }
  \tag #'left { \clef bass d,4_\fermata r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'8 e'16[ fis' g'8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a'16[ b' c''8] cis'' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''4 e''16 cis'' }
  \tag #'left { \clef bass \split { b4 c'16 ais } { g4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 r b'16 c''! }
  \tag #'left { \clef bass \split { b8 } { g8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] cis''' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \acciaccatura { d''8 } d'''4 c'''!16 a'' }
  \tag #'left { \clef treble \split { b'4 a'16 fis' } { d'4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r \tuplet 3/2 { d'16 e' fis' } }
  \tag #'left { \clef treble \split { g'8 } { g'8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } c''8 r }
  \tag #'left { \clef treble r8 r \clef bass <c' a d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 c''' \tuplet 3/2 { d'16[ e' fis'] } }
  \tag #'left { \clef treble <c'' a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } c''8 r }
  \tag #'left { \clef treble r8 r \clef bass <c' a d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 c''' \tuplet 3/2 { d'16[ e' fis'] } }
  \tag #'left { \clef treble <c'' a' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g'16[ a' b'] } \tuplet 3/2 { c''16[ d'' e''] } fis''32[ g'' a'' b''] }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 c''' c''' }
  \tag #'left { \clef treble r8 r \clef bass d,32 e, fis, g, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 a'' g'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { a,16[ b, c] d[ e fis] g[ a b] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <fis'' a'>4\fermata b'16 c'' }
  \tag #'left { \clef bass <d' c'>4_\fermata r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] cis''' }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''4 e'''16 cis''' }
  \tag #'left { \clef treble \split { b'4 c''16 ais' } { g'4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''8 r \split { c'''!16 a'' } { e'' } }
  \tag #'left { \clef treble \split { b'8 } { g'8 } r \clef bass c' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''8 } { b'8 } r8 \split { a''16 fis'' } { c''8 } }
  \tag #'left { \clef bass d'8 r d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''8 } { b'8 } r8 r }
  \tag #'left { \clef bass g8 r \tuplet 3/2 { d16 e fis } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 r <d'' a' fis'> }
  \tag #'left { \clef bass \tuplet 3/2 { g16[ a b] } c'8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d''' a'' fis''>8 r r }
  \tag #'left { \clef bass r8 \clef treble c'' \clef bass \tuplet 3/2 { d16[ e fis] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 r <d'' a' fis'> }
  \tag #'left { \clef bass \tuplet 3/2 { g16[ a b] } c'8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d''' a'' fis''>8 r r }
  \tag #'left { \clef bass r8 \clef treble c'' \clef bass \tuplet 3/2 { d16[ e fis] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { d'16[ e' fis'] } \tuplet 3/2 { g'16[ a' b'] } }
  \tag #'left { \clef bass \tuplet 3/2 { g16[ a b] } c'8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 r \tuplet 3/2 { d''16 e'' fis'' } }
  \tag #'left { \clef treble \tuplet 3/2 { d'16[ e' fis'] } \tuplet 3/2 { g'16[ a' b'] } c''8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { g''16[ a'' b''] } c'''8 r }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef treble \tuplet 3/2 8 { dis'16[ e' fis'] g'[ a' b'] } c''8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { dis''16[ e'' fis''] g''[ a'' b''] } c'''8 }
  \tag #'left { \clef bass R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef treble \tuplet 3/2 8 { e'16[ fis' gis'] a'[ bes' b'] } c''8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { e''16[ fis'' gis''] a''[ bes'' b''] } c'''8 }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 r a'16 bes' }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 d''16[ e'' f''8] }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''16[ a'' bes''8] b'' }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''4 d'''16 b''! }
  \tag #'left { \clef treble \split { a'4 bes'16 g' } { fis'4.~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 r a'16 bes' }
  \tag #'left { \clef treble \split { a'8 } { f'8 } r8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c''8 d''16[ e'' f''8] }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''16[ a'' bes''8] b'' }
  \tag #'left { \clef treble R4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''4 d'''16 b''! }
  \tag #'left { \clef treble \split { a'4 bes'16 gis' } { f'4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''4 d'''16 b'' }
  \tag #'left { \clef treble \split { a'4 b'!16 gis' } { e'4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''4 d'''16 b'' }
  \tag #'left { \clef treble \split { a'4 b'16 gis' } { dis'4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''8 c''' c''' }
  \tag #'left { \clef treble \split { a'8 a' a' } { d'!4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'''32[ b''16.] a''32[ g''16.] fis''32[ g''16.] }
  \tag #'left { \clef treble g'!8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''32[ g''16.] fis''32[ e''16.] dis''32[ e''16.] }
  \tag #'left { \clef treble <a' g' cis'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''32[ fis''16.] e''32[ d''!16.] c''32[ b'16.] }
  \tag #'left { \clef treble <b' g' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''32[ c''16.] b'32[ a'16.] g'32[ fis'16.] }
  \tag #'left { \clef bass <c' a d>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 \tuplet 3/2 8 { g16[ b d'] g[ b d'] } }
  \tag #'left { \clef bass g,8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'left { \clef treble g'4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'left { \clef treble fis'8 d'' d'' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'left { \clef bass fis,4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'left { \clef bass g,8 d d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'left { \clef treble g'4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'left { \clef treble fis'8 e'' d'' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'left { \clef bass fis,4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'left { \clef bass g,8 e d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'left { \clef treble fis'8 e'' d'' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'left { \clef bass g,8 e d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'left { \clef treble fis'8 e'' d'' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g16 b a c' b d' }
  \tag #'left { \clef bass r8 r g }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble c'16 e' d' fis' e' g' }
  \tag #'left { \clef bass a8 b c' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis'16 a' g' b' a' c'' }
  \tag #'left { \clef bass d'8 e' fis' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble b'16 cis'' d'' c'' b' g' }
  \tag #'left { \clef bass g'8 fis g }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e''16 d'' c'' a' fis'' e'' }
  \tag #'left { \clef bass gis8 a ais }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''16 b' g'' f'' e'' c'' }
  \tag #'left { \clef bass b8 \clef treble <g' b>[ <g' c'>] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''16 f'' e'' c'' g'' f'' }
  \tag #'left { \clef treble <g' b>8 <g' c'> <g' b> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e''16 c'' g'' f'' e'' c'' }
  \tag #'left { \clef treble <g' c'>8 <g' b> <g' c'> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { g''16[ fis''! e''] g''[ fis'' e''] } }
  \tag #'left { \clef treble <g' c'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { g''16[ fis'' e''] g''[ fis'' e''] } }
  \tag #'left { \clef treble <a' g' cis'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { d''16[ c'' b'] d''[ c'' b'] } }
  \tag #'left { \clef treble <b' g' d'>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { a'16[ g' fis'] a'[ g' fis'] } }
  \tag #'left { \clef bass <c' a d>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'4 r8 }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass g,4. }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass fis,8 d d }
  \tag #'left { \clef bass \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis'4. }
  \tag #'left { \clef bass \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 d'' d'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass g,4. }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass fis,8 e d }
  \tag #'left { \clef bass \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble fis'4. }
  \tag #'left { \clef bass \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 e'' d'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass fis,8 e d }
  \tag #'left { \clef bass \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 e'' d'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g16[ b d'] g[ b d'] g[ b d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass fis,8 e d }
  \tag #'left { \clef bass \tuplet 3/2 8 { a16[ c' d'] a[ c' d'] a[ c' d'] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass g,16 b, a, c b, d }
  \tag #'left { \clef bass r8 r <g, g,,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass c16 e d fis e g }
  \tag #'left { \clef bass <a, a,,>8 <b, b,,> <c c,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass fis16 a g b a c' }
  \tag #'left { \clef bass <d d,>8 <e e,> <fis fis,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble b16 cis' d' c' b g }
  \tag #'left { \clef bass <g g,>8 fis,[ g,] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e'16 d' c' a fis' e' }
  \tag #'left { \clef bass gis,8 a, ais, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'16 b g' f' e' c' }
  \tag #'left { \clef bass b,8 <g b,>[ <g c>] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'16 f' e' c' g' f' }
  \tag #'left { \clef bass <g b,>8 <g c> <g b,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble e'16 c' g' f' e' c' }
  \tag #'left { \clef bass <g c>8 <g b,> <g c> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { g''16[ fis''! e''] g''[ fis'' e''] } }
  \tag #'left { \clef bass <g c>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { g''16[ fis'' e''] g''[ fis'' e''] } }
  \tag #'left { \clef bass <a g cis>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { d''16[ c'' b'] d''[ c'' b'] } }
  \tag #'left { \clef bass <b g d>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 8 { a'16[ g' fis'] a'[ g' fis'] } }
  \tag #'left { \clef bass <c' a d>8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 r b'16 c'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] <cis''' cis''> }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d''' d''>4 e'''16 cis''' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d'''8 r b'16 c''! }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 e''16[ fis'' g''8] }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''16[ b'' c'''8] <cis''' cis''> }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d''' d''>4 c'''!16 a'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r <cis'' cis'> }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' d'>4 e''16 cis'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble d''8 r <cis''' cis''> }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d''' d''>4 c'''!16 a'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r c''16 a' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 r c'''16 a'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g''8 r c''16 a' }
  \tag #'left { \clef bass \tuplet 3/2 8 { g,16[ d g] g,[ d g] g,[ d g] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8 r r }
  \tag #'left { \clef bass g,8 r a,,16 fis,, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble R4. }
  \tag #'left { \clef bass g,,8 r r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r4 }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }

  \bar "|."
}

movementSpecs = #'(
  (firstMovement "Allegro")
  (secondMovement "Andante")
  (thirdMovement "Scherzo. Allegro assai")
)
