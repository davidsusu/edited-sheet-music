\version "2.24.1"

\include "../../shared/src/lilypond/lib.ly"

workTitle = "Piano Sonata No. 2"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 2 No. 2"
workDate = "1795"
workEditor = "Dávid Horváth"

firstMovement = {
  \mark \markup { \bold "Allegro vivace" }
  \tempo 4 = 120
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 2/4
    \set Timing.baseMoment = #(ly:make-moment 1/8)
    \set Timing.beatStructure = #'(2 2)
    \set Timing.beamExceptions = \beamExceptions {
      8[ 8 8 8] |
      16[ 16 16 16] 16[ 16 16 16] |
      8.[ 32 32] 4 |
      \tuplet 3/2 8 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } |
    }
  \key a \major
  \accidentalStyle default

  \repeat volta 2 {

  \partial 8
  \tag #'right { \clef treble <a'' a'>8 }
  \tag #'left { \clef bass a8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <e'' e'>4 r8 e'32 d' cis' b }
  \tag #'left { \clef bass e4 r8 e32 d cis b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a4 r8 <a'' a'> }
  \tag #'left { \clef bass a,4 r8 a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' fis'>4 r8 fis'32 e' d' cis' }
  \tag #'left { \clef bass fis4 r8 fis32 e d cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b4 r8 <d''' d''> }
  \tag #'left { \clef bass b,4 r8 d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b'' b'>4 <gis'' gis'> }
  \tag #'left { \clef bass b4 gis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>4 <d'' d'> }
  \tag #'left { \clef bass e4 d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' b>4 <gis' gis> }
  \tag #'left { \clef bass b,4 gis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' e>4 r8 \tuplet 3/2 { a16 cis' e' } }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 b' cis'' d'' }
  \tag #'left { \clef bass <a e cis a,>4\arpeggio r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 fis'' gis'' a'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4. d''8 } { r8 gis' a' b' } }
  \tag #'left { \clef bass r8 e fis gis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <cis'' e'>8 r r4 }
  \tag #'left { \clef bass a8 a, cis d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <e' gis> <fis' a> <gis' b> }
  \tag #'left { \clef bass e4. d8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' cis'>8 e' a' cis'' }
  \tag #'left { \clef bass cis8 e cis a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4. d''8 } { b'8 gis' a' b' } }
  \tag #'left { \clef bass gis,8 e, fis, gis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''8 b' a' b' } { e'4. dis'8 } }
  \tag #'left { \clef bass a,8 gis, fis, b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'8 e' a' b' } { b4 <dis' a> } }
  \tag #'left { \clef bass \split { e8 b, fis b, } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'8 e' a' b' } { b4 <dis' a> } }
  \tag #'left { \clef bass \split { e8 b, fis b, } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis' e' b>4 <e' b gis> }
  \tag #'left { \clef bass <e e,>4 e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' b gis>4 r8 <a'' a'> }
  \tag #'left { \clef bass e,4 r8 a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>4 r8 e'32 d' cis' b }
  \tag #'left { \clef bass e4 r8 e32 d cis b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a4 r }
  \tag #'left { \clef bass a,4 r8 \tuplet 3/2 { a,,16 cis, e, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass a,8 b, cis d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass e8 fis gis a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <e' gis> <fis' a> <gis' b> }
  \tag #'left { \clef bass e4. d8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' cis'>8 e' a' cis'' }
  \tag #'left { \clef bass cis8 e cis a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4. d''8 } { b'8 gis' a' b' } }
  \tag #'left { \clef bass gis,8 e fis gis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <cis'' e'>4 r }
  \tag #'left { \clef bass a8 e a cis' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { s8 e'' fis'' gis'' } { r8 gis' a' b' } }
  \tag #'left { \clef bass e'4. d'8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''8 b'' cis''' d''' } { cis''8 e''4 a''8 } }
  \tag #'left { \clef bass cis'8 gis a fis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e''' cis'''>4 <gis'' e'' d'' b'> }
  \tag #'left { \clef bass e4 e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' e'' cis''>4 r }
  \tag #'left { \clef bass \tuplet 3/2 { a,16 cis d } \tuplet 3/2 { e16 fis gis } \clef treble \tuplet 3/2 { a16 cis' d' } \tuplet 3/2 { e'16 fis' gis' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef treble a'8 gis' fis' e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 gis' a' } \tuplet 3/2 { b'16 cis'' d'' } \tuplet 3/2 { e''16 gis'' a'' } \tuplet 3/2 { b''16 cis''' d''' } }
  \tag #'left { \clef bass d'8 cis' b a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'''8 d''' cis''' b'' }
  \tag #'left { \clef bass gis8 fis e d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''4 r }
  \tag #'left { \clef bass \tuplet 3/2 { cis16 e fis } \tuplet 3/2 { gis16 a b } \clef treble \tuplet 3/2 { cis'16 e' fis' } \tuplet 3/2 { gis'16 a' b' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef treble cis''8 b' a' gis' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { r16 b' cis'' } \tuplet 3/2 { dis''16 e'' eis'' } \tuplet 3/2 { fis''16 dis'' e'' } \tuplet 3/2 { fis''16 gis'' a'' } }
  \tag #'left { \clef treble a'8 gis' fis' e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''8 a'' gis'' fis'' }
  \tag #'left { \clef bass dis'8 cis' b a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 dis'' cis'' b' }
  \tag #'left { \clef bass gis8 fis e dis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ais'8 gis' fis' e' }
  \tag #'left { \clef bass cis8 b, ais, fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { dis'4 dis' } { dis'8 cis' b a } }
  \tag #'left { \clef bass b,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { e'4 ais } { gis8 fis e fis } }
  \tag #'left { \clef bass b,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { b4 dis } { dis8 cis b, a, } }
  \tag #'left { \clef bass b,,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { e4 ais, } { gis,8 fis, e, fis, } }
  \tag #'left { \clef bass b,,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b, dis,>4 r }
  \tag #'left { \clef bass b,,8 dis, fis, ais, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass R2 }
  \tag #'left { \clef bass b,8 dis fis ais }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 b }
  \tag #'left { \clef bass b8 ais b r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'8 b fis' dis' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 b }
  \tag #'left { \clef bass a8 gis a r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'8 b fis' dis' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 b }
  \tag #'left { \clef bass g8 fis g r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'8 b g' e' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass \splitFour { \tweak extra-offset #'(-0.5 . 0) g'4\rest \tweak extra-offset #'(-0.5 . 0) g'8\rest b } { \tweak extra-offset #'(1 . 0) d'4\rest \once \stemDown a_\laissezVibrer } { \tweak extra-offset #'(-0.5 . 0) b8\rest fis4._\laissezVibrer } { dis2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis'8 fis' a' b' }
  \tag #'left { \clef bass \split { c'~ } { <a~ fis~ dis~>2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 b' d'' c'' }
  \tag #'left { \clef bass \split { c' } { <a fis~ dis~>2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'8 a' g' fis' }
  \tag #'left { \clef bass \split { b4 a } { <fis dis>2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'4 r8 e'' }
  \tag #'left { \clef bass <g e>16 b <g e> b <g e> b <g e> b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis''8 e'' g'' e'' }
  \tag #'left { \clef bass <g e>16 b <g e> b <g e> b <g e> b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8. fis''32 e'' dis''4~ }
  \tag #'left { \clef bass <a fis>16 b <a fis> c' <a fis> c' <a fis> c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis''4 d'' }
  \tag #'left { \clef bass <a fis>16 c' <a fis> c' <a fis> c' <a fis> c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''4. g''8 }
  \tag #'left { \clef bass <b g>16 c' <b g> d' <b g> d' <b g> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''8 g'' b'' g'' }
  \tag #'left { \clef bass <b g>16 d' <b g> d' <b g> d' <b g> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8. a''32 g'' fis''4~ }
  \tag #'left { \clef bass <c' a>16 d' <c' a> ees' <c' a> ees' <c' a> ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis''4 f'' }
  \tag #'left { \clef bass <c' a>16 ees' <c' a> ees' <c' a> ees' <c' a> ees' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''4. bes''8 }
  \tag #'left { \clef bass <d' bes>16 ees' <d' bes> f' <d' bes> f' <d' bes> f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 bes'' d''' bes'' }
  \tag #'left { \clef bass <d' bes>16 f' <d' bes> f' <d' bes> f' <d' bes> f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''8. c'''32 bes'' a''4~ }
  \tag #'left { \clef treble <ees' c'>16 f' <ees' c'> fis' <ees' c'> fis' <ees' c'> fis' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''4 a'' }
  \tag #'left { \clef treble <e' cis'>16 fis' <e' cis'> g' <e' cis'> g' <e' cis'> g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5 #'(-1 . 0) ##f \markup \sharp a''4 <c'''~ c''~> }
  \tag #'left { \clef treble <fis' d'>16 g' <fis' d'> a' <fis' d'> a' <fis' d'> a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c''' c''>4 <b'' b'> }
  \tag #'left { \clef treble <fis' dis'>16 a' <fis' dis'> a' <fis' dis'> a' <fis' dis'> a' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5 #'(0 . 0) ##f \markup \sharp b''4 <d'''~ d''~> }
  \tag #'left { \clef treble <gis' e'>16 a' <gis' e'> b' <gis' e'> b' <gis' e'> b' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>4 <cis''' cis''> }
  \tag #'left { \clef treble <g' eis'>16 b' <g' eis'> b' <g' eis'> b' <g' eis'> b' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #5 #'(0 . 0) ##f \markup \sharp cis'''4 <e'''~ e''~> }
  \tag #'left { \clef treble <a' fis'>16 b' <a' fis'> b' <a' fis'> c'' <a' fis'> c'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e''' e''>4 <dis''' dis''> }
  \tag #'left { \clef treble <a' fis'>16 c'' <a' fis'> c'' <a' fis'> c'' <a' fis'> c'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <dis''' dis''>4 r8 c'32 b a g }
  \tag #'left { \clef treble <a' fis'>4 \clef bass r8 c32 b, a, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis4 r8 <e''' e''> }
  \tag #'left { \clef bass fis,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <dis''' dis''>4 r8 c'32 b a g }
  \tag #'left { \clef bass r4 r8 c32 b, a, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble fis4 r8 e''' }
  \tag #'left { \clef bass fis,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis'''4 r8 e''' }
  \tag #'left { \clef treble r4 <c'' a' fis'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis'''4 r8 e''' }
  \tag #'left { \clef treble r4 <c'' a' fis'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis'''4 r }
  \tag #'left { \clef treble r4 <c'' a' fis'> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 b'' }
  \tag #'left { \clef treble r2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { e''16 e''' e'' } \tuplet 3/2 { b'16 b'' b' } \tuplet 3/2 { gis'16 gis'' gis' } }
  \tag #'left { \clef bass <e' b gis>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 e'' e' } \tuplet 3/2 { b16 b' b } \tuplet 3/2 { gis16 gis' gis } \tuplet 3/2 { e16 e' e } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { fis2 } { e2 } }
  \tag #'left { \clef bass ais,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { b2 } { dis2 } }
  \tag #'left { \clef bass <a, b,,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { e16 e' e } \tuplet 3/2 { gis16 gis' gis } \tuplet 3/2 { b16 b' b } }
  \tag #'left { \clef bass <gis, e,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 e'' e' } \tuplet 3/2 { gis'16 gis'' gis' } \tuplet 3/2 { b'16 b'' b' } \tuplet 3/2 { e''16 e''' e'' } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis''2 } { e''2 } }
  \tag #'left { \clef treble ais'2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { b''2 } { dis''2 } }
  \tag #'left { \clef treble <a' b>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 r \tuplet 3/2 { r16 gis'' a'' } \tuplet 3/2 { b''16 cis''' dis''' } }
  \tag #'left { \clef treble \tuplet 3/2 { e'16 gis' a' } \tuplet 3/2 { b'16 cis'' dis'' } e''8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'''8 dis''' cis''' b'' }
  \tag #'left { \clef treble R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 gis'' fis'' e'' }
  \tag #'left { \clef bass \tuplet 3/2 8 { b,16 dis e fis16 gis a b16 dis' e' fis'16 gis' a' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis''8 r r4 }
  \tag #'left { \clef bass b'8 a' gis' fis' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'4 r }
  \tag #'left { \clef bass \tuplet 3/2 { e,16 gis, a, } \tuplet 3/2 { b,16 cis dis } \tuplet 3/2 { e16 gis a } \tuplet 3/2 { b16 cis' dis' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass e'8 dis' cis' b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { b16 dis' e' } \tuplet 3/2 { fis'16 gis' a' } \tuplet 3/2 { b'16 dis'' e'' } \tuplet 3/2 { fis''16 gis'' a'' } }
  \tag #'left { \clef bass a8 gis fis e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''8 a'' gis'' fis'' }
  \tag #'left { \clef bass dis8 cis b, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 dis'' cis'' b' }
  \tag #'left { \clef bass gis,8 fis, e, dis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 gis' fis' e' }
  \tag #'left { \clef bass cis,8 b,, a,, gis,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis'8 cis' b a }
  \tag #'left { \clef bass a,,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis8 fis e dis }
  \tag #'left { \clef bass b,,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'2 }
  \tag #'left { \clef bass \split { e8 fis gis a } { e,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'2 }
  \tag #'left { \clef bass \split { b8 cis' d' dis' } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis' e' b>2 }
  \tag #'left { \clef bass \split { e,8 fis, gis, a, } { e,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis' b a>2 }
  \tag #'left { \clef bass \split { b,8 cis d dis } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'2 }
  \tag #'left { \clef bass \split { gis8 fis gis a } { <e e,~>2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'2 }
  \tag #'left { \clef bass \splitThree { b8 cis' d' dis' } { dis4 fis } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis' e' b>2 }
  \tag #'left { \clef bass \split { e,8 fis, gis, a, } { e,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis' b a>2 }
  \tag #'left { \clef bass \split { b,8 cis d dis } { e,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' b gis>4 r }
  \tag #'left { \clef bass <e e,>8 cis b, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' b gis>4 <e' b gis> }
  \tag #'left { \clef bass gis,8 a, gis, fis, }
  \tag #'common { s2 }
  |

  }
  \alternative {
    {
  \tag #'right { \clef treble <e' b gis>4 r }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b gis>4 r }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <gis e>4 r }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass r4 r8 }
  \tag #'left { \clef bass r4 r8 }
  \tag #'common { s4. }
  |

    }
    {
  \tag #'right { \clef treble <e' b gis>4 r }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b gis>4 r }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <gis e>4 r }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass R2 }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass e'4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' g'>4 r }
  \tag #'left { \clef bass e'4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'4 r }
  \tag #'left { \clef bass e'4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 }
  \tag #'left { \clef bass r4 r8 }
  \tag #'common { s4. }
  |

    }
  }

  \key c \major
  \repeat volta 2 {

  \tag #'right { \clef treble <c''' c''>8 }
  \tag #'left { \clef bass c'8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <g'' g'>4 r8 g'32 f' e' d' }
  \tag #'left { \clef bass g4 r8 g32 f e d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'4 r8 <c''' c''> }
  \tag #'left { \clef bass c4 r8 c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' a'>4 r8 a'32 g' f' e' }
  \tag #'left { \clef bass a4 r8 a32 g f e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d'4 r8 <f''' f''> }
  \tag #'left { \clef bass d4 r8 f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>4 <b'' b'> }
  \tag #'left { \clef bass d'4 b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>4 <f'' f'> }
  \tag #'left { \clef bass g4 f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' d'>4 <b' b> }
  \tag #'left { \clef bass d4 b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g' g>4 <g' g> }
  \tag #'left { \clef bass g,4 <g, g,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <aes' aes>16 ees' <c' aes> ees' <c' aes> ees' <c' aes> ees' }
  \tag #'left { \clef bass <aes, aes,,>4 r8 aes, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c' aes>16 ees' <c' aes> ees' <c' aes> ees' <c' aes> ees' }
  \tag #'left { \clef bass ees,4 r8 ees,32 des, c, bes,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <c' aes>16 ees' <c' aes> ees' <c' aes> ees' <c' aes> ees' \stemNeutral }
  \tag #'left { \clef bass aes,,4 r8 \change Staff = "right" \stemUp ees''' \tweak extra-offset #'(-2.3 . -1.5) ^\markup \right-align { \italic "m.s." } \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <c' aes>16 ees' <c' aes> ees' <c' aes> ees' <c' aes> ees' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp c'''4 aes'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <c' aes>16 ees' <c' aes> ees' <c' aes> ees' <c' aes> ees' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp ees''4 c'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <c' aes>16 ees' <c' aes> ees' <c' aes> ees' <c' aes> ees' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp bes'4 aes' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <des' bes>16 ees' <des' bes g> ees' <des' bes g> ees' <des' bes g> ees' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp g'4 r8 \stemNeutral \change Staff = "left" ees }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <des' bes g>16 ees' <des' bes g> ees' <des' bes g> ees' <des' bes g> ees' }
  \tag #'left { \clef bass bes,4 r8 bes,32 aes, g, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <des' bes g>16 ees' <des' bes g> ees' <des' bes g> ees' <des' bes g> ees' \stemNeutral }
  \tag #'left { \clef bass ees,4 r8 \change Staff = "right" \stemUp des''' \tweak extra-offset #'(-2.3 . -1.5) ^\markup \right-align { \italic "m.s." } \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <des' bes g>16 ees' <des' bes g> ees' <des' bes g> ees' <des' bes g> ees' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp bes''4 g'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <des' bes g>16 ees' <des' bes g> ees' <des' bes g> ees' <des' bes g> ees' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp des''4 bes' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <bes g>16 des' <bes g> des' <bes g> des' <bes g> des' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp g'4 f' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <bes g>16 c' <bes g> c' <bes g> c' <bes g> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp e'4 r8 \stemNeutral \change Staff = "left" c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes g>16 c' <bes g> c' <bes g> c' <bes g> c' }
  \tag #'left { \clef bass g,4 r8 g,32 f, e, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <bes g>16 c' <bes g> c' <bes g> c' <bes g> c' \stemNeutral }
  \tag #'left { \clef bass c,4 r8 \change Staff = "right" \stemUp bes'' \tweak extra-offset #'(-2.3 . -1.5) ^\markup \right-align { \italic "m.s." } \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <bes g>16 c' <bes g> c' <bes g> c' <bes g> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp g''4 e'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <bes g>16 c' <bes g> c' <bes g> c' <bes g> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp c''4 bes' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <bes g>16 c' <bes g> c' <bes g> c' <bes g> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp g'4 e' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <aes f>16 c' <aes f> c' <aes f> c' <aes f> c' \stemNeutral }
  \tag #'left { \clef bass <c aes, f, c,>4\arpeggio r8 \change Staff = "right" \stemUp c''' \tweak extra-offset #'(-1 . -0.3) ^\markup \right-align { \italic "m.s." } \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <aes f>16 c' <aes f> c' <aes f> c' <aes f> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp aes''4 f'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <aes f>16 c' <aes f> c' <aes f> c' <aes f> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp c''4 c'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <aes f>16 c' <aes f> c' <aes f> c' <aes f> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp aes'4 f' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <b aes f>16 d' <b aes f> d' <b aes f> d' <b aes f> d' \stemNeutral }
  \tag #'left { \clef bass <c aes, f, c,>4\arpeggio r8 \change Staff = "right" \stemUp f''' \tweak extra-offset #'(-1 . -0.3) ^\markup \right-align { \italic "m.s." } \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <b aes f>16 d' <b aes f> d' <b aes f> d' <b aes f> d' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp d'''4 b'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <b aes f>16 d' <b aes f> d' <b aes f> d' <b aes f> d' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp aes''4 f'' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <b aes f>16 d' <b aes f> d' <b aes f> d' <b aes f> d' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp d''4 b' \stemNeutral \change Staff = "left" }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \stemDown <g e>16 c' <g e> c' <g e> c' <g e> c' \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemUp c''4 \stemNeutral \change Staff = "left" c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g e>16 c' <g e> c' <g e> c' <g e> c' }
  \tag #'left { \clef bass g,4 e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' g e>4 r }
  \tag #'left { \clef bass <c c,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' g e>4 r }
  \tag #'left { \clef bass <c g, e, c,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <c' g e>4. \tuplet 3/2 { f16 a c' } }
  \tag #'left { \clef bass <c g, e, c,>4. r8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 g' a' bes' }
  \tag #'left { \clef bass <f c a, f,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''8 d'' e'' f'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c''4. bes'8 } { r8 e' f' g' } }
  \tag #'left { \clef bass r8 c d e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'8 r r4 } { c'8 s4. } }
  \tag #'left { \clef bass f8 f,[ a, bes,] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <c' e> <d' f> <e' g> }
  \tag #'left { \clef bass c4. bes,8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' a>8 c'[ f' a'] }
  \tag #'left { \clef bass a,8 c a, f, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c''4. bes'8 } { g'8 e' f' g' } }
  \tag #'left { \clef bass e,8 c, d, e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' c'>8 r <g' d' bes> r }
  \tag #'left { \clef bass f,8 a, bes, g, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' c' a>8 r <e' bes g> r }
  \tag #'left { \clef bass c8 b, c \tuplet 3/2 { f,16 a, c } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f' c' a>4 r }
  \tag #'left { \clef bass f8 g a bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass c'8 d' e' f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <c'' e'> <d'' f'> <e'' g'> }
  \tag #'left { \clef bass c'4. bes8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' a'>8 c''[ f'' a''] }
  \tag #'left { \clef bass a8 c' a f }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4. bes''8 } { g''8 e'' f'' g'' } }
  \tag #'left { \clef bass e8 c d e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''4 s } { f''4 r } }
  \tag #'left { \clef bass f8 a,[ d f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <cis'' a'> <d'' b'> <e'' cis''> }
  \tag #'left { \clef bass a4. g8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' d''>8 a'[ d'' f''] }
  \tag #'left { \clef bass f8 a f d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''4. g''8 } { e''8 cis'' d'' e'' } }
  \tag #'left { \clef bass cis8 a, b, cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' a'>8 r <e'' bes' g'> r }
  \tag #'left { \clef bass d8 f g e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' a' f'>8 r <cis'' a' e'> \tuplet 3/2 { d'16 f' a' } }
  \tag #'left { \clef bass a8 gis a r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''8 e'' f'' g''8 } { s4.  \grace { e'32 } s8 } }
  \tag #'left { \clef bass \split { r8 \tuplet 3/2 { d16 f a } d'8 } { r4 r8 \tuplet 3/2 { d,16 f, a, } } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''4 r8 \tuplet 3/2 { g'16 bes' d'' } } { \grace { f'32 } s8 g' a' s } }
  \tag #'left { \clef bass d8 e f r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''8 a'' bes'' c''' } { s4. \grace { a'32 } s8 } }
  \tag #'left { \clef bass \split { r8 \tuplet 3/2 { g16 bes d' } g'8 } { r4 r8 \tuplet 3/2 { g,16 bes, d } } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d'''4 r8 \tuplet 3/2 { c'16 e' g' } } {  \grace { bes'32 } s8 c'' d'' s } }
  \tag #'left { \clef bass g8 a bes r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c''8 d'' e'' f'' } { s4.  \grace { d'32 } s8 } }
  \tag #'left { \clef bass \split { r8 \tuplet 3/2 { c16 e g } c'8 } { r4 r8 \tuplet 3/2 { c,16 e, g, } } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { g''4 r8 \tuplet 3/2 { f'16 a' c'' } } { \grace { e'32 } s8 f' g' s } }
  \tag #'left { \clef bass c8 d e r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { f''8 g'' a'' bes'' } { s4. \grace { g'32 } s8 } }
  \tag #'left { \clef bass \split { r8 \tuplet 3/2 { f16 a c' } f'8 } { r4 r8 \tuplet 3/2 { f,16 a, c } } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { c'''4 r8 c''' } { \grace { a'32 } s8 bes' c'' r } }
  \tag #'left { \clef bass f8 g a r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4 r8 e'' } { bes'8 c'' des'' r } }
  \tag #'left { \clef treble g'8 a' bes' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { f''4 r8 f'' } { c''8 bes' a' r } }
  \tag #'left { \clef treble a'8 g' f' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''4 r8 \tuplet 3/2 { d'16 f' a' } } { g'8 a' bes' s } }
  \tag #'left { \clef treble e'8 f' g' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''8 e'' f'' g'' } { s4. \grace { e'32 } s8 } }
  \tag #'left { \clef bass \split { r8 \tuplet 3/2 { d16 f a } d'8 } { r4 r8 \tuplet 3/2 { d,16 f, a, } } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''4 r8 a'' } { \grace { f'32 } s8 g' a' r } }
  \tag #'left { \clef bass d8 e f r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''4 r8 cis'' } { g'8 a' bes' r } }
  \tag #'left { \clef treble e'8 f' g' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''4 r8 d'' } { a'8 g' f' r } }
  \tag #'left { \clef treble f'8 e' d' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'4 r8 \tuplet 3/2 { a16 c' e' } } { f'8 e' d' s } }
  \tag #'left { \clef treble d'8 c' b r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'8 b' c'' d'' } {s4. \grace { b32 } s8} }
  \tag #'left { \clef bass \split { r8 \tuplet 3/2 { a,16 c e } a8 s } { r4 r8 \tuplet 3/2 { a,,16 c, e, } } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4 r8 e'' } { \grace { c'32 } s8 d' e' r } }
  \tag #'left { \clef bass a,8 b, c r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'4 r8 gis' } { d'8 e' f' r } }
  \tag #'left { \clef bass b8 c' d' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'4 r8 a' } { e'8 d' c' r } }
  \tag #'left { \clef bass c'8 b a r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { dis'4 r8 dis' } { c'8 b a s } }
  \tag #'left { \clef bass a8 gis fis r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' gis>4. <fis' e' a>8 }
  \tag #'left { \clef bass r8 \tuplet 3/2 { e,16 gis, b, } e4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis' e' b>8 <a' e' c'> <b' e' d'> <gis' e' b> }
  \tag #'left { \clef bass e2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' e' c'>4 r8 <c'' e'> }
  \tag #'left { \clef bass r8 \tuplet 3/2 { e,16 a, c } e4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' e' d'>8 <a' e' c'> <gis' e' b> <fis' e' a> }
  \tag #'left { \clef bass e2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' gis>4 r8 <fis' e' a> }
  \tag #'left { \clef bass r8 \tuplet 3/2 { e,16 gis, b, } e4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis' e' b>8 <a' e' c'> <b' e' d'> <gis' e' b> }
  \tag #'left { \clef bass e2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' e' c'>4 r8 <c'' e'> }
  \tag #'left { \clef bass r8 \tuplet 3/2 { e,16 a, c } e4~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' e' d'>8 <a' e' c'> <gis' e' b> <fis' e' a> }
  \tag #'left { \clef bass e2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'~ b~ gis~>2 }
  \tag #'left { \clef bass r8 e, gis, b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' b gis>2 }
  \tag #'left { \clef bass cis8 dis e e, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'~ fis'~ d'~ a~>2 }
  \tag #'left { \clef bass r8 fis, a, cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' fis' d' a>2 }
  \tag #'left { \clef bass d8 e fis fis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''~ b'~ gis'~ e'~ d'~>2 }
  \tag #'left { \clef bass r8 gis, b, dis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' b' gis' e' d'>2 }
  \tag #'left { \clef bass e8 fis gis a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' d'>8 <e' d'> <e' d'> <e' d'> }
  \tag #'left { \clef bass b8 a gis fis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { d''8 cis'' b' a' } { <e' d'>8 <e' d'> <e' d'> <e' d'> } }
  \tag #'left { \clef bass e4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'4 r } { <e' d'>8 <e' d'> <e' d'> <e' d'> } }
  \tag #'left { \clef bass e8 fis gis a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'8 a' b' cis'' } { <e' d'>8 <e' d'> <e' d'> <e' d'> } }
  \tag #'left { \clef bass b4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' b' e' d'>8 r r4 }
  \tag #'left { \clef bass <gis e>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <cis'' a' cis'>8 r r4 }
  \tag #'left { \clef bass <a fis>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' a' fis'>8 r r4 }
  \tag #'left { \clef bass <b d>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis' d'>8 r r4 }
  \tag #'left { \clef bass <b e>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4.\fermata }
  \tag #'left { \clef bass r4.\fermata }
  \tag #'common { s4. }
  |

  \key a \major
  \partial 8
  \tag #'right { \clef treble <a'' a'>8 }
  \tag #'left { \clef bass a8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <e'' e'>4 r8 e'32 d' cis' b }
  \tag #'left { \clef bass e4 r8 e32 d cis b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a4 r8 <a'' a'> }
  \tag #'left { \clef bass a,4 r8 a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' fis'>4 r8 fis'32 e' d' cis' }
  \tag #'left { \clef bass fis4 r8 fis32 e d cis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b4 r8 <d''' d''> }
  \tag #'left { \clef bass b,4 r8 d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b'' b'>4 <gis'' gis'> }
  \tag #'left { \clef bass b4 gis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>4 <d'' d'> }
  \tag #'left { \clef bass e4 d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' b>4 <gis' gis> }
  \tag #'left { \clef bass b,4 gis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' e>4 r8 \tuplet 3/2 { a16 cis' e' } }
  \tag #'left { \clef bass e,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 b' cis'' d'' }
  \tag #'left { \clef bass <a e cis a,>4\arpeggio r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 fis'' gis'' a'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4. d''8 } { r8 gis' a' b' } }
  \tag #'left { \clef bass r8 e fis gis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <cis'' e'>8 r r4 }
  \tag #'left { \clef bass a8 a,[ cis d] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <e' gis> <fis' a> <gis' b> }
  \tag #'left { \clef bass e4. d8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a' cis'>8 e'[ a' cis''] }
  \tag #'left { \clef bass cis8 e cis a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e''4. d''8 } { b'8 gis' a' b' } }
  \tag #'left { \clef bass gis,8 e, fis, gis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''8 b' a' b' } { e'4. dis'8 } }
  \tag #'left { \clef bass a,8 gis, fis, b, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'8 e' a' b' } { b4 <dis' a> } }
  \tag #'left { \clef bass \split { e8 b, fis b, } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'8 e' a' b' } { b4 <dis' a> } }
  \tag #'left { \clef bass \split { e8 b, fis b, } { e,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'4 r } { <e' b>4 s } }
  \tag #'left { \clef bass <e e,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { r8 e' g' a' } { s4 <cis' g> } }
  \tag #'left { \clef bass \split { r4 e8 a, } { s4 e, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'8 d' g' a' } { a4 <cis' g> } }
  \tag #'left { \clef bass \split { d8 a, e a, } { d,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'8 d' g' a' } { a4 <cis' g> } }
  \tag #'left { \clef bass \split { d8 a, e a, } { d,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'4 r } { <d' a>4 s } }
  \tag #'left { \clef bass <d d,>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { r8 a' d'' e'' } { s4 <gis' d'> } }
  \tag #'left { \clef bass \split { r4 b8 e } { s4 b, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''8 a' d'' e'' } { e'4 <gis' d'> } }
  \tag #'left { \clef bass \split { a8 e b e } { a,4 b, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''8 a' d'' e'' } { e'4 <gis' d'> } }
  \tag #'left { \clef bass \split { a8 e b e } { a,4 b, } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { cis''4 s } { <a' e'>4 r8 \tuplet 3/2 { e'16 fis' gis' } } }
  \tag #'left { \clef bass \tuplet 3/2 { a,16 cis d } \tuplet 3/2 { e16 fis gis } \tuplet 3/2 { a16 cis' d' } s8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 gis' fis' e' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 gis' a' } \tuplet 3/2 { b'16 cis'' d'' } \tuplet 3/2 { e''16 gis'' a'' } \tuplet 3/2 { b''16 cis''' d''' } }
  \tag #'left { \clef bass d'8 cis' b a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'''8 d''' cis''' b'' }
  \tag #'left { \clef bass gis8 e fis gis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''4 r8 \tuplet 3/2 { e'16 fis' gis' } }
  \tag #'left { \clef bass \tuplet 3/2 { a,16 cis d } \tuplet 3/2 { e16 fis gis } \tuplet 3/2 { a16 cis' d' } s8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'8 gis' fis' e' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 gis' a' } \tuplet 3/2 { b'16 cis'' d'' } \tuplet 3/2 { e''16 gis'' a'' } \tuplet 3/2 { b''16 cis''' d''' } }
  \tag #'left { \clef bass d'8 cis' b a }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'''8 d''' cis''' b'' }
  \tag #'left { \clef bass gis8 fis e d }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 gis'' fis'' e'' }
  \tag #'left { \clef bass cis8 b, a, gis, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis''8 cis'' b' a' }
  \tag #'left { \clef bass fis,8 e, dis, b,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { gis'4 gis' } { gis'8 fis' e' d' } }
  \tag #'left { \clef bass e,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'4 dis' } { cis'8 b a b } }
  \tag #'left { \clef bass e,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { e'4 gis } { gis8 fis e d } }
  \tag #'left { \clef bass e,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { a4 dis } { cis8 b, a, b, } }
  \tag #'left { \clef bass e,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <e gis,>4 r }
  \tag #'left { \clef bass e,8 gis, b, dis }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass r2 }
  \tag #'left { \clef bass e8 gis b dis' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 e' }
  \tag #'left { \clef bass e'8 dis' e' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 e' b' gis' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 e' }
  \tag #'left { \clef bass d'8 cis' d' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 e' b' gis' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 e' }
  \tag #'left { \clef bass c'8 b c' r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f'8 e' c'' a' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef treble \splitThree { r4 d'~ } { r8 b4~ e'8 } { gis2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis'8 b' d'' e'' }
  \tag #'left { \clef treble \split { f'2~ } { <d' b gis>2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''8 e'' g'' f'' }
  \tag #'left { \clef treble \split { f'2 } { <d' b~ gis~>2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''8 d'' c'' b' }
  \tag #'left { \clef treble \split { e'4 d' } { <b gis>2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a'4 r8 a'' }
  \tag #'left { \clef treble <c' a>16 e' <c' a> e' <c' a> e' <c' a> e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis''8 a'' c''' a'' }
  \tag #'left { \clef treble <c' a>16 e' <c' a> e' <c' a> e' <c' a> e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8. b''32 a'' gis''4~ }
  \tag #'left { \clef treble <d' b>16 e' <d' b> f' <d' b> f' <d' b> f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis''4 g'' }
  \tag #'left { \clef treble <d' b>16 f' <d' b> f' <d' b> f' <d' b> f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''4 r8 c''' }
  \tag #'left { \clef treble <e' c'>16 f' <e' c'> g' <e' c'> g' <e' c'> g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''8 c''' e''' c''' }
  \tag #'left { \clef treble <e' c'>16 g' <e' c'> g' <e' c'> g' <e' c'> g' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8. d'''32 c''' b''4~ }
  \tag #'left { \clef treble <f' d'>16 g' <f' d'> aes' <f' d'> aes' <f' d'> aes' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''4 bes'' }
  \tag #'left { \clef treble <f' d'>16 aes' <f' d'> aes' <f' d'> aes' <f' d'> aes' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''4 r8 ees'' }
  \tag #'left { \clef treble ees'16[ g'] \clef bass <g ees> bes <g ees> bes <g ees> bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 ees'' g'' ees'' }
  \tag #'left { \clef bass <g ees>16 bes <g ees> bes <g ees> bes <g ees> bes }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ees''8. f''32 ees'' <d''~ d'~>4 }
  \tag #'left { \clef bass <aes f>16 bes <aes f> b <aes f> b <aes f> b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d'' d'>4 d'' }
  \tag #'left { \clef bass <a fis>16 b <a fis> c' <a fis> c' <a fis> c' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #6 #'(-0.5 . 0) \markup \natural \markup \sharp d''4 <f''~ f'~> }
  \tag #'left { \clef bass <b g>16 c' <b g> d' <b g> d' <b g> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' f'>4 <e'' e'> }
  \tag #'left { \clef bass <b gis>16 d' <b gis> d' <b gis> d' <b gis> d' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #6 #'(0 . 0) \markup \sharp \markup \sharp e''4 <g''~ g'~> }
  \tag #'left { \clef bass <cis' a>16 d' <cis' a> e' <cis' a> e' <cis' a> e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>4 <fis''! fis'!> }
  \tag #'left { \clef bass <cis' ais>16 e' <cis' ais> e' <cis' ais> e' <cis' ais> e' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 8 #6 #'(0 . 0) \markup \sharp \markup \sharp fis''4 <a''~ a'~> }
  \tag #'left { \clef bass <d' b>16 e' <d' b> e' <d' b> f' <d' b> f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <a'' a'>4 <gis''! gis'!> }
  \tag #'left { \clef bass <d' b>16 f' <d' b> f' <d' b> f' <d' b> f' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis'' gis'>4 r8 f'32 e' d' c' }
  \tag #'left { \clef bass <d' b>4 r8 f32 e d c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b4 r8 <a'' a'> }
  \tag #'left { \clef bass b,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <gis'' gis'>4 r8 f'32 e' d' c' }
  \tag #'left { \clef bass r4 r8 f32 e d c }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b4 r8 a'' }
  \tag #'left { \clef bass b,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis''4 r8 a'' }
  \tag #'left { \clef bass r4 <f' d' b> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis''4 r8 a'' }
  \tag #'left { \clef bass r4 <f' d' b> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis''4 r }
  \tag #'left { \clef bass r4 <f' d' b> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 r8 e'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { a'16 a'' a' } \tuplet 3/2 { e'16 e'' e' } \tuplet 3/2 { c'16 cis'' cis' } }
  \tag #'left { \clef bass <cis' a e cis>4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { a16 a' a } \tuplet 3/2 { e16 e' e } \tuplet 3/2 { cis16 cis' cis } \tuplet 3/2 { a,16 a a, } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b a>2 }
  \tag #'left { \clef bass <dis fis,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <e' gis>2 }
  \tag #'left { \clef bass <d e,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass r8 \tuplet 3/2 { e16 e' e } \tuplet 3/2 { a16 a' a } \clef treble \tuplet 3/2 { cis'16 cis'' cis' } }
  \tag #'left { \clef bass <cis a,>4 s }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 e'' e' } \tuplet 3/2 { a'16 a'' a' } \tuplet 3/2 { cis''16 cis''' cis'' } \tuplet 3/2 { e''16 e''' e'' } }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <dis''' b'' a'' dis''>2 }
  \tag #'left { \clef treble <a' fis'>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e''' b'' gis'' d''>2 }
  \tag #'left { \clef treble <gis' e'>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <a'' cis''>8 r \tuplet 3/2 { r16 cis'' d'' } \tuplet 3/2 { e''16 fis'' gis'' } } { s8 \tuplet 3/2 { e'16 fis' gis' } a' r } }
  \tag #'left { \clef bass \tuplet 3/2 { a16 cis' d' } r8 r4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 gis'' fis'' e'' }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 cis'' b' a' }
  \tag #'left { \clef bass \tuplet 3/2 { e,16 gis, a, } \tuplet 3/2 { b,16 cis d } \tuplet 3/2 { e16 gis a } \tuplet 3/2 { b16 cis' d' } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis'8 r r4 }
  \tag #'left { \clef bass e'8 d' cis' b }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a8 r r4 }
  \tag #'left { \clef bass \tuplet 3/2 { a,,16 cis, d, } \tuplet 3/2 { e,16 fis, gis, } \tuplet 3/2 { a,16 cis d } \tuplet 3/2 { e16 fis gis } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble R2 }
  \tag #'left { \clef bass a8 gis fis e }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \tuplet 3/2 { e'16 gis' a' } \tuplet 3/2 { b'16 cis'' d'' } \tuplet 3/2 { e''16 gis'' a'' } \tuplet 3/2 { b''16 cis''' d''' } }
  \tag #'left { \clef bass d8 cis b, a, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e'''8 d''' cis''' b'' }
  \tag #'left { \clef bass gis,8 fis, e, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble a''8 gis'' fis'' e'' }
  \tag #'left { \clef bass cis,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8 cis'' b' a' }
  \tag #'left { \clef bass cis,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble gis'8 fis' e' d' }
  \tag #'left { \clef bass d,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble cis'8 b a gis }
  \tag #'left { \clef bass e,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { a2 } { a,8 b, cis d } }
  \tag #'left { \clef bass a,,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { d'2 } { e8 fis g gis } }
  \tag #'left { \clef bass a,,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <cis' a e>2 }
  \tag #'left { \clef bass \split { a,,8 b,, cis, d, } { a,,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b e d>2 }
  \tag #'left { \clef bass \split { e,8 fis, g, gis, } { a,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { a2 } { cis8 b, cis d } }
  \tag #'left { \clef bass <a, a,,~>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass \split { d'2 } { e8 fis g gis } }
  \tag #'left { \clef bass \split { gis,4 b, } { a,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <cis' a e>2 }
  \tag #'left { \clef bass \split { a,,8 b,, cis, d, } { a,,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <b e d>2 }
  \tag #'left { \clef bass \split { e,8 fis, g, gis, } { a,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <a e cis>4 r }
  \tag #'left { \clef bass <a, a,,>8 fis, e, d, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <a e cis>4 <a e cis> }
  \tag #'left { \clef bass cis,8 d, cis, b,, }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <a e cis>4 r }
  \tag #'left { \clef bass a,,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <e cis>4 r }
  \tag #'left { \clef bass a,,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <cis a,>4 r }
  \tag #'left { \clef bass a,,4 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass r4.\fermata }
  \tag #'left { \clef bass r4.\fermata }
  \tag #'common { s4. }
  |

  }
}

secondMovement = {
  \mark \markup { \bold "Largo appassionato" }
  \tempo 4 = 52
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 3/4
    \set Timing.baseMoment = #(ly:make-moment 1/8)
    \set Timing.beatStructure = #'(6)
    \set Timing.beamExceptions = \beamExceptions {
      16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] |
    }
  \key d \major
  \accidentalStyle default

  \tag #'right { \clef treble <fis' a>4 <fis' a> <fis' a> }
  \tag #'left { \clef bass \split { d4 d d } { d,16[ r e,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a>4 <fis' a>2 }
  \tag #'left { \clef bass \split { cis4 d2 } { g,16[ r a,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' a>2 <fis' a>4 }
  \tag #'left { \clef bass \split { e2 d4 } { cis,16[ r a,] r b,[ r cis] r d[ r gis,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a>8 r r4 r }
  \tag #'left { \clef bass <cis a,>8\noBeam \split { a,8\noBeam \tweak extra-offset #'(0 . 1) ~ a,2 } { a,8[ \tweak Accidental.extra-offset #'(0 . -0.15) gis, g, fis, e,] } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>4 <fis' a> <fis' a>8. b'16 }
  \tag #'left { \clef bass \split { d4 d d8. g16 } { d,16[ r e,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'2 a'8 g' } { b8 cis' d' e' fis' cis' } }
  \tag #'left { \clef bass \split { g2 fis8 g } { g,8 a, b, cis d e } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' d'>8 <e' b> d'4 \turnInside 8 #1 #'(0 . 0) cis' }
  \tag #'left { \clef bass \split { s4 fis8 a g a } { <a fis>8 <g g,> a,4 <e a,~> } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a~ g>4 <d' a fis>8 e'[ fis' gis'] }
  \tag #'left { \clef bass \split { a,8 b,16 cis d8 } { d,4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'2 \afterGrace gis'4\trill { fis'16 gis' } }
  \tag #'left { \clef bass \split { r8 e' cis' e' d' e' } { r4 a b } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 e' cis' e' <d' b> e' }
  \tag #'left { \clef bass \split { cis'8 s4. } { a2 } \grace { fis16 gis } \afterGrace gis!4\trill { fis16 gis } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'2 \afterGrace gis'4\trill { fis'16 gis' } } { cis'8 e' a e' b e' } }
  \tag #'left { \clef bass a8 e cis e d e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'4 gis' g' } { a8 cis' d' a e' a } }
  \tag #'left { \clef bass cis8 a, b,4 cis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>4 <fis' a> <fis' a> }
  \tag #'left { \clef bass \split { d4 d d } { d,16[ r e,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a>4 <fis' a>2 }
  \tag #'left { \clef bass \split { cis4 d2 } { g,16[ r a,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' b>4 <g' b>2 }
  \tag #'left { \clef bass \split { dis4 e2 } { a,16[ r b,] r g,[ r fis,] r g,[ r e,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { s4 <b'^~ b_~>2 } { <a' fis' d' a>4 d' g'^\laissezVibrer } }
  \tag #'left { \clef bass \split { fis4 g4. fis8 } { c16[ r d] r b,[ r a,] r g,[ r fis,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <b' g' b>4 cis''8 d'' <e'' cis'' e'>4 } { \once \override NoteColumn.force-hshift = #-0.6 e'4 <a' e' cis'>8[ <g' d'>] \once \override NoteColumn.force-hshift = #-0.3 g' a' } }
  \tag #'left { \clef bass <e e,>8 <d d,> <cis cis,> <b, b,,> <a, a,,> <g, g,,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis''8 e'' d''4 \turnInside 8. #3 #'(0 . 0) cis'' } { <d'' a'>8[ <b' g'>] fis' a' e' g' } }
  \tag #'left { \clef bass <fis, fis,,>8 <g, g,,> <a, a,,>4 <a,^~ a,,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <e'' g'>4 <d'' fis'>8 fis'[ d'' b'] } { s2 s8 fis' } }
  \tag #'left { \clef bass \split { a,8 b,16 cis d8 } { d,4. } r8 r <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ais'8[ cis'' b'] } { fis'4 s8 } fis'16[ fis''] e'' d'' cis'' b' }
  \tag #'left { \clef bass <e' cis'>4 <fis' d'>8 r r <d' b> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 16 #4.5 #'(0 . 0) ##f \markup \sharp ais'8 cis''16 b' b'8 fis'16[ fis''] e'' d'' cis'' b' }
  \tag #'left { \clef bass <e' cis'>4 <fis' d'>8 r r <fis d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'!16 gis'\turn a' cis'' fis'4 eis' } { s4 r8 cis' b cis' } }
  \tag #'left { \clef bass \split { fis8 a r a gis4 } { cis4 cis cis } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>8 r r4 r8 <cis'' cis'> }
  \tag #'left { \clef bass \split { fis8 cis[ d cis a fis] } { fis,8 r r4 r8 a, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <cis'' cis'>4. r8 r <cis'' cis'> }
  \tag #'left { \clef bass \split { eis8 gis fis16 cis a gis b a gis fis } { gis,8 b, a, r r a, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <cis'' cis'>4. r8 r4 }
  \tag #'left { \clef bass \split { eis8 gis fis16 cis a gis b a gis fis } { gis,8 b, a, r r a, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r8 d' d''[ b' a' g'] } { r8 d' d'[ d' d' d'] } }
  \tag #'left { \clef bass <fis b,>8[ <g! b,>] <g b,>[ <g b,> <g b,> <g b,>] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g'8. fis'16 fis'2 } { d'8 d' d' d' d' d' } }
  \tag #'left { \clef bass <a c>8 <a c> <a c> <a c> <a c> <a c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g'16[ a' b' c''] d''[ cis'' e'' d''] d''[ c''32 b'] b'16[ a'32 g'] } { d'8 d' d' d' d' d' } }
  \tag #'left { \clef bass <g d b,>8 <g d b,> <g d b,> <g d b,> <g d b,> <g d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { \grace { fis'32 g' a' } g'8. fis'16 fis'4. fis'8 } { d'8 d' dis' dis' dis' dis' } }
  \tag #'left { \clef bass <a c>8 <a c> <a c> <a c> <a dis b,> <a dis b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'8. g'16 g'4. g'8 } { dis'8 dis' e' e' <e' d'> <e' d'> } }
  \tag #'left { \clef bass <a dis b,>8 <a dis b,> <g e b,> <g e b,> <g d bes,> <g d bes,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' e' cis' a g>8 e' cis' a g e }
  \tag #'left { \clef bass <a,~ a,,~>2 <a, a,,>8 b,!16 cis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>4 <fis' a> <fis' a> }
  \tag #'left { \clef bass \split { d4 d d } { d,16[ r e,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a>4 <fis' a>2 }
  \tag #'left { \clef bass \split { cis4 d2 } { g,16[ r a,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' a>2 <fis' a>4 }
  \tag #'left { \clef bass \split { e2 d4 } { cis,16[ r a,] r b,[ r cis] r d[ r gis,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a>8 r r cis' d' e' }
  \tag #'left { \clef bass <cis a,>8\noBeam \split { a,8\noBeam \tweak extra-offset #'(0 . 1) ~ a,2 } { a,8[ \tweak Accidental.extra-offset #'(0 . -0.15) gis, g, fis, e,] } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>4 <fis' a> <fis' a>8. b'16 }
  \tag #'left { \clef bass \split { d4 d d8. g16 } { d,16[ r e,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'2 a'8 g' } { b8 cis' d' e' fis' cis' } }
  \tag #'left { \clef bass \split { g2 fis8 g } { g,8 a, b, cis d e } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' d'>8 <e' b> d'4 \turnInside 8 #1 #'(0 . 0) cis' }
  \tag #'left { \clef bass \split { s4 fis8 a g a } { <a fis>8 <g g,> a,4 <e a,~> } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a~ g>4 <d' a fis>8 r r4 }
  \tag #'left { \clef bass \split { a,8 b,16 cis d8 e fis gis } { d,4. r8 r4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 e' cis' e' <d' b> e' }
  \tag #'left { \clef bass a2 \grace { fis16 gis } \afterGrace gis!4\trill { fis16 gis } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'2 \afterGrace gis'4\trill { fis'16 gis' } } { cis'8 e' cis' e' b e' } }
  \tag #'left { \clef bass a4 e d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'8 } { cis'8 } <e' e>8[ <cis' a> <e' e> <d' b> <e' e>] }
  \tag #'left { \clef bass \split { cis8 s s2 } { a,2 \grace { fis,16 gis, } \afterGrace gis,4\trill { fis,16 gis, } } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { cis'8 a'4 gis' g'8 } { cis'8 a d' a e' a } }
  \tag #'left { \clef bass \split { a,2. } { a,8 a,, b,,4 cis, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>4 <fis' a> <fis' a> }
  \tag #'left { \clef bass \split { d4 d d } { d,16[ r e,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' a>4 <fis' a>2 }
  \tag #'left { \clef bass \split { cis4 d2 } { g,16[ r a,] r fis,[ r e,] r fis,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' b>4 <g' b>2 }
  \tag #'left { \clef bass \split { dis4 e2 } { a,16[ r b,] r g,[ r fis,] r g,[ r e,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { s4 <b'^~ b_~>2 } { <a' fis' d' a>4 d' g'^\laissezVibrer } }
  \tag #'left { \clef bass \split { fis4 g4. fis8 } { c16[ r d] r b,[ r a,] r g,[ r fis,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <b' g' b>4 cis''8 d'' <e'' cis'' e'>4 } { \once \override NoteColumn.force-hshift = #-0.6 e'4 <a' e' cis'>8[ <g' d'>] \once \override NoteColumn.force-hshift = #-0.3 g' a' } }
  \tag #'left { \clef bass <e e,>8 <d d,> <cis cis,> <b, b,,> <a, a,,> <g, g,,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis''8 e'' d''4 \afterGrace cis''\trill { b'16 cis'' } } { <d'' a'>8[ <b' g'>] fis' a' e' g' } }
  \tag #'left { \clef bass <fis, fis,,>8 <g, g,,> <a, a,,>4 <a, a,,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d''8 d''[ cis'' d'' b' d''] } { fis'4 r g' } }
  \tag #'left { \clef bass <d d,>4 r s }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4. b'16 a' a' g' fis' g' }
  \tag #'left { \clef bass fis'8 d' cis' d' b d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble  <fis' a~>4 a16 ais b a a g fis g }
  \tag #'left { \clef bass r8 d cis d b, d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d'8 g'~ g' fis' e' a' } { s8 b cis' d'~ d' cis' } }
  \tag #'left { \clef bass \split { fis8 e4 fis8 g4 } { a,8 g, a,2 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'16 d''[ cis'' d''] e'' d'' b' d'' a' d'' gis' d'' }
  \tag #'left { \clef bass <fis d>4 r8 \clef treble g' fis' eis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4. g'8 fis' eis' }
  \tag #'left { \clef treble fis'16 d' cis' d' e' d' b d' a d' gis d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' a>4 r8 <g' d' g> <fis' d' a> <b' d' b> }
  \tag #'left { \clef bass r16 d cis d e d b, d a, d g, e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' d' a>8 <g' e' b> <fis' d'>4 <e' cis'> }
  \tag #'left { \clef bass fis,16 fis g, g a,8 a a, g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' d' a f>4 <f' d' a f> <f' d' a f> }
  \tag #'left { \clef bass \split { d4 d d } { d,16[ r e,] r f,[ r e,] r f,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' cis' a e>4 <f' d' a f>2 }
  \tag #'left { \clef bass \split { cis4 d2 } { g,16[ r a,] r f,[ r e,] r f,[ r d,] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' ees' c' a f>4 <f' ees' c' a f> <f' ees' c' a f> }
  \tag #'left { \clef bass <ees ees,>8[ <d d,>] <c c,>[ <bes, bes,,>] <a, a,,>[ <f, f,,>] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' d' bes f>2 <d'' bes' f' d'>4 }
  \tag #'left { \clef bass \split { bes,2 bes,4 } { <bes, bes,,>8 <c c,>[ <d d,> <ees ees,>] <f f,> <g g,>16 <a a,> } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' bes' f' d'>2 <d''' f'' d''>4 }
  \tag #'left { \clef bass \split { bes2 bes4 } { <bes bes,>8[ <c' c> <d' d> <ees' ees>] <f' f> <g' g>16 <a' a> } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' f'' d''>2 <f'' d''>4 }
  \tag #'left { \clef treble <bes' bes>8 <a' a> <bes' bes> <a' a> <gis' gis> <gis' gis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' cis''>4 r8 <g''! e''> <e'' cis''> <d'' b'!> }
  \tag #'left { \clef treble \split { a'8 gis' a'2 } { a2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <cis'' a'>4 r8 <b'' g''> <g'' e''> <fis''! d''> }
  \tag #'left { \clef bass r8 gis a2 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' cis''>4 r8 <e''' b'' g''> <cis''' g'' e''> <b'' fis'' d''> }
  \tag #'left { \clef bass \split { r4 r r8 a } { r8 gis, a,2~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a'' e'' cis''>8 <g'' d'' b'> <fis'' cis'' a'> <e'' b'> <d'' a'> <e'' cis'' g'> }
  \tag #'left { \clef bass \split { a8[ a a] } { a,4. } <g' a>8[ <fis' a> <e' a>] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis''4 fis'' fis'' } { a'16 a' gis' a' a' a' gis' a' a' a' gis' a' } }
  \tag #'left { \clef bass \split { d'4 d' d' } { d16[ r e] r fis[ r e] r fis[ r d] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { e''4 fis''2 } { a'16 a' gis' a' a' a' gis' a' a' a' gis' a' } }
  \tag #'left { \clef bass \split { cis'4 d'2 } { g16[ r a] r fis[ r e] r fis[ r d] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g''2 fis''4 } { a'16 a' gis' a' a' a' gis' a' a' a' gis' a' } }
  \tag #'left { \clef bass \split { e'2 fis'4 } { cis16[ r a] r b[ r cis'] r d'[ r gis] r } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { e''8 r r4 r } { a'16 a' gis' a' gis' a' b' a' a' g' fis' e' } }
  \tag #'left { \clef bass <e' cis' a>8 r r4 r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'4 a' ais' } { d'16 d' cis' d' d' d' cis' d' d' d' cis' d' } }
  \tag #'left { \clef bass \split { d4 d d } { fis,8 eis, fis, eis, fis, d, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'2 a'!8 g' } { d'16 d' cis' d' d' d' e' e' fis' a cis' a } }
  \tag #'left { \clef bass \split { d4 s s } { g,8 a, <g b,> <g cis> <fis d> <g e> } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { fis'8 e' d'4 cis' } { d'16 a b g s4 s } }
  \tag #'left { \clef bass \split { s4 fis16 a a a g a a a } { <fis fis,>8 g, a,4 <e a,> } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' a fis>4 r \split { g'8. a'16 } { <e' cis'>4 } }
  \tag #'left { \clef bass \split { r8 d cis b, a,4~ } { d,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' d' a>8 r r4 \split { e'8. fis'16 } { <cis' g>4 } }
  \tag #'left { \clef bass \split { a,2.~ } { d,8 d, cis, b,, a,,4~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' a fis>8 r r4 \split { g'16 b' a' g' } { <e' cis'>4 } }
  \tag #'left { \clef bass <a, a,,>8 d16 cis e d cis b, a,4~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' d' a>8 r r4 \split { e'16 g' fis' e' } { <cis' g>4 } }
  \tag #'left { \clef bass \split { a,2. } { a,8 d,16 cis, e, d, cis, b,, a,,4~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d'2 d'4 } { fis4. a8 fis[ a] } }
  \tag #'left { \clef bass a,,8 b,,16 cis, d,4 d, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' a fis>2. }
  \tag #'left { \clef bass <d a, d,>2. }
  \tag #'common { s2. }
  |
  
  \bar "|."

}

thirdMovement = {

  \mark \markup { \bold "Scherzo. Allegretto" }
  \tempo 4 = 144
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 3/4
  \key a \major
  \accidentalStyle default

  \repeat volta 2 {

  \partial 4
  \tag #'right { \clef treble a''16 e'' cis''' a'' }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble e'''4 r cis''16 a' e'' cis'' }
  \tag #'left { \clef bass r4 <e' cis' a> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''4 r cis'16 a e' cis' }
  \tag #'left { \clef bass r4 <a e cis a,> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4 <a' dis' b> <a' fis' b> }
  \tag #'left { \clef bass a4 fis dis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <a' fis'>4 <gis' e'> s } { b2 gis''16 e'' b'' gis'' } }
  \tag #'left { \clef bass e4 e, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 r gis'16 e' b' gis' }
  \tag #'left { \clef bass r4 <d' b gis e> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 r d'16 b e' d' }
  \tag #'left { \clef bass r4 <e b, gis, e,> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble gis'4 <gis' d'> <gis' d'> }
  \tag #'left { \clef bass r4 <b e> <b e> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b' d'>4 <a' cis'> }
  \tag #'left { \clef bass \split { gis4 a } { a,2 } }
  \tag #'common { s2 }

  }

  \repeat volta 2 {

  \tag #'right { \clef treble r4 }
  \tag #'left { \clef bass gis16 e b gis }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble r4 <e'' b' gis'> r }
  \tag #'left { \clef bass e'4 r gis16 d b gis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <fis'' b' fis'> r }
  \tag #'left { \clef bass d'4 r eis16 cis gis eis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <gis'' eis'' b' gis'> r }
  \tag #'left { \clef bass cis'4 r cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <eis'' b' gis'>4 <fis'' a'> r }
  \tag #'left { \clef bass cis'4 fis a16 fis cis' a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <fis'' cis'' a'> r }
  \tag #'left { \clef bass fis'4 r gis16 e cis' gis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <gis'' cis'' gis'> r }
  \tag #'left { \clef bass e'4 r fisis16 dis ais fisis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <ais'' fisis'' cis'' ais'> r }
  \tag #'left { \clef bass dis'4 r dis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fisis'' cis'' ais'>4 <gis'' b'> r }
  \tag #'left { \clef bass dis'4 gis r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <dis'' gis'>4 <e'' gis'> r }
  \tag #'left { \clef bass b4 cis' r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <gis' dis'> <fisis' cis'> }
  \tag #'left { \clef bass r4 <b dis> <ais dis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <gis' b>4 dis'' dis'' }
  \tag #'left { \clef bass <gis gis,>8 dis' b dis' gis dis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''2 fisis'4 }
  \tag #'left { \clef bass ais8 dis' cis' dis' ais dis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble gis'4 ais' b' }
  \tag #'left { \clef bass b8 dis' ais cis' gis b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura b'8 ais'4 gis' \afterGrace fisis'\trill { eis'16 fisis' } }
  \tag #'left { \clef bass cis8 cis' dis b dis ais }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble gis'4 dis'' dis'' }
  \tag #'left { \clef bass gis8 dis' b dis' gis dis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble dis''2 fisis'4 }
  \tag #'left { \clef bass ais8 dis' cis' dis' ais dis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 dis'' dis'' } { gis'2. } }
  \tag #'left { \clef bass <dis' b>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { dis''2. } { r4 a'! a' } }
  \tag #'left { \clef bass <fis' b>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 d''! d'' } { gis'2. } }
  \tag #'left { \clef bass <e' b e>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { cis''2. } { r4 g' g' } }
  \tag #'left { \clef bass <e' a>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 d'' d'' } { fis'2. } }
  \tag #'left { \clef bass <d' a d>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 d'' d'' } { <gis'! d'>2. } }
  \tag #'left { \clef bass <b e b,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r a''16 e'' cis''' a'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'''4 r cis''16 a' e'' cis'' }
  \tag #'left { \clef bass r4 <e' cis' a> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''4 r cis'16 a e' cis' }
  \tag #'left { \clef bass r4 <a e cis a,> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4 <a' dis' b> <a' fis' b> }
  \tag #'left { \clef bass a4 fis dis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <a' fis'>4 <gis' e'> s } { b2 gis''16 e'' b'' gis'' } }
  \tag #'left { \clef bass e4 e, r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 r gis'16 e' b' gis' }
  \tag #'left { \clef bass r4 <d' b gis e> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 r d'16 b e' d' }
  \tag #'left { \clef bass r4 <e b, gis, e,> r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble gis'4 <gis' d'> <gis' d'> }
  \tag #'left { \clef bass r4 <b e> <b e> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b' d'>4 <a' cis'> r }
  \tag #'left { \clef bass \split { gis4 a cis16 a, e cis } { a,2 s4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <cis'' a' e' cis'> r }
  \tag #'left { \clef bass a4 r fis,16 d, a, fis, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <fis'' d'' fis'> r }
  \tag #'left { \clef bass d4 r gis,16 e, b, gis, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <gis'' d'' b' gis'> r }
  \tag #'left { \clef bass e4 r e, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a'' cis'' a'>4 r }
  \tag #'left { \clef bass r4 a,, }
  \tag #'common { s2 \textEndMark \markup { \small "Fine" } }
  |

  }

  \key a \minor
  \tag #'common { \textMark \markup { "Minore" } }

  \repeat volta 2 {

  \partial 4
  \tag #'right { \clef treble e'4 }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble c''4 b' a' }
  \tag #'left { \clef bass a8 e' b e' c' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 e'' d'' } { gis'4 a' b' } }
  \tag #'left { \clef bass d'8 e' c' e' b e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4 s2 } { c''4 b' a' } }
  \tag #'left { \clef bass a8 e' b e' c' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 e'' d'' } { gis'4 a' b' } }
  \tag #'left { \clef bass d'8 e' c' e' b e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4 s2 } { c''4 b' a' } }
  \tag #'left { \clef bass a8 e' g! e' fis dis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'!4 fis' e' }
  \tag #'left { \clef bass e8 g fis a g b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'4 b <dis' a> }
  \tag #'left { \clef bass a,8 a b, g b, fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' g>4 r }
  \tag #'left { \clef bass e4 e, }
  \tag #'common { s2 }
  |

  }

  \repeat volta 2 {

  \partial 4
  \tag #'right { \clef treble \afterGrace g'4\trill { fis'16 g' } }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble e''4 d'' c'' }
  \tag #'left { \clef treble c'8 g' d' g' e' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a''4 g'' f'' } { b'4 c'' d'' } }
  \tag #'left { \clef treble f'8 g' e' g' d' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { e''4 s2 } { e''4 d'' c'' } }
  \tag #'left { \clef treble c'8 g' d' g' e' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { bes''4 a'' g'' } { cis''4 d'' e'' } }
  \tag #'left { \clef treble g'8 a' f' a' e' a' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 s2 } { f''4 e'' d'' } }
  \tag #'left { \clef treble d'8 a' c'! a' b gis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 b' a' }
  \tag #'left { \clef bass a8 a' g! g'! f f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble gis'4 f' e' }
  \tag #'left { \clef bass e8 e' d d' c c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'4 c' b }
  \tag #'left { \clef bass b,8 b a, a gis, gis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' c'>4 b' a' }
  \tag #'left { \clef bass <a a,>8 e' b e' c' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4 e'' d'' } { gis'2. } }
  \tag #'left { \clef bass \split { d'8 e' c' e' b e' } { e2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 b' a' }
  \tag #'left { \clef bass \split { a8 e' b e' c' e' } { e2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <gis'' f''>4 <a'' e''> <b'' d'' b'> } { gis'4 a' b' } }
  \tag #'left { \clef bass \split { d'8 e' c' e' b e' } { e2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' c''>4 <b'' b'> <a'' a'> }
  \tag #'left { \clef bass \split { a8 e' b e' c' e' } { e2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' gis'' f''>4 <e''' a'' e''> <d''' b'' d''> }
  \tag #'left { \clef bass \split { d'8 e' c' e' b e' } { e2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' c''>4 <d''' b'' f'' d''> <b'' gis'' d'' b'> }
  \tag #'left { \clef bass a8 a' d d' e e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a'' c'' a'>4 r }
  \tag #'left { \clef bass a4 a, }
  \tag #'common { s2 \textEndMark \markup { \small "Scherzo D. C." } }
  |

  }

  \bar "|."

}

fourthMovement = {

  \mark \markup { \bold "Rondo. Grazioso" }
  \tempo 4 = 120
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 4/4
  \key a \major
  \accidentalStyle default

  \tag #'right { \clef treble r4 \tuplet 3/2 { cis'16[ e' a'] } cis''32 e'' a'' cis''' e'''4 e''' }
  \tag #'left { \clef bass a,16 cis e a r4 a8 e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 gis'4 }
  \tag #'left { \clef bass b8 e' d' e' b e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'4 b' cis'' d'' }
  \tag #'left { \clef bass cis'8 e' gis e' a e' fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { cis''8 } e''4. d''16 cis'' b'4 r }
  \tag #'left { \clef bass e8 cis' a cis' e gis d gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 a16 cis' \tuplet 6/4 { e'16 a' cis'' e'' a'' cis''' } e'''4 e''' }
  \tag #'left { \clef bass \stemDown cis8 \change Staff = "right" a \change Staff = "left" e a \stemNeutral b, gis e gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 fis'16 r fis'2 fis'4 }
  \tag #'left { \clef bass ais,8 fis e fis cis ais e ais }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'8 a'!16 gis' fis'8 gis' b' a' fis' dis' }
  \tag #'left { \clef bass \split { e8 b gis b fis b a! b } { b,2. b,4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis' dis'>2 e'8 e''[ b' cis''] }
  \tag #'left { \clef bass \split { r8 a b a gis4 r } { e2. r4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''2 cis'' } { r8 b' fis' gis' a'2 } }
  \tag #'left { \clef bass \split { r2 r8 a cis' dis' } { e1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { <b' gis'>2. } { e'8 dis' e' fis' e'4 } r4 }
  \tag #'left { \clef bass \split { s2 s8 } { e2~ e8 } e[ b, cis] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r8 b' fis' gis' a'2 } { b2 r8 a cis' dis' } }
  \tag #'left { \clef bass \split { d!2 cis4 fis } { e,1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <gis' e' b>4 r r2 }
  \tag #'left { \clef bass \split { e4 r s2 } { e,8 dis, e, fis, e, d, cis, b,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 a16 cis' \tuplet 6/4 { e'16 a' cis'' e'' a'' cis''' } e'''4 e''' }
  \tag #'left { \clef bass a,,8 e cis e a, e cis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 a'4 }
  \tag #'left { \clef bass b,8 e d e b, e cis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \sharp b'8. cis''16 \tuplet 3/2 { d''8 e'' fis'' } a'!4 \split { cis''8 b' } { gis'4 } }
  \tag #'left { \clef bass d8 b fis b e cis' e d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { b'2 a'8 } { gis'2 a'8 } fis''16[ e''] d''[ cis'' b' a'] }
  \tag #'left { \clef bass \split { r8 d' e' d' cis'4 s } { a2. r4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'16 a' b' a' gis'4 r8 e''16 d'' cis'' b' a' gis' }
  \tag #'left { \clef bass r4 b16 d' e' d' b4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 b' cis'' b' a'4 r8 a''16 gis'' fis'' e'' d'' cis'' }
  \tag #'left { \clef bass r4 \clef treble cis'16 e' a' e' cis'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'16 d'' fis'' e'' d'' cis'' b' a' gis' a' b' a' gis' fis' e' d' }
  \tag #'left { \clef treble <fis' d'>4 r \clef bass <d' b e> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'16 a' e' cis'' a' e'' cis'' a'' e'' cis''' a'' e''' d''' cis''' b'' a'' }
  \tag #'left { \clef bass a4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis''16 a'' b'' a'' gis''4 r16 dis''' e''' d''' cis''' b'' a'' gis'' }
  \tag #'left { \clef bass r4 \clef treble b'16 d'' e'' d'' b'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''16 b'' cis''' b'' a''4 r8 cis'''16 b'' a'' gis'' fis'' e'' }
  \tag #'left { \clef treble r4 cis''16 e'' a'' e'' cis''4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble dis''16 fis'' a'' gis'' fis'' e'' dis'' cis'' b' dis'' fis'' e'' dis'' cis'' b' a' }
  \tag #'left { \clef treble <a' fis'>4 r <fis' dis'> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'16 e' b' gis' e'' b' gis'' e'' b'' gis'' e''' dis''' cis''' b'' a'' gis'' }
  \tag #'left { \clef treble e'4 r r8 \clef bass <gis e> <a fis> <b gis> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''16 a'' cis''' b'' a'' gis'' fis'' e'' dis'' e'' dis'' cis'' b' a' gis' fis' }
  \tag #'left { \clef bass <cis' a>4 r <a fis dis b,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'4 r r b'8 e'' }
  \tag #'left { \clef bass e16 b gis b e' b gis b e b gis b e b gis b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''8[ dis''] \prallAccidental \markup \sharp cis''[ b'] b'4 b' }
  \tag #'left { \clef bass a16 b fis b dis b b, b a, b b, b a, b b, b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'4 \acciaccatura { b'8 } gis''4. a''16 gis'' fis''8 e'' }
  \tag #'left { \clef bass gis,16 b b, b e b gis b e b gis b e b gis b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''8[ dis''] \prallAccidental \markup \sharp cis''[ b'] b'4 b' }
  \tag #'left { \clef bass a16 b fis b dis b b, b a, b b, b a, b b, b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'4 \grace { b'16 e'' gis'' } b''4. cis'''16 b'' a'' gis'' fis'' e'' }
  \tag #'left { \clef bass gis,16 b b, b e b gis b e b gis b e b gis b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''8[ dis''] \prallAccidental \markup \sharp cis''[ b'] b'4 b' }
  \tag #'left { \clef bass a16 b fis b dis b b, b a, b b, b a, b b, b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { b'8 <e'' e'>4 <d'' d'>8 cis''4 cis''8\turn e'' } { s2 cis'4. e'8 } }
  \tag #'left { \clef bass gis,16 b gis b gis, b gis b g, a g a g, a g a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' e'>4 <d'' d'> r <bis' bis> }
  \tag #'left { \clef bass fis,16 a fis a fis, a fis a fis, gis! fis gis fis, gis fis gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { <dis'' dis'>8 <cis'' cis'>4 <b'! b!>8 ais'4 ais'8\turn cis'' } { s2 ais4. cis'8 } }
  \tag #'left { \clef bass e,16 gis e gis e, gis e gis e, fis e fis e, fis e fis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <cis'' cis'>4 <b' b> r <gis' gis> }
  \tag #'left { \clef bass dis,16 fis dis fis dis, fis dis fis d, e d e d, e d e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' a>8 a'4 <e'' e'> <d'' gis'> <cis'' a'>8 }
  \tag #'left { \clef bass cis,16 e cis e cis, e cis e b,, e b, e a,, e a, e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' gis'>4 r r r8 <gis'' gis'> }
  \tag #'left { \clef bass e,16 e fis, e gis, e a, e b, e cis e d e b, e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' a'>8 <a'' a'>4 <e'' e'> <d'' gis'> <cis'' a'>8 }
  \tag #'left { \clef bass cis16 e a, e cis, e cis e b,, e b, e a,, e a, e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' gis'>4 r r2 }
  \tag #'left { \clef bass e,16 e fis, e gis, e a, e ais, e b, e bis, e cis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r1 }
  \tag #'left { \clef bass d16 e cis e b, e a, e gis, e fis, e gis, e e, e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 r32 cis' e' a' cis'' e'' a'' cis''' e'''4 e''' }
  \tag #'left { \clef bass \tuplet 6/4 { a,,16 cis, e, a, cis e } a32 r r16 r8 a e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 gis'4 }
  \tag #'left { \clef bass b8 e' d' e' b e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'8. e'16 b'8. e'16 cis''8. a'16 d''8. a'16 }
  \tag #'left { \clef bass cis'8 a gis e a cis' fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4. d''16 cis'' b'4 r }
  \tag #'left { \clef bass e8 cis' a cis' e gis d gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 a16 cis' \tuplet 6/4 { e'16 a' cis'' e'' a'' cis''' } e'''4 e''' }
  \tag #'left { \clef bass \stemDown cis8 \change Staff = "right" a \change Staff = "left" e a \stemNeutral b, gis e gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 fis'16 r fis'2 fis'4 }
  \tag #'left { \clef bass ais,8 fis e fis cis ais e ais }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'8 a'16 gis' fis'8 gis' b' a' fis' dis' }
  \tag #'left { \clef bass \split { e8 b gis b fis b a b } { b,2. b,4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis' dis'>2 e'8 e''[ b' cis''] }
  \tag #'left { \clef bass \split { r8 a b a gis4 } { e2. } r4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''!2 cis'' } { r8 b' fis' gis' a'2 } }
  \tag #'left { \clef bass \split { r2 r8 a cis' dis' } { e1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { <b' gis'>2. } { e'8 dis' e' fis' e'4 } r4 }
  \tag #'left { \clef bass \split { s2 s8 } { e2~ e8 } e[ b, cis] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r8 b' fis' gis' a'2 } { b2 r8 a cis' dis' } }
  \tag #'left { \clef bass \split { d!2 cis4 fis } { e,1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <gis' e' b>4 r r2 }
  \tag #'left { \clef bass \split { e4 r s2 } { e,8 dis, e, fis, e, d, cis, b,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass \tuplet 11/8 { a,16 cis e a cis' \clef treble e' a' cis'' e'' a'' cis''' } e'''4 e''' }
  \tag #'left { \clef bass a,,8 e cis e a, e cis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 a'4 }
  \tag #'left { \clef bass b,8 e d e b, e cis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \sharp b'8. cis''16 \tuplet 3/2 { d''8 e'' fis'' } a'!4 \split { cis''8 b' } { gis' } }
  \tag #'left { \clef bass d8 b fis b e cis' e d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' gis'>2 \tuplet 3/2 4 { a'8 e' f' fis' g' gis' } }
  \tag #'left { \clef bass \split { r8 d' e' d' cis'4 s } { a2. r4 } }
  \tag #'common { s1 }
  |

  \repeat volta 2 {

  \key a \minor

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' bes' b' c'' cis'' d'' dis'' e'' f'' e'' a' } }
  \tag #'left { \clef bass <a e c a,>4 <e' c' a> r <e' c' a>8. <e' c' a>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 gis' a' ais' b' c'' cis'' d'' dis'' e'' d'' gis' } }
  \tag #'left { \clef bass <e' d' b>4 <e' d' b> r <e' d' b>8. <e' d' b>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' b' c'' cis'' d'' dis'' e'' f'' fis'' g'' gis'' } }
  \tag #'left { \clef bass <e' c'>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a''8 e'' f'' d'' f'' b' c'' e'' a' b' d'' gis' } }
  \tag #'left { \clef bass r4 <b f d> <c' a e> <d' b e> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' e' c'>4 <a' e' c'> r <a' e' c'>8. <a' e' c'>16 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 a, bes, b, c cis d dis e f e a, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' d'' a' f'>4 <f'' d'' a' f'> r <f'' d'' a' f'>8. <f'' d'' a' f'>16 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 d, e, f, fis, g, gis, a, bes, b, a, d, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' d'' b' g' f'>4 <f'' d'' b' g' f'> r <f'' d'' b' g' f'>8. <f'' d'' b' g' f'>16 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 g,, a,, b,, c, d, e, f, g, a, b, c } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' d'' b' g' f'>4 <f'' d'' b' g' f'>8. <f'' d'' b' g' f'>16 <e'' c'' g' e'>4 <e'' c'' g' e'>8. <e'' c'' g' e'>16 }
  \tag #'left { \clef bass \tuplet 3/2 4 { d8 e f g a b c' b a g f e } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' a' f' d'>4 <c'' a' fis' ees' c'>8. <c'' a' fis' ees' c'>16 <c'' g' e' c'>4 <b' g' f' d' b> }
  \tag #'left { \clef bass \tuplet 3/2 4 { f8 g a fis g a g, c e g f d } }
  \tag #'common { s1 }
  |

  }
  \alternative {
    {

      \tag #'right { \clef treble <c'' g' e' c'>4 r \tuplet 3/2 4 { r8 e' f' fis' g' gis' } }
      \tag #'left { \clef bass \tuplet 3/2 4 { c8 g e c g, e, } c,4 r }
      \tag #'common { s1 }
      |

    }
    {

      \tag #'right { \clef treble <c'' g' e' c'>4 r \tuplet 3/2 4 { r8 g aes a bes b } }
      \tag #'left { \clef bass \tuplet 3/2 4 { c8 g e c g, e, } c,4 r }
      \tag #'common { s1 }
      |

    }
  }

  \tag #'right { \clef treble \tuplet 3/2 4 { c'8 cis' d' ees' e' f' fis' g' gis' a' bes' b' } }
  \tag #'left { \clef bass <g e c>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''4 b' r2 } { d'2 s } }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 g, a, ais, b, c cis d dis e f fis } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 d' e' f' fis' g' gis' a' bes' b' c'' cis'' } }
  \tag #'left { \clef bass \split { g4 f! s2 } { d2 r } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''4 c''! r2 } { e'2 s } }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 a, b, c cis d dis e f fis g gis } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 e' fis' g' a' ais' b' c'' cis'' d'' dis'' e'' } }
  \tag #'left { \clef bass \split { a4 g! s2 } { e2 r } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { eis''8 fis'' g'' gis'' a'' ais'' b'' b' c''' a'' b' b'' } }
  \tag #'left { \clef bass <b a fis dis>2. <b fis dis>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g''8 b' a'' fis'' a' g'' e'' g' fis'' dis'' fis' fis'' } }
  \tag #'left { \clef bass <b g e>4 <c' a> b <a b,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 gis' f'' d'' b' e'' c'' a' d'' b' gis' c'' } }
  \tag #'left { \clef bass <gis e>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' bes' b' c'' cis'' d'' dis'' e'' f'' e'' a' } }
  \tag #'left { \clef bass <a e c a,>4 <e' c' a> r <a e c a,>8. <a e c a,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 gis' a' ais' b' c'' cis'' d'' dis'' e'' d'' gis' } }
  \tag #'left { \clef bass <gis e d b,>4 <e' d' b> r <gis e d b,>8. <gis e d b,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' b' c'' d'' dis'' e'' f'' fis'' g'' gis'' a'' } }
  \tag #'left { \clef bass <a e c>4 <a' e' c'> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { bes''8 b'' c''' cis''' d''' dis''' e''' c''' a'' d''' b'' gis'' } }
  \tag #'left { \clef bass r4 <a f> <c' a e> <d' b e> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a''8 f'' e'' d'' c'' b' } a'4 r }
  \tag #'left { \clef bass <c' a>4 r \tuplet 3/2 4 { r8 a g f e d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { c'8 cis' d' ees' e' f' fis' g' gis' a' bes' b' } }
  \tag #'left { \clef bass c4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''4 b' } { d'2 } r2 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 g, a, ais, b, c cis d dis e f fis } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 d' e' f' fis' g' gis' a' bes' b' c'' cis'' } }
  \tag #'left { \clef bass \split { g4 f! } { d2 } r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''4 c''! } { e'2 } r2 }
  \tag #'left { \clef bass \tuplet 3/2 4 { r8 a, b, c cis d dis e f fis g gis } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 e' fis' g' a' ais' b' c'' cis'' d'' dis'' e'' } }
  \tag #'left { \clef bass \split { a4 g! } { e2 } r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { eis''8 fis'' g'' gis'' a'' ais'' b'' b' c''' a'' b' b'' } }
  \tag #'left { \clef bass <b a fis dis>2. <b fis dis>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g''8 b' a'' fis'' a' g'' e'' g' fis'' dis'' fis' fis'' } }
  \tag #'left { \clef bass <b g e>4 <c' a> b <a b,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 gis' f'' d'' b' e'' c'' a' d'' b' gis' c'' } }
  \tag #'left { \clef bass <gis e>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' bes' b' c'' cis'' d'' dis'' e'' f'' e'' a' } }
  \tag #'left { \clef bass <a e c a,>4 <e' c' a> r <a e c a,>8. <a e c a,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 gis' a' ais' b' c'' cis'' d'' dis'' e'' d'' gis' } }
  \tag #'left { \clef bass <gis e d b,>4 <e' d' b> r <gis e d b,>8. <gis e d b,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' b' c'' cis'' d'' dis'' e'' f'' fis'' g'' gis'' } }
  \tag #'left { \clef bass <a e c>4 <a' e' c'> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a''8 bes'' b'' c''' b'' d''' c''' b'' d''' c''' b'' a'' } }
  \tag #'left { \clef treble \split { r2 dis'' } { <a' f'>1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s2 e''' } { gis''2~ gis'' } }
  \tag #'left { \clef treble \tuplet 3/2 4 { r8 e' f' fis' g' gis' a' ais' b' c'' b' e' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <dis''' a'' fis''>1 }
  \tag #'left { \clef treble \tuplet 3/2 4 { r8 fis' gis' a' ais' b' c'' a' fis' c'' a' fis' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d''' b'' gis'' e''>1 }
  \tag #'left { \clef treble \tuplet 3/2 4 { r8 gis' a' b' c'' cis'' d'' dis'' e'' f'' fis'' g'' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { gis''8 a'' ais'' b'' c''' cis''' d''' cis''' b'' a'' gis'' fis'' } }
  \tag #'left { \clef treble R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 d'' cis'' b' a' gis' b' a' gis' fis' e' dis' } }
  \tag #'left { \clef treble R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { fis'8 e' d' cis'8 b ais d' cis' b a gis fis } }
  \tag #'left { \clef treble R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass \tuplet 3/2 4 { b8 a gis fis e dis fis e d cis b, ais, } }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \key a \major

  \tag #'right { \clef bass \tuplet 3/2 4 { d8 cis b, a, gis, fis, } r2 }
  \tag #'left { \clef bass r2 \tuplet 3/2 4 { e,8 fis, e, d, cis, b,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r4 r8 r16 \clef treble a32 b cis' d' e' fis' gis' a' b' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d''' }
  \tag #'left { \clef bass a,,32 b,, cis, d, e, fis, gis, a, b, cis d e fis gis r16 r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 gis'4 }
  \tag #'left { \clef bass b8 e' d' e' b e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'8. cis''32 b' b'8. d''32 cis'' cis''8. e''32 d'' d''8. dis''16 }
  \tag #'left { \clef bass cis'8 a gis e a cis' fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4.. d''!32 cis'' b'4 r }
  \tag #'left { \clef bass e8 cis' a cis' e gis d gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a32 b a gis a b cis' dis' e' fis' gis' a' b' cis'' dis'' e'' \tuplet 3/2 { fis''16 gis'' a'' b'' cis''' dis''' } e'''8 e''' }
  \tag #'left { \clef bass \stemDown cis8 \change Staff = "right" a \change Staff = "left" e a \stemNeutral b, gis e gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 fis'16 r fis'2 fis'4 }
  \tag #'left { \clef bass ais,8 fis e fis cis ais e ais }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'8 a'16 gis' fis'8 gis' b' a' fis' dis' }
  \tag #'left { \clef bass \split { e8 b gis b fis b a b } { b,2. b,4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis' dis'>2 e'16 \split { e''[ dis'' e''] fis'' e'' b' cis'' } { s8. s4 } }
  \tag #'left { \clef bass \split { r8 a b a gis4 s } { e2. r4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''2 cis'' } { r16 b' ais' b' cis'' b' fis' gis' a'2 } }
  \tag #'left { \clef bass \split { r2 r8 a16 gis a b cis' dis' } { e1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' gis'>4 r \split { r2 } { r16 e' dis' e' fis' e' b cis' } }
  \tag #'left { \clef bass \split { e'4 s s s } { e8 dis16 e fis e dis e e,2~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r16 b' ais' b' cis'' b' fis' gis' a'2 } { d'!2 cis' } }
  \tag #'left { \clef bass e,2~ e,8 fis,16 gis, a, b, cis dis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <gis' b>4 r r2 }
  \tag #'left { \clef bass e16 fis gis a b a gis fis e fis e d! cis d cis b, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a32 b a gis a b cis' d' e'32 fis' gis' a' b' cis'' d'' e'' \tuplet 6/4 { fis''16 gis'' a'' b'' cis''' d''' } e'''8 e''' }
  \tag #'left { \clef bass a,8 e cis e a, e cis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 a'4 }
  \tag #'left { \clef bass b,8 e d e b, e cis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(-0.5 . 0) ##f \markup \sharp b'8. cis''16 \tuplet 3/2 { d''8 e'' fis'' } a'!4 \split { cis''8 b' } { gis'4 } }
  \tag #'left { \clef bass d8 b fis b e cis' e d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' gis'>2 a'8 fis''16[ e''] d'' cis'' b' a' }
  \tag #'left { \clef bass \split { r8 d' e' d' cis'4 s } { a2. r4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'16 a' b' a' gis'4 r8 e''16 d'' cis'' b' a' gis' }
  \tag #'left { \clef bass r4 b16 d' e' d' b4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 b' cis'' b' a'4 r8 a''16 gis'' fis'' e'' d'' cis'' }
  \tag #'left { \clef bass r4 \clef treble cis'16 e' a' e' cis'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'16 d'' fis'' e'' d'' cis'' b' a' gis' a' b' a' gis' fis' e' d' }
  \tag #'left { \clef treble <fis' d'>4 r \clef bass <d' b e> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'16 a' e' cis'' a' e'' cis'' a'' e'' cis''' a'' e''' d''' cis''' b'' a'' }
  \tag #'left { \clef bass a4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis''16 a'' b'' a'' gis''4 r16 dis''' e''' d''' cis''' b'' a'' gis'' }
  \tag #'left { \clef bass r4 \clef treble b'16 d'' e'' d'' b'4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''16 b'' cis''' b'' a''4 r8 cis'''16 b'' a'' gis'' fis'' e'' }
  \tag #'left { \clef treble r4 cis''16 e'' a'' e'' cis''4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble dis''16 e'' fis'' gis'' a'' gis'' fis'' e'' dis'' cis'' b' a' gis' fis' e' dis' }
  \tag #'left { \clef treble <a' fis'>4 r \clef bass <a fis> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'4 r r2 }
  \tag #'left { \clef bass e16 e' fis e' gis e' a e' b e' cis' e' dis' e' fis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis''2 a''8[ gis''] fis''[\prall e''] }
  \tag #'left { \clef bass d'!16 e' b e' gis e' e e' d e' e e' d e' e e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4 \grace { e''8 } cis'''4. d'''16 cis''' b''8 a'' }
  \tag #'left { \clef bass cis16 e' e e' a e' cis' e' a e' cis' e' a e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis''2 a''8[ gis''] fis''[\prall e''] }
  \tag #'left { \clef bass d'16 e' b e' gis e' e e' d e' e e' d e' e e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4 \grace { e''16 a'' cis''' } e'''4. dis'''16 e''' d''' cis''' b'' a'' }
  \tag #'left { \clef bass cis16 e' e e' a e' cis' e' a e' cis' e' a e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 4 #3.5 #'(1 . 0) gis''2 a''8[ gis''] fis''[\prall e''] }
  \tag #'left { \clef bass d'16 e' b e' gis e' e e' d e' e e' d e' e e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s2 fis''4 fis''8\turn a'' } { e''8 <a'' a'>4 <g'' g'>8 fis'4. a'8 } }
  \tag #'left { \clef bass cis16 e' e e' cis e' e e' c d' d d' c d' d d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' a'>4 <g'' g'> r <eis'' eis'> }
  \tag #'left { \clef bass b,16 d' d d' b, d' d d' b, cis' cis cis' b, cis' cis cis' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s2 dis''4 dis''8\turn fis'' } { <gis''! gis'!>8 <fis'' fis'>4 <e'' e'>8 dis'4. fis'8 } }
  \tag #'left { \clef bass ais,16 cis' cis cis' ais, cis' cis cis' a, b b, b a, b b, b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis'' fis'>4 <e'' e'> r <cis'' cis'> }
  \tag #'left { \clef bass gis,16 b b, b gis, b b, b g, a a, a g, a a, a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' e'>8 <d'' d'>4 <cis'' cis'> <b' b> <fis'' fis'>8 }
  \tag #'left { \clef bass fis,16 a a, a e, a a, a d, a a, a dis, a a, a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 4. #3 #'(0 . 0) a'2 \split { cis''4. b'8 } { <gis' d'>2 } }
  \tag #'left { \clef bass e,16 a, cis e e, a, cis e e, b, d! e e, b, d e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' cis'>4 \tuplet 6/4 { e'16 a' cis'' e'' a'' cis''' } e'''4 e''' }
  \tag #'left { \clef bass \tuplet 6/4 { r16 a, cis e a cis' } r4 a8 e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 gis'4 }
  \tag #'left { \clef bass b8 e' d' e' b e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 gis'16 a' r8 ais'16 b' r8 bis'16 cis'' r8 cis''16 d'' }
  \tag #'left { \clef bass cis'8 e' gis e' a e' fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4~ e''16[ dis''32 e''] fis''[ e'' d'' cis''] b'4 r }
  \tag #'left { \clef bass e8 cis' a cis' e gis d gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 a16 cis' \tuplet 6/4 { e'16 a' cis'' e'' a'' cis''' } e'''4 e''' }
  \tag #'left { \clef bass \stemDown cis8 \change Staff = "right" a \change Staff = "left" e a \stemNeutral b, gis e gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 bes'16 r bes'4~ bes'8 g'' e'' bes' }
  \tag #'left { \clef bass cis8 bes e bes c bes e bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'8 c'' f'' c'' a'' f'' c'' a' }
  \tag #'left { \clef bass c8 a f a c a f a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \trillAccidental \markup \natural bes'4 \grace { a'16 bes' } g''4~ g''8 e'' c'' bes' }
  \tag #'left { \clef bass c8 bes g bes c bes e bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 c'' f'' e'' f'' c'' a'' gis''! a'' f'' c''' b'' c''' a'' f'' c'' }
  \tag #'left { \clef bass c8 a f a c a f a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \trillAccidental \markup \natural bes'4 \grace { a'16 bes' } g''2 bes'4 }
  \tag #'left { \clef bass c8 bes e bes c bes e bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ais'4 g''2 ais'4 }
  \tag #'left { \clef bass cis!8 ais e ais cis ais e ais }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 fis'' eis'' fis'' e'' d'' cis'' b' }
  \tag #'left { \clef bass d8 b fis b d b fis b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 4 #3 #'(0 . 0) a'2 cis''4. b'8 }
  \tag #'left { \clef bass e8 cis' a cis' e d' gis d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'8 <e' cis'>[ <e' cis'> <e' cis'>] <e' cis'> <e' cis'> <e' cis'> <e' cis'> }
  \tag #'left { \clef bass <cis' a>4 \tuplet 6/4 { a,,16 cis, e, a, cis e } a4 a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble s4 \split { \tuplet 6/4 { e'16 gis' b' e'' gis'' b'' } } { \crossStaff { e'8 } s8 } d'''4 d''' }
  \tag #'left { \clef bass \split { \stemNeutral \change Staff = "right" \once \override Beam.positions = #'(-5 . -3.5) <e' d' b>8[ \change Staff = "left" <e' d' b>] } { gis4 } \crossStaff { <d' b>8[ } <e' d' b>] <e' b gis>[ <e' b gis> <e' b gis> <e' b gis>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'''4 <e' cis'>8 <e' cis'> <e' cis'> <e' cis'> <e' cis'> <e' cis'> }
  \tag #'left { \clef bass <e' cis' a>8 <e' cis' a> \tuplet 6/4 { a,,16 cis, e, a, cis e } a4 a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble s4 \split { \tuplet 6/4 { e'16 gis' b' e'' gis'' b'' } } { \crossStaff { e'8 } s8 } d'''4 d''' }
  \tag #'left { \clef bass \split { \stemNeutral \change Staff = "right" \once \override Beam.positions = #'(-5 . -3.5) <e' d' b>8[ \change Staff = "left" <e' d' b>] } { gis4 } \crossStaff { <d' b>8[ } <e' d' b>] <e' b gis>[ <e' b gis> <e' b gis> <e' b gis>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'''4 <e' cis' a>8 <e' cis' a> <e' cis'> <e' cis'> <e' cis'> <e' cis'> }
  \tag #'left { \clef bass <e' cis' a>8 <e' cis' a> \tuplet 6/4 { a,,16 cis, e, a, cis e } a4 a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' cis'>4 \split { \tuplet 6/4 { a16 cis' e' a' cis'' e'' } } { \crossStaff { a8 } s8 } a''4 a'' }
  \tag #'left { \clef bass <a g>8 <a g> \crossStaff { <g> } <a g> <cis' a g> <cis' a g> <cis' a g> <cis' a g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 d'16 r d'2 dis'4 }
  \tag #'left { \clef bass <a fis>8 <a fis> <a fis> <a fis> <a f> <a f> <a f> <a f> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' cis'>4. <cis' a>8 <d'! b>4. <b gis>8 }
  \tag #'left { \clef bass e8 e e, e e, e e, e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble cis'4 \tuplet 6/4 { a16 cis' e' a' cis'' e'' } a''4 a'' }
  \tag #'left { \clef bass \stemDown a,8 a \change Staff = "right" a \change Staff = "left" a \stemNeutral <cis' a g> <cis' a g> <cis' a g> <cis' a g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 d'16 r d'2 a''4 }
  \tag #'left { \clef bass <a fis>8 <a fis> <a fis> <a fis> <a fis> <a fis> <a fis> <a fis> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 ees'16 r ees'2 a''4 }
  \tag #'left { \clef bass <c' a f>8 <c' a f> <c' a f> <c' a f> <c' a f> <c' a f> <ees' c' f> <ees' c' f> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s2 ees'' } { bes''8 a'' g'' f'' r a' g' f' } }
  \tag #'left { \clef bass \split { <d' bes>2 <ees' c'> } { f1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''2 r8 a' g' f' } { bes'8 a' g' f' ees'2 } }
  \tag #'left { \clef bass \split { <d' bes>2 } { f2 } <ees c f,>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { <bes' d'>8 bes b c' cis' d' ees' e' f' g' f' bes } }
  \tag #'left { \clef bass <d bes, f,>2. <d bes, f,>8. <d bes, f,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a bes b c' cis' d' ees' e' f' ees' a } }
  \tag #'left { \clef bass <ees c f,>2. <ees c f,>8. <ees c f,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 bes b c' cis' d' ees' e' f' fis' g' gis' } }
  \tag #'left { \clef bass <d bes, f,>2. <d bes, f,>8. <d bes, f,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' b' c'' a' b' c'' a' b' c'' b' a' } }
  \tag #'left { \clef bass <dis c a, fis,!>2. <dis c a, fis,>8. <dis c a, fis,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { gis'8 e' f' fis' g' gis' a' ais' b' c'' b' e' } }
  \tag #'left { \clef bass <e b, gis, e,>4 <b gis e> r <b gis e>8. <b gis e>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 fis' gis' a' b' c'' cis'' d'' dis'' e'' eis'' fis'' } }
  \tag #'left { \clef bass <c' a e>4 <c' a e> r <c' a e>8. <c' a e>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 gis' a' ais' b' c'' cis'' d'' dis'' e'' d'' gis' } }
  \tag #'left { \clef bass <d' b e>4 <d' b e> r <d' b e>8. <d' b e>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 a' b' cis'' d'' dis'' e'' eis'' fis'' g'' gis'' a'' } }
  \tag #'left { \clef bass <e' cis'! e>4 <e' cis' e> r <e' cis' e>8. <e' cis' e>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { r8 b' cis'' d'' dis'' e'' eis'' fis'' g'' gis'' a'' ais'' } }
  \tag #'left { \clef bass <d' b gis e>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { b''8 c''' cis''' d''' cis''' b'' a'' gis'' fis'' e'' d'' cis'' } }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { b'8 a' gis' fis' e' d' \clef bass cis' b a gis fis e } }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass \tuplet 3/2 4 { d8 cis b, a, gis, fis, } r2 }
  \tag #'left { \clef bass r2 \tuplet 3/2 4 { e,8 fis, e, d, cis, b,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r4 \clef treble r32 cis' e' a' cis'' e'' a'' cis''' e'''4 e''' }
  \tag #'left { \clef bass \tuplet 6/4 { a,,16 cis, e, a, cis e } a32 r r16 r8 a e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 gis'16 r gis'2 gis'4 }
  \tag #'left { \clef bass b8 e' d' e' b e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 6/4 4 { a'16 b' a' gis' a' ais' b' cis'' b' ais' b' bis' cis'' d'' cis'' bis' cis'' a' d'' e'' d'' cis'' d'' dis'' } }
  \tag #'left { \clef bass cis'8 e' gis e' a e' fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 6/4 { e''16 fis'' e'' dis'' e'' eis'' } fis''16 e'' d'' cis'' b'4 r }
  \tag #'left { \clef bass e8 cis' a cis' e gis d gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 a16 cis' \tuplet 6/4 { e'16 a' cis'' e'' a'' cis''' } e'''8 dis'''16 e''' dis''' e''' dis''' e''' }
  \tag #'left { \clef bass \stemDown cis8 \change Staff = "right" a \change Staff = "left" e a \stemNeutral cis a cis ais }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 fis'16 r fis'4. d''16 cis'' e'' d'' cis'' b' }
  \tag #'left { \clef bass d8 ais fis ais d b fis b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 4 #3 #'(0 . 0) a'2 cis''8 b' d'' gis' }
  \tag #'left { \clef bass e8 cis' a! cis' e d' b d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 gis' b' a' cis'' b' d'' cis'' e'' dis'' fis'' e'' d'' cis'' b' a' }
  \tag #'left { \clef bass a8 e' cis' e' a e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'4 \grace { gis'8 } d''2 b'8 gis' }
  \tag #'left { \clef bass b8 e' d' e' e e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 gis' b' a' cis'' b' d'' cis'' e'' dis'' fis'' e'' d'' cis'' b' a' }
  \tag #'left { \clef bass a8 e' cis' e' a e' cis' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'8.\trill fis'32 gis' d''2 b'8 gis' }
  \tag #'left { \clef bass b8 e' d' e' e e' d' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 gis' b' a' cis'' b' d'' cis'' e'' dis'' fis'' e'' a'' gis'' b'' a'' }
  \tag #'left { \clef bass <cis' a>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis''16 fis'' e'' d''! cis'' b' a' gis' fis' e' d' cis' \clef bass b a gis fis }
  \tag #'left { \clef bass r1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass e4 d' b gis }
  \tag #'left { \clef bass <d b, e,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <b gis e~ d>2 <a e cis>4 r }
  \tag #'left { \clef bass a,,4. cis,16 e, a,4 r }
  \tag #'common { s1 }
  |

  \bar "|."

}

movementSpecs = #'(
  (firstMovement "Allegro vivace")
  (secondMovement "Largo appassionato")
  (thirdMovement "Scherzo. Allegretto")
  (fourthMovement "Rondo. Grazioso")
)
