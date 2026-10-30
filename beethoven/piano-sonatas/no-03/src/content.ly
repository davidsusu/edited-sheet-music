\version "2.26.0"

\include "../../shared/src/lilypond/lib.ily"

workTitle = "Piano Sonata No. 3"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 2 No. 3"
workDate = "1795"
workEditor = "Dávid Horváth"

firstMovement = {
  \mark \markup { \bold "Allegro con brio" }
  \tempo 4 = 132
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 4/4
  \key c \major
  \accidentalStyle default

  \repeat volta 2 {

  \tag #'right { \clef treble <e' c'>2 <d' b>16 <e' c'> <d' b> <e' c'> <f' d'>8 <e' c'> }
  \tag #'left { \clef bass <g c>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d' b>4 <g' b> r2 }
  \tag #'left { \clef bass <g g,>4 <g g,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f' d'>2 <e' cis'>16 <f' d'> <e' cis'> <f' d'> <g' e'>8 <f' d'> }
  \tag #'left { \clef bass <b g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' c'!>4 <c'' e'> r2 }
  \tag #'left { \clef bass <g c>4 <g c> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''2 b'16 c'' b' c'' d''8 b' } { e'2 f' } }
  \tag #'left { \clef bass \split { g1~ } { r4 c d g, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 c'' b'16 c'' b' c'' d''8 b' } { r4 e' f'2 } }
  \tag #'left { \clef bass \split { g4 g2.~ } { r4 c d g, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 c'' d' a' } { s2 <d' c'> } }
  \tag #'left { \clef bass \split { g2 a } { e4 c f d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d'4 g' e' } { b2 c'4 } r4 }
  \tag #'left { \clef bass g4 g, \tuplet 3/2 { c8 g fis } \tuplet 3/2 { f! e d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 \split { g'2 f'4 } { e'4 d' d' } }
  \tag #'left { \clef bass \split { r4 g2~ g4 } { c2 b,16 c b, c d8 b, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { e'4 g'2 f'4 } { c'4 e' d' d' } }
  \tag #'left { \clef bass \split { g4 g2~ g4 } { g,4 c b,16 c b, c d8 b, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' c' g>4 r4 <a' e' c' a>4 r }
  \tag #'left { \clef bass g,4 c2 fis,4~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' e' c' g>4 r4 \clef bass <b g f! d> r }
  \tag #'left { \clef bass fis,4 g,2 <g, g,,>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'16 e' g' c'' e' e'' e' e'' e' g' c'' e'' g' g'' g' g'' }
  \tag #'left { \clef bass <c g, e, c,>4 \clef treble c'8 c' c'4 e'8 e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 c'' e'' g'' c'' c''' c'' c''' c'' e'' g'' c''' e'' e''' e'' e''' }
  \tag #'left { \clef treble e'4 g'8 g' g'4 c''8 c'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''16 e''' d'' d''' d'' d''' c'' c''' c'' c''' b' b'' b' b'' a' a'' }
  \tag #'left { \clef treble c''8[ b'] b'[ a'] a'[ g'] g'[ f'] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 a'' g' g'' g' g'' f' f'' f' f'' e' e'' e' e'' d' d'' }
  \tag #'left { \clef treble f'8[ e'] e'[ d'] d'[ c'] c'[ b] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'16 e' g' c'' e' e'' e' e'' e' g' c'' e'' g' g'' g' g'' }
  \tag #'left { \clef bass <c g, e, c,>4 \clef treble c'8 c' c'4 e'8 e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 c'' e'' g'' c'' c''' c'' c''' c'' e'' g'' c''' e'' e''' e'' e''' }
  \tag #'left { \clef treble e'4 g'8 g' g'4 c''8 c'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''16 e''' d'' d''' d'' d''' c'' c''' b' b'' a' a'' a' a'' g'! g''! }
  \tag #'left { \clef treble c''8[ b'] gis'[ a'] e'[ f'] b[ cis'] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 g'' f' f'' f' f'' e' e'' e' e'' d' d'' d' d'' c' c'' }
  \tag #'left { \clef treble d'8 \clef bass d4 e8 f4 fis }
  \tag #'common { s1 }
  |
\beginRevisionSection
  \tag #'right { \clef treble <b' b>4 r r b''8.\trill a''32 b'' }
  \tag #'left { \clef bass g,16 g fis g a g fis g f g d g f g d g }
  \tag #'common { s1 }
  |
\endRevisionSection
  \tag #'right { \clef treble c'''4. c'''32 b'' a'' g'' f''8 <f'' d''> <e'' c''> <e'' c''> }
  \tag #'left { \clef bass e16 g c g e g c g b, g fis g c g fis g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' b'>4 r r <d''' b''>8.\trill c'''32 d''' }
  \tag #'left { \clef bass g,16 g fis g a g fis g f g d g f g d g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e''' c'''>4. \tuplet 6/4 { e'''32 d''' c''' b'' a'' g'' } f''8 <f'' d''> <e'' c''> <e'' c''> }
  \tag #'left { \clef bass c16 g e g c g f g b, g fis g c g fis g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' b'>16 g'' fis'' e'' d'' c'' b' a' g' g' fis'! e' d' c' b a }
  \tag #'left { \clef bass g,4 r r16 g fis e d c b, a, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g4 r r2 }
  \tag #'left { \clef bass g,4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(0 . 0) ##f \markup \sharp d''4 e''8 fis'' g'' a'' bes'' d'' }
  \tag #'left { \clef bass g8 bes d' bes d' bes g bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { e''8 } d''8 cis'' cis'' cis'' cis''2 }
  \tag #'left { \clef bass g8 a e' a e' a g a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''!8 fis'' a'' fis'' c''' a'' fis'' c'' }
  \tag #'left { \clef bass fis8 a d' a d' a fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'!8 aes'' g'' f''! ees'' d'' c'' b' }
  \tag #'left { \clef bass f!8 g d' g d' g f g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 c''2 bes'4~ }
  \tag #'left { \clef bass ees8 g c' g d g bes g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes'4 a'2 g''4 }
  \tag #'left { \clef bass cis8 e a e a e cis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''8 a'' b''! cis''' d''' e''' f''' a'' }
  \tag #'left { \clef bass d8 f a f a f d f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { b''8 } a''8 gis'' gis'' gis'' gis''2 }
  \tag #'left { \clef bass d8 e b e b e d e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''!8 a'' cis''' a'' e''' cis''' a'' g'' }
  \tag #'left { \clef bass cis8 e a e a e cis e }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis''8 ees''' d''' c'''! bes'' a'' g'' fis'' }
  \tag #'left { \clef bass c!8 d a d a d c d }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''4 g''2 f''!4~ }
  \tag #'left { \clef bass bes,8 d g d a, d f d }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 e''2 d'''4 }
  \tag #'left { \clef bass gis,8 b, e gis b gis e gis }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4 a''16 g'' f'' e'' d'' c'' b' a' gis' a' b' gis' }
  \tag #'left { \clef bass a8 <e' c'> <e' c'> <e' c'> <e' c'> <e' c'> <e' d'> <e' d'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'4 r <fis'' d'' c'' a' fis'> r }
  \tag #'left { \clef bass a8 <e' c'> <e' c'> <e' c'> d <d' c'> <d' c'> <d' c'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' d'' bes' g'>4 g''16 f''! ees'' d'' c'' bes' a' g' fis' g' a' fis' }
  \tag #'left { \clef bass g8 <d' bes> <d' bes> <d' bes> <d' bes> <d' bes> <d' c'> <d' c'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 r <cis''' g'' cis''> r }
  \tag #'left { \clef bass g8 <d' bes> <d' bes> <d' bes> ees ees'! ees' ees' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d''' a'' fis'' d''>4 d'''16 cis''' b'' a'' g'' fis'' e'' d'' cis'' d'' e'' cis'' }
  \tag #'left { \clef bass <d' d>8 <a fis> <a fis> <a fis> <a fis> <a fis> <e'! d>[ <a g>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 d''16 cis'' b' a' g' fis' e' d' cis'! d' e' cis' }
  \tag #'left { \clef bass <d' d>8 <a fis> <a fis> <a fis> <a fis> <a fis> d[ <a g>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'8 cis'\turn d' e' fis' e'\turn fis' g' }
  \tag #'left { \clef bass <a fis d>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'8 gis'\turn a' b' d'' c''! b' a' }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'!8 d' cis' d' g' d' b' d' }
  \tag #'left { \clef bass <d g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''2 b'4 g' }
  \tag #'left { \clef bass \split { r8 d cis d g d b d } { b,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'8 d' cis' d' fis' d' a' d' }
  \tag #'left { \clef bass \split { c'!2 a4 fis } { c!1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''2 a'4 fis' }
  \tag #'left { \clef bass \split { r8 d cis d fis d a d } { a,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'8 d' cis' d' g' d' b' g' }
  \tag #'left { \clef bass <b b,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''8 b' g'' d'' b'' a'' g'' fis'' }
  \tag #'left { \clef bass <g e d g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''8 d'' cis'' b' a' g' fis' e' }
  \tag #'left { \clef bass <g e cis a,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'8 cis' d' e' d' c' b a }
  \tag #'left { \clef bass <fis d>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g4 r r2 }
  \tag #'left { \clef bass g,8 d cis d g d b d }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 d''\prall cis'' d'' g'' d'' b'' d'' }
  \tag #'left { \clef bass \split { d'2 b4 g } { b,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''2 a''4 fis'' }
  \tag #'left { \clef bass \split { fis8 d cis d fis d a d } { a,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 d''\prall cis'' d'' fis'' d'' a'' d'' }
  \tag #'left { \clef bass \split { c'!2 a4 fis } { c!1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b''8 g''\prall fis'' g'' b'' g'' d''' b''\trill }
  \tag #'left { \clef bass <g d b,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'''!8 d''' b'' g'' f''! d'' b' f'! }
  \tag #'left { \clef bass <b f! d g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'16 g' c'' e'' g' g'' g' g'' g' c'' e'' g'' c'' c''' c'' c''' }
  \tag #'left { \clef bass <c' g e c>4 \clef treble <e' c'>8 <e' c'> <e' c'>4 <g' e'>8 <g' e'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''16 e'' g'' c''' e'' e''' e'' e''' e'' e''' c''' g'' e'' c'' g' e' }
  \tag #'left { \clef treble <g' e'>4 <c'' g'>8 <c'' g'> <c'' g'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis'16 a' d'' fis''! a' a'' a' a'' a' d'' fis'' a'' d'' d''' d'' d''' }
  \tag #'left { \clef bass <c' a fis c>4 \clef treble <fis'! c'>8 <fis' c'> <fis' c'>4 <c'' fis'>8 <c'' fis'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16 fis'' a'' d''' a' a'' a' a'' a' a'' fis'' d'' a' fis'! d' a }
  \tag #'left { \clef treble <c'' fis'>4 <fis' c'>8 <fis' c'> <fis' c'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b16 d' g' b' d' d'' d' d'' d' g' b' d'' g' g'' g' g'' }
  \tag #'left { \clef bass <g d b,>4 <b g>8 <b g> <b g>4 <d' b>8 <d' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 b' d'' g'' b' b'' b' b'' b' d'' g'' b'' d'' d''' d'' d''' }
  \tag #'left { \clef bass <d' b>4 \clef treble <g' d'>8 <g' d'> <g' d'>4 <b' g'>8 <b' g'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16 d''' cis'' cis''' e'' e''' d'' d''' d'' d''' cis''! cis'''! e'' e''' d'' d''' }
  \tag #'left { \clef treble <b' g'>8 ais' c''! b' <b' g'> ais' c''! b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16 d''' cis'' cis'''! e'' e''' d'' d''' d'' d''' cis'' cis''' e'' e''' d'' d''' }
  \tag #'left { \clef treble <b' g'>8 ais' c''! b' <b' g'> ais' c''! b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d''' d''>4 <fis'' c''!> <b'' b'> <d'' a'> }
  \tag #'left { \clef treble r8 <b b'>4 <a a'> <g g'> \clef bass <fis fis'>8~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' g'>4 <b' fis'> <e'' e'> <g' d'> }
  \tag #'left { \clef bass <fis fis'>8 <e e'>4 <d d'> <c' c> <b~ b,~>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' c'>4 <e' b> <a' a> <cis' g> }
  \tag #'left { \clef bass <b b,>8 <a a,>4 <g g,> <fis fis,> <e~ e,~>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <d' fis>4 <d' fis d> <d' g e> <d' a fis> }
  \tag #'left { \clef bass <e e,>8 <d d,>4 <c! c,!> <b, b,,> <a, a,,>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <d' b g>4 r \clef treble \tuplet 3/2 { g8 b d' } g'16 b' d'' g'' }
  \tag #'left { \clef bass r4 <g, g,,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 r \tuplet 3/2 { g8 b dis' } g'16 b' dis''! g'' }
  \tag #'left { \clef bass r4 <dis dis,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 r \tuplet 3/2 { g8 b e' } g'16 b' e'' g'' }
  \tag #'left { \clef bass r4 <e e,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' c'>4 r <d'' d'> r }
  \tag #'left { \clef bass <c c,>4 r <d d,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' g>4 r c' c' }
  \tag #'left { \clef bass <g, g,,>4 r c c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { d'8 } c'8\trill b16 c' a4 <fis' c'>2 }
  \tag #'left { \clef bass \acciaccatura { d8 } c8\trill b,16 c a,4 <a d>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' b>4 r c' c' }
  \tag #'left { \clef bass <g g,>4 r c c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { d'8 } c'8\trill b16 c' a4 <a' fis'>2 }
  \tag #'left { \clef bass \acciaccatura { d8 } c8\trill b,16 c a,4 <c' d>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' g'>4 r c' c' }
  \tag #'left { \clef bass <b g>4 r c c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { d'8 } c'8\trill b16 c' a4 \acciaccatura { g'8 } fis'8\trill e'16 fis' d'4 }
  \tag #'left { \clef bass \acciaccatura { d8 } c8\trill b,16 c a,4 \acciaccatura { g8 } fis8\trill e16 fis d4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { c''8 } b'8\trill a'16 b' g'4 \acciaccatura { f''!8 } e''8\trill dis''16 e'' cis''4 }
  \tag #'left { \clef bass \acciaccatura { c'8 } b8\trill a16 b g4 \acciaccatura { f'!8 } e'8\trill dis'16 e' cis'4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''!4 r <fis'' d'' c''! a'> r }
  \tag #'left { \clef bass d'!4 r <d a, fis, d,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 g'' fis' fis''! g' g'' a' a'' b' b'' c'' c''' cis'' cis'''! d'' d''' }
  \tag #'left { \clef bass g,16 g fis, fis! g, g a, a b, b c c' cis cis'! d d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''16 e''' d'' d''' c''! c'''! b' b'' a' a'' b' b'' c'' c''' a' a'' }
  \tag #'left { \clef bass e16 e' d d' c! c'! b, b a, a b, b c c' a, a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 g'' fis' fis''! e' e'' d' d'' c' c'' b b' a a' g g' }
  \tag #'left { \clef bass g,16 g fis, fis! e, e d, d c, c b,, b, a,, a, g,, g, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass fis16 fis' e e' d d' cis cis' d d' c c' b, b a, a }
  \tag #'left { \clef bass fis,8 e, d, cis, d, c,! b,, a,, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass g4 r \clef treble <fis'' d'' c'' a' fis'> r }
  \tag #'left { \clef bass <g, g,,>4 r <d a, fis, d,> r }
  \tag #'common { s1 }
  |

  }
  \alternative {
    {

  \tag #'right { \clef treble <g'' d'' b' g'>4 r r2 }
  \tag #'left { \clef bass <g, d, b,, g,,>4 r r2 }
  \tag #'common { s1 }
  |

    }
    {

  \tag #'right { \clef treble <g'' d'' b' g'>4 r d' d' }
  \tag #'left { \clef bass <g, d, b,, g,,>4 r d d }
  \tag #'common { s1 }
  |

    }
  }

  \tag #'right { \clef treble \acciaccatura { e'8 } d'8\trill cis'16 d' b4 <b' d'>2 }
  \tag #'left { \clef bass \acciaccatura { e8 } d8\trill cis16 d b,4 <g~ f!>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''! c'!>4 r g' g' }
  \tag #'left { \clef bass <g ees>4 r g g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { aes'8 } g'8\trill f'16 g' e'!4 <e'' g'>2 }
  \tag #'left { \clef bass \acciaccatura { aes8 } g8\trill f16 g e!4 <c'~ bes>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' f'>4 r aes' aes' }
  \tag #'left { \clef bass <c' aes>4 r aes aes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { bes'8 } aes'8\trill g'16 aes' f'4 \acciaccatura { ees''8 } d''8\trill c''16 d'' bes'!4 }
  \tag #'left { \clef bass \acciaccatura { bes8 } aes8\trill g16 aes f4 \acciaccatura { ees'8 } d'8\trill c'16 d' bes!4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { g''8 } f''8\trill e''!16 f'' d''4 \acciaccatura { bes''8 } aes''8\trill g''16 aes'' f''4 }
  \tag #'left { \clef treble \acciaccatura { g'8 } f'8\trill e'!16 f' d'4 \acciaccatura { bes'8 } aes'8\trill g'16 aes' f'4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''16 d''' aes'' f''' d'' aes'' f'' d''' aes'! f'' d'' aes'' f' d'' aes' f'' }
  \tag #'left { \clef bass <bes, f, d, bes,,>1~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'16 aes' f' d'' aes f' d' aes' f d' aes f' aes f' d' aes' }
  \tag #'left { \clef bass <bes, f, d, bes,,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f16 d' aes f' aes f' d' aes'! d' aes' f' d'' f' d'' aes' f'' }
  \tag #'left { \clef bass <b,! f, d, b,,!>1~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes'16 f'' d'' aes''! d'' aes'' f'' d''' f'' d''' aes'' f''' d'' aes'' f'' d''' }
  \tag #'left { \clef bass <b, f, d, b,,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''16 c''' aes'' f''' c'' aes'' f'' c''' aes'! f'' c'' aes'' f' c'' aes' f'' }
  \tag #'left { \clef bass <c~ aes,~ f,~ c,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'16 aes' f' c'' aes f' c' aes' f c' aes f' aes f' c' aes' }
  \tag #'left { \clef bass <c aes, f, c,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble eis16 b gis eis'! gis eis' b gis'! b gis' eis' b' eis' b' gis' eis''! }
  \tag #'left { \clef bass <cis~ gis,~ eis,~ cis,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble gis'16 eis'' b' gis''! b' gis'' eis'' b'' gis' eis'' b' gis'' b' gis'' eis'' b'' }
  \tag #'left { \clef bass <cis gis, eis, cis,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 fis'' cis'' a'' fis'! cis'' a' fis'' cis'! a' fis' cis'' a fis' cis' a' }
  \tag #'left { \clef bass <cis~ a,~ fis,~ cis,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fis16 cis' a fis'! a fis' cis' a' fis cis' a fis' a fis' cis' a' }
  \tag #'left { \clef bass <cis a, fis, cis,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g16 a e' g' fis a dis' fis'! g a  e' g' fis a dis' fis' }
  \tag #'left { \clef bass <cis~ a,~ e,~ cis,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g16 a e' g' fis a dis' fis'! g a e' g' g a e' g' }
  \tag #'left { \clef bass <cis a, e, cis,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis' d'!>2 <e' cis'>16 <fis' d'> <e' cis'> <fis' d'> <g' e'>8 <fis' d'> }
  \tag #'left { \clef bass <a d>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' cis'>4 <a' cis'> r2 }
  \tag #'left { \clef bass <a a,>4 <a a,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'2 fis'16 g' fis' g' a'8 g' } { cis'1 } }
  \tag #'left { \clef bass <a e a,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis' d'>4 <d'' fis'> r2 }
  \tag #'left { \clef bass <a d>4 <a d> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' fis'>2 c''!16 d'' c'' d'' ees''8 c'' }
  \tag #'left { \clef bass <d' a fis d>4 <d d,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'16 bes' a' bes' c''8 a' fis'16 g' fis' g' a'8 fis' }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 r <ees'' ees'> <ees'''~ ees''~> }
  \tag #'left { \clef bass <d d,>4 <d' d>2 <c' c>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <ees''' ees''>4 <d''' d''> c'' <c''' c''> }
  \tag #'left { \clef bass <bes bes,>4 \clef treble <bes' bes>2 <a' a>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b''! g'' d'' b'!>4 r f''16 g'' f'' g'' aes''8 f'' }
  \tag #'left { \clef treble <g' g>4 \clef bass <g g,>4 r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16 ees'' d'' ees'' f''8 d'' b'16 c'' b' c'' d''8 b' }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 r <aes' aes> <aes''~ aes'~> }
  \tag #'left { \clef bass <g, g,,>4 <g g,>2 <f f,>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <aes'' aes'>4 <g'' g'> <f'' f'> <f''' f''> }
  \tag #'left { \clef bass <ees ees,>4 <ees' ees>2 <d' d>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'''! c''' g'' e''!>4 r bes''16 c''' bes'' c''' des'''8 bes'' }
  \tag #'left { \clef bass <c' c>4 \clef treble <c' c''> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''16 aes'' g'' aes'' bes''8 g'' e''16 f'' e'' f'' g''8 e'' }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4 r <des'' des'> <des'''~ des''~> }
  \tag #'left { \clef bass <c c,>4 <c' c>2 <bes bes,>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <des''' des''>4 <c''' c''> bes' <bes''~ bes'~> }
  \tag #'left { \clef bass <aes aes,>4 <aes aes'>2 <g g'>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <bes'' bes'>4 <aes'' aes'> g' <g''~ g'~> }
  \tag #'left { \clef bass <f f,>4 <f f'>2 <ees  ees'>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' g'>4 <f'' f'> ees' <ees'' ees'> }
  \tag #'left { \clef bass <d d,>4 <d' d>2 <c' c>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 <d'' c'' d'> e'! <e'' c'' e'!> }
  \tag #'left { \clef bass r4 <f c f,> r <g c g,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'4 <f'' c'' f'> ees' <ees''! c'' ees'> }
  \tag #'left { \clef bass r4 <aes c aes,> r <fis c fis,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' b' d'>4 r r s }
  \tag #'left { \clef bass \split { g2 fis16 g fis g \stemDir #AUTO { \change Staff = "right" a8 \change Staff = "left" fis } } { g,1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { fis'2 fis'16 g' fis' g' a'8 fis' } { c'1 } }
  \tag #'left { \clef bass \split { ees4 d2. } { g,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' b>4 <b' d'> r s }
  \tag #'left { \clef bass \split { g2 fis16 g fis g \stemDir #AUTO { \change Staff = "right" a8 \change Staff = "left" fis } } { g,1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { <a' fis'>2 a'16 b' a' b' c''8 a' } { c'1 } }
  \tag #'left { \clef bass \split { ees4 d2. } { g,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { <b' g'>4 <d'' b'>} { d'2 } r4 s }
  \tag #'left { \clef bass \split { g2 fis16 g fis g \stemDir #AUTO { \change Staff = "right" a8 \change Staff = "left" fis } } { g,1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { fis''2 fis''16 g'' fis'' g'' a''8 fis'' } { c''1 } }
  \tag #'left { \clef bass \split { ees4 d2. } { g,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { f''!8 } f'''!2 d'''16 e''' d''' e''' f'''8 d''' }
  \tag #'left { \clef bass <b~ f!~ d~ g,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b''16 c''' b'' c''' d'''8 b'' f''16 g'' f'' g'' a''8 f'' }
  \tag #'left { \clef bass <b~ f~ d~ g,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16 e'' d'' e'' f''8 d'' b'16 c'' b' c'' d''8 b' }
  \tag #'left { \clef bass <b~ f~ d~ g,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'16 g' f' g' a'8 f' d'16 e' d' e' f'8 d' }
  \tag #'left { \clef bass <b f d g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' c'>2 <d' b>16 <e' c'> <d' b> <e' c'> <f' d'>8 <e' c'> }
  \tag #'left { \clef bass <g c>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d' b>4 <g' b> r2 }
  \tag #'left { \clef bass <g g,>4 <g g,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f' d'>2 <e' cis'>16 <f' d'> <e' cis'> <f' d'> <g' e'>8 <f' d'> }
  \tag #'left { \clef bass <b g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' c'!>4 <c'' e'> r2 }
  \tag #'left { \clef bass <g c>4 <g c> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''2 b'16 c'' b' c'' d''8 b' } { e'2 f'4 d' } }
  \tag #'left { \clef bass \split { g1~ } { r4 c d f } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 c'' b'16 c'' b' c'' d''8 b' } { g'4 e' f' d' } }
  \tag #'left { \clef bass \split { g4 g2.~ } { e4 c d f } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 c'' d' a' } { s2 <d' c'> } }
  \tag #'left { \clef bass \split { g2 a } { e4 c f d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d'4 g' e' } { b2 c'4 } r4 }
  \tag #'left { \clef bass g4 g, c r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <e'' e'>4 <e'' e'> <f'' f'> <fis'' fis'>8~ }
  \tag #'left { \clef bass <g g,>4 <c' c> <d d,> <a a,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis'' fis'>8 <g'' g'>4 <f''! f'!>8 <f'' f'> <e'' e'> <d'' d'> <c'' c'> }
  \tag #'left { \clef bass <b, b,,>4 <g g,> <c c,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <a'' a'>4 <a'' a'> <bes'' bes'> <b''!~ b'!~>8 }
  \tag #'left { \clef bass <c' c>4 <f' f> <g g,> <d' d> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b'' b'>8 <c''' c''>4 <bes'' bes'>8 <bes'' bes'> <a'' a'> <g'' g'> <f'' f'> }
  \tag #'left { \clef bass <e e,>4 <c' c> <f f,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' a'>4 <d''' d''> <d'' d'> <b''! b'!> }
  \tag #'left { \clef bass r8 <f f,>4 <fis fis,> <g g,> <gis~ gis,~>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <cis'' cis'>4 <a'' a'> <c''! c'!> <a'' a'> }
  \tag #'left { \clef bass <gis gis,>8 <a a,>4 <g! g,!>8 <g g,> <fis fis,> <e e,> <d d,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' b>4 <g'' g'> <bes' bes> <g'' g'> }
  \tag #'left { \clef bass r8 <g g,>4 <f! f,!>8 <f f,> <e e,> <d d,> <c c,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a' a>4 <f''~ f'~> <f'' f'>8 <e'' e'> <d'' d'> <c'' c'> }
  \tag #'left { \clef bass r8 <f f,>4 <e e,>8 <d d,> <e e,> <f f,> <fis fis,> }
  \tag #'common { s1 }
  |
\beginRevisionSection
  \tag #'right { \clef treble <b' b>4 r r b''8.\trill a''32 b'' }
  \tag #'left { \clef bass g,16 g fis g a g fis g f! g d g f g d g }
  \tag #'common { s1 }
  |
\endRevisionSection
  \tag #'right { \clef treble c'''4. c'''32 b'' a'' g'' f''8 <f'' d''> <e'' c''> <e'' c''> }
  \tag #'left { \clef bass e16 g c g e g c g b, g fis g c g fis g }
  \tag #'common { s1 }
  |
\beginRevisionSection
  \tag #'right { \clef treble <d'' b'>4 r r <d''' b''>8.\trill c'''32 d''' }
  \tag #'left { \clef bass g,16 g fis g a g fis g f! g d g f g d g }
  \tag #'common { s1 }
  |
\endRevisionSection
  \tag #'right { \clef treble <e''' c'''>4. \tuplet 6/4 { e'''32 d''' c''' b'' a'' g'' } f''8 <f'' d''> <e'' c''> <e'' c''> }
  \tag #'left { \clef bass c16 g e g c g e g b, g fis g c g fis g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' b'>16 g'' fis'' e'' d'' c'' b' a' g' g' fis' e' d' c' b a }
  \tag #'left { \clef bass g,4 r r16 g fis e d c b, a, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g4 r r2 }
  \tag #'left { \clef bass g,4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \turnInside 8 #4.5 #'(0 . 0) ##f \markup \sharp g''4 a''8 b'' c''' d''' ees''' g'' }
  \tag #'left { \clef treble c'8 ees' g' ees' g' ees' c' ees' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { a''8 } g''8 fis'' fis'' fis'' fis''2 }
  \tag #'left { \clef treble c'8 d' a' d' a' d' c' d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''!8 b'' d''' b'' f''' d''' b'' f'' }
  \tag #'left { \clef treble b8 d' g' d' g' d' b d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''!8 des''' c''' bes'' aes'' g'' f'' e'' }
  \tag #'left { \clef treble bes8 c' g' c' g' c' bes c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 f''2 ees''4~ }
  \tag #'left { \clef bass aes8 c' f' c' g c' ees' c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees''4 d''2 c'''4 }
  \tag #'left { \clef bass fis8 a! d' a fis a fis d }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''8 d'' e''! fis'' g'' a'' bes'' d'' }
  \tag #'left { \clef bass g8 bes d' bes d' bes g bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { e''8 } d''8 cis'' cis'' cis'' cis''2 }
  \tag #'left { \clef bass g8 a e' a e' a g a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''!8 fis'' a'' fis'' c''' a'' fis'' c'' }
  \tag #'left { \clef bass fis8 a d' a d' a fis a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 aes'' g'' f''! ees'' d'' c'' b' }
  \tag #'left { \clef bass f!8 g d' g d' g f g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 c''2 bes'4~ }
  \tag #'left { \clef bass ees8 g c' g d g bes g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes'4 a'2 g''4 }
  \tag #'left { \clef bass cis8 e! a e cis e a cis'! }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 d'''16 c''' bes'' a'' g'' f'' e'' d'' cis'' d'' e'' cis'' }
  \tag #'left { \clef treble d'8 <a' f'> <a' f'> <a' f'> <a' f'> <a' f'> <a' g'> <a' g'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''4 r <b''! g'' f'' d'' b'!> r }
  \tag #'left { \clef treble d'8 <a' f'> <a' f'> <a' f'> g <g' f'> <g' f'> <g' f'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' g'' ees'' c''>4 c'''16 b'' aes'' g'' f'' ees'' d'' c'' b'! c'' d'' b' }
  \tag #'left { \clef treble c'8 <g' ees'> <g' ees'> <g' ees'> <g' ees'> <g' ees'> <g' f'> <g' f'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4 r <fis'' c'' fis'> r }
  \tag #'left { \clef treble c'8 <g' ees'> <g' ees'> <g' ees'> \clef bass aes, <c' aes!> <c' aes> <c' aes> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g'' d'' b' g'>4 g''16 fis'' e''! d'' c'' b' a' g' fis'! g' a' fis' }
  \tag #'left { \clef bass g,8 <d' b> <d' b> <d' b> <d' b> <d' b> g <d' c'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 g''16 fis'' e'' d'' c'' b' a' g' fis'! g' a' fis' }
  \tag #'left { \clef bass g8 <d' b> <d' b> <d' b> <d' b> <d' b> g <d' c'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'8 fis'\turn g' a' b' ais'\turn b' c'' }
  \tag #'left { \clef bass <d' b g>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''8 cis''\turn d'' e'' g'' f''! e'' d'' }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''!8 g' fis' g' c'' g' e'' g' }
  \tag #'left { \clef bass <c' g e c>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''2 e''4 c'' }
  \tag #'left { \clef bass \split { r8 g fis g c' g e' g } { e1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'8 g' fis' g' b' g' d'' g' }
  \tag #'left { \clef bass \split { f'!2 d'4 b } { f!1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''!2 d''4 b' }
  \tag #'left { \clef bass \split { r8 g fis g b g d' g } { d1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''8 g' fis' g' c'' g' e'' c'' }
  \tag #'left { \clef bass \split { e'2 c'4 g } { e1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8 e'' c''' g'' e''' d''' c''' b'' }
  \tag #'left { \clef bass <a g e c>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a''8 g'' fis'' e'' d'' c'' b' a' }
  \tag #'left { \clef bass <c' a fis d>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'8 fis' g' a' g' f'! e' d' }
  \tag #'left { \clef bass <b g>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'4 r r2 }
  \tag #'left { \clef bass c8 g fis g c' g e' g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g''\prall fis'' g'' c''' g'' e''' g'' }
  \tag #'left { \clef bass \split { g'2 e'4 c' } { e1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'''!2 d'''4 b'' }
  \tag #'left { \clef bass \split { b8 g fis g b g d' g } { d1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g''\prall fis'' g'' b'' g'' d''' g'' }
  \tag #'left { \clef bass \split { f'!2 d'4 b } { f!1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e'''8 c''\prall b' c'' e'' c'' g'' c'' }
  \tag #'left { \clef bass <c' e>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''8 g'' e'' c'' bes'! g' e' bes! }
  \tag #'left { \clef bass <e c g, e,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a16 c' f' a' c' c'' c' c'' c' f' a' c'' f' f'' f' f'' }
  \tag #'left { \clef bass <f c a, f,>4 <a f>8 <a f> <a f>4 <c' a>8 <c' a> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'16 a' c'' f'' a' a'' a' a'' a' a'' f'' c'' a' f' c' a }
  \tag #'left { \clef bass <c' a>4 <f' c'>8 <f' c'> <f' c'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b!16 d' g' b' d' d'' d' d'' d' g' b' d'' g' g'' g' g'' }
  \tag #'left { \clef bass <f d b,! f,>4 <b f>8 <b f> <b f>4 <d' b>8 <d' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 b' d'' g'' b' b'' b' b'' b' b'' g'' d'' b' g' d' b }
  \tag #'left { \clef bass <d' b>4 <f' d'>8 <f' d'> <f' d'>4 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'16 e' g' c'' e' e'' e' e'' e' g' c'' e'' g' g'' g' g'' }
  \tag #'left { \clef bass <e c g, e,>4 <c' g>8 <c' g> <c' g>4 \clef treble <e' c'>8 <e' c'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 c'' e'' g'' c'' c''' c'' c''' c'' e'' g'' c''' e'' e''' e'' e''' }
  \tag #'left { \clef treble <e' c'>4 <g' e'>8 <g' e'> <g' e'>4 <c'' g'>8 <c'' g'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''16 e''' dis'' dis'''! f''! f'''! e'' e''' e'' e''' dis'' dis''' f'' f''' e'' e''' }
  \tag #'left { \clef treble <c'' g'>8 <c'' fis'> <c'' a'> <c'' g'> <c'' g'> <c'' fis'> <c'' a'> <c'' g'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''16 e''' dis'' dis'''! f''! f'''! e'' e''' e'' e''' dis'' dis''' f'' f''' e'' e''' }
  \tag #'left { \clef treble <c'' g'>8 <c'' fis'> <c'' a'> <c'' g'> <c'' g'> <c'' fis'> <c'' a'> <c'' g'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e''' e''>4 <g'' d''> <c''' c''> <e'' b'> }
  \tag #'left { \clef treble r8 <c'' c'>4 <b' b> <a' a> <g' g>8~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' a'>4 <c'' g'> <f'' f'> <a' e'> }
  \tag #'left { \clef treble <g' g>8 \clef bass <f' f>4 <e' e> <d' d> <c'~ c~>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' d'>4 <fis' c'> <b' b> <d' a> }
  \tag #'left { \clef bass <c' c>8 <b b,>4 <a a,> <g g,> <f!~ f,!~>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' g>4 \clef bass <b g f> <c' g e> <d' g d> }
  \tag #'left { \clef bass <f f,>8 <e e,>4 <d d,> <c c,> <b, b,,>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <e' c' g e>4 r \clef treble \tuplet 3/2 { c'8 e' g' } c''16 e'' g'' c''' }
  \tag #'left { \clef bass r4 <c c,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4 r \tuplet 3/2 { c'8 e' gis' } c''16 e'' gis'' c''' }
  \tag #'left { \clef bass r4 <gis, gis,,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4 r \tuplet 3/2 { c'8 e' a' } c''16 e'' a'' c''' }
  \tag #'left { \clef bass r4 <a, a,,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' f'>4 r <g'' g'> r }
  \tag #'left { \clef bass <f f,>4 r <g g,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' c'>4 r f' f' }
  \tag #'left { \clef bass <c c,>4 r f f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { g'8 } f'8\trill e'16 f' d'4 <b' f'>2 }
  \tag #'left { \clef bass \acciaccatura { g8 } f8\trill e16 f d4 <d' g>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' e'>4 r f' f' }
  \tag #'left { \clef bass <c' c>4 r f f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { g'8 } f'8\trill e'16 f' d'4 <d'' b' g'>2 }
  \tag #'left { \clef bass \acciaccatura { g8 } f8\trill e16 f d4 <f' g>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' c'' g'>4 r f' f' }
  \tag #'left { \clef bass <e' c'>4 r f f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { g'8 } f'8\trill e'16 f' d'4 \acciaccatura { c''8 } b'8\trill a'16 b' g'4 }
  \tag #'left { \clef bass \acciaccatura { g8 } f8\trill e16 f d4 \acciaccatura { c'8 } b8\trill a16 b g4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura { g''8 } f''8\trill e''16 f'' d''4 \acciaccatura { c'''8 } b''8\trill a''16 b'' g''4 }
  \tag #'left { \clef treble \acciaccatura { g'8 } f'8\trill e'16 f' d'4 \acciaccatura { c''8 } b'8\trill a'16 b' g'4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'''~ aes'' ees'' c''>2 c'''8 c''' ees''' c''' }
  \tag #'left { \clef bass <aes,~ ees,~ c,~ aes,,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes''8 c''' ees'' aes'' c'' ees'' aes'! c'' }
  \tag #'left { \clef bass <aes,~ ees,~ c,~ aes,,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees'8 aes' c' ees' \clef bass aes c' ees aes }
  \tag #'left { \clef bass <aes,~ ees,~ c,~ aes,,~>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass c8 ees r4 r2 }
  \tag #'left { \clef bass <aes, ees, c, aes,,>4 aes,8 c ees, aes, c, ees, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r2 \splitFour { c8 ees \once \shiftOff aes c'~ } { s4 \stemDir #DOWN { \once \shiftOff aes } } { s8 ees_~ \shiftOn \once \override NoteColumn.force-hshift = #0.5 ees4 } { c2 } }
  \tag #'left { \clef bass \splitFour { aes,,8 c, \once \shiftOff ees, aes,~ \once \shiftOff aes,2~ } { s4 \stemDir #DOWN { \once \shiftOff \shape #'((1 . 0.5) (1 . 0.8) (0 . 0.8) (0 . 0.5)) Tie ees,_~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie ees,2_~ } } { s8 c,_~ \shiftOn \once \override NoteColumn.force-hshift = #0.5 c,4_~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie c,2~ } { aes,,2~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie aes,,~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass \splitFour { \once \shiftOff c'1 } { \once \override NoteColumn.force-hshift = #0 as1 } { s8 \stemDir #UP { es^~ es4^~ es2 } } { \once \shiftOn \once \override NoteColumn.force-hshift = #1.5 as8 es c4~ c2 } }
  \tag #'left { \clef bass \splitFour { \once \shiftOff aes,4. aes,8~ aes,4. aes,8 } { \stemDir #DOWN { \once \shiftOff ees,2 } ees, } { \once \shiftOff c,2 s8 \stemDir #UP c,4. } { \once \shiftOff aes,,2 es,8 c, aes,,4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r2 \splitFour { des8 e! \once \shiftOff g des'~ } { s4 \stemDir #DOWN { \once \shiftOff g } } { s8 e!_~ \shiftOn \once \override NoteColumn.force-hshift = #0.5 e4 } { des2 } }
  \tag #'left { \clef bass \splitFour { bes,,8 e,! \once \shiftOff g, bes,~ \once \shiftOff bes,2~ } { s4 \stemDir #DOWN { \once \shiftOff \shape #'((1 . 0.5) (1 . 0.8) (0 . 0.8) (0 . 0.5)) Tie g,_~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie g,2_~ } } { s8 e,!_~ \shiftOn \once \override NoteColumn.force-hshift = #0.5 e,4_~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie e,2~ } { bes,,2~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie bes,,~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass \splitFour { \once \shiftOff des'1 } { \once \override NoteColumn.force-hshift = #0 g1 } { s8 \stemDir #UP { e^~ e4^~ e2 } } { \once \shiftOn \once \override NoteColumn.force-hshift = #1.5 g8 e des4~ des2 } }
  \tag #'left { \clef bass \splitFour { \once \shiftOff bes,4. bes,8~ bes,4. bes,8 } { \stemDir #DOWN { \once \shiftOff g,2 } g, } { \once \shiftOff e,2 s8 \stemDir #UP e,4. } { \once \shiftOff bes,,2 g,8 e, bes,,4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r2 \splitFour { es8 fis! \once \shiftOff a! es'~ } { s4 \stemDir #DOWN { \once \shiftOff a! } } { s8 fis!_~ \shiftOn \once \override NoteColumn.force-hshift = #0.5 fis4 } { es2 } }
  \tag #'left { \clef bass \splitFour { c,8 fis, \once \shiftOff a,! c~ \once \shiftOff c2~ } { s4 \stemDir #DOWN { \once \shiftOff \shape #'((1 . 0.5) (1 . 0.8) (0 . 0.8) (0 . 0.5)) Tie a,!_~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie a,2_~ } } { s8 fis,!_~ \shiftOn \once \override NoteColumn.force-hshift = #0.5 fis,4_~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie fis,2~ } { c,2~ \once \shiftOff \shape #'((0.8 . 0.2) (0.8 . 0.2) (0 . 0.2) (0 . 0.2)) Tie c,~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass \splitFour { \once \shiftOff es'1 } { \once \override NoteColumn.force-hshift = #0 a1 } { s8 \stemDir #UP { fis^~ fis4^~ fis2 } } { \once \shiftOn \once \override NoteColumn.force-hshift = #1.5 a8 fis es4~ es2 } }
  \tag #'left { \clef bass \splitFour { \once \shiftOff c4. c8~ c4. c8 } { \stemDir #DOWN { \once \shiftOff a,2 } g, } { \once \shiftOff fis,2 s8 \stemDir #UP fis,4. } { \once \shiftOff c,2 a,8 fis, c,4 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r4 \split { s4 f'2 } { \tuplet 3/2 { f!8 aes b } \tuplet 3/2 { f'! b aes } f4 } }
  \tag #'left { \clef bass \split { \tuplet 3/2 { d,8 aes, b, } d2~ \tuplet 3/2 { d8 b, aes, } } { d,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass r4 \split { s4 g'2 } { \tuplet 3/2 { g8 bes cis' } \tuplet 3/2 { g' cis' bes } g4 } }
  \tag #'left { \clef bass \split { \tuplet 3/2 { e,8 bes, cis } e2~ \tuplet 3/2 { e8 cis bes, } } { e,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 \split { s4 as'2 } { \tuplet 3/2 { aes8 b! d' } \tuplet 3/2 { aes' d' b } aes4 } }
  \tag #'left { \clef bass \split { \tuplet 3/2 { f,8 b,! d } f2~ \tuplet 3/2 { f8 d b, } } { f,1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 \split { s4 a'!2 } { \tuplet 3/2 { a!8 c' ees' } \tuplet 3/2 { a'! ees' c' } a4 } }
  \tag #'left { \clef bass \split { \tuplet 3/2 { fis,8 c ees } fis2~ \tuplet 3/2 { fis8 ees c } } { fis,1 } }
  \tag #'common { s1 }
  |
\beginRevisionSection
  \cadenzaOn

  \tag #'right { \clef treble <g' e' c'>2\fermata g16[ fis a g] c'[ b d' c'] e'[ dis' f' e'] g'[ fis' a' g'] c''[ b' d'' c''] e''[ dis'' f'' e''] g''[ fis'' a'' g''] c'''[ b'' d''' c'''] }
  \tag #'left { \clef bass <g e c g,>2\fermata s4 s1.. }
  \tag #'common { s2. s1.. }

  \allowBreak

  \tag #'right { \clef treble e'''4\fermata dis'''16[ e''' dis''' e'''] f'''8[ e'''] b''16[ c''' b'' c'''] d'''8[ c'''] gis''16[ a'' gis'' a''] b''8[ a''] e''16[ f'' e'' f''] g''8[ f''] cis''16[ d'' cis'' d''] e''8[ d''] }
  \tag #'left { \clef bass r4\fermata r2 \clef treble dis''16[ e'' dis'' e''] f''8[ e''] b'16[ c'' b' c''] d''8[ c''] gis'16[ a' gis' a'] b'8[ a'] e'16[ f' e' f'] g'8[ f'] }
  \tag #'common { s2. s1.. s4 }

  \allowBreak

  \tag #'right { \clef treble c''16[ d'' c'' d''] f''8[ d''] cis''16[ d'' cis'' d''] e''8[ d''] cis''16[ d'' cis'' d''] f''8[ d''] }
  \tag #'left { \clef treble e'16[ f' e' f'] a'8[ f'] e'16[ f' e' f'] g'8[ f'] e'16[ f' e' f'] a'8[ f'] }
  \tag #'common { s2. s2. }

  \allowBreak

  \tag #'right { \clef treble cis''16[ d'' e'' d''] cis''[ d'' f'' d''] cis''[ d'' e'' d''] cis''[ d'' f'' d''] }
  \tag #'left { \clef treble e'16[ f' g' f'] e'[ f' a' f'] e'[ f' g' f'] e'[ f' a' f'] }
  \tag #'common { s1 }

  \allowBreak

  \tag #'right { \clef treble cis''16[ d'' cis'' d''] cis''[ d'' cis'' d''] cis''[ d'' cis'' d''] cis''[ d'' cis'' d''] }
  \tag #'left { \clef treble e'16[ f' e' f'] e'[ f' e' f'] e'[ f' e' f'] e'[ f' e' f'] }
  \tag #'common { s2. s4 }

  \allowBreak

  \tag #'right { \clef treble d''2\trill \acciaccatura { cis''16 d'' } f''4\fermata \tuplet 3/2 { e''32[ ees'' d'' cis'' c'' b' bes' a' aes' g' fis' f'] } }
  \tag #'left { \clef treble \split { f'2\fermata } { <d' b g>2 s2 } }
  \tag #'common { s1 }

  \cadenzaOff \partial 1024 s1024
\endRevisionSection
  \tag #'right { \clef treble <e' c'>2 <d' b>16 <e' c'> <d' b> <e' c'> <f' d'>8 <e' c'> }
  \tag #'left { \clef bass <g c>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d' b>4 <g' b> r2 }
  \tag #'left { \clef bass <g g,>4 <g g,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f' d'>2 <e' cis'>16 <f' d'> <e' cis'> <f' d'> <g' e'>8 <f' d'> }
  \tag #'left { \clef bass <b g,>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' c'>4 <c'' e'> r2 }
  \tag #'left { \clef bass <g c>4 <g c> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 c''~ c'' b' } { s2 f' } }
  \tag #'left { \clef bass r2 <g g,>4 <d'~ d~> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 c''~ c'' b' } { e'2 f' } }
  \tag #'left { \clef bass <d' d>4 <c' c> <g g,> <d'~ d~> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'4 e''~ e'' d'' } { e'2 g' } }
  \tag #'left { \clef bass <d' d>4 <c' c> <b b,> <f'~ f~> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''4 g''~ g'' f'' } { g'2. s4 } }
  \tag #'left { \clef bass <f' f>4 <e' e> <d' d> <a a'>~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4 <e''' e''> a' <d''' d''> }
  \tag #'left { \clef bass <a' a>4 <g' g>2 <f' f>4~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4 <c''' c''> f' <b'' b'>}
  \tag #'left { \clef bass <f' f>4 <e' e>2 <d' d>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' a'>8[ e''] <g'' g'>[ d''] <f'' f'>[ c''] <e'' e'>[ b'] }
  \tag #'left { \clef bass c8[ <e' c'>] b,[ <d' b>] a,[ <c' a>] g,[ <b g>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d'' d'>8[ a'] <c'' c'>[ g'] <b' b>[ f'] <c'' c'>[ e'] }
  \tag #'left { \clef bass f,8[ <a f>] e,[ <g e>] d,[ <f d>] c,[ <e c>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'4 a'' r2 }
  \tag #'left { \clef bass <d a, f,>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b4 g'' r2 }
  \tag #'left { \clef bass <f d g,>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'4 c''' r2 }
  \tag #'left { \clef bass <e c a,>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble R1 }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r2 <a' f' c' a>4 <a'' f'' c'' a'> }
  \tag #'left { \clef bass <f, f,,>4 <f f,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r2 <g' e' c' g>4 <g'' e'' c'' g'> }
  \tag #'left { \clef bass <g, g,,>4 <g g,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r2 <b' f' d' b>4 <b'' f'' d'' b'> }
  \tag #'left { \clef bass <g, g,,>4 <g g,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'16 c'' b b' c' c'' d' d'' e' e'' f' f'' g' g'' a' a'' }
  \tag #'left { \clef bass c,16 c b,, b, c, c d, d e, e f, f g, g a, a }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b'16 b'' c'' c''' d'' d''' e'' e''' f'' f''' e'' e''' f'' f''' d'' d''' }
  \tag #'left { \clef bass b,16 b c c' d d' e e' f f' e e' f f' d d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''16 c''' b' b'' a' a'' g' g'' f' f'' e' e'' d' d'' c' c'' }
  \tag #'left { \clef bass c16 c' b, b a, a g, g f, f e, e d, d c, c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b16 b' a a' \clef bass g g' fis fis' g g' f f' e e' d d' }
  \tag #'left { \clef bass b,,16 b, a,, a, g,, g, fis,, fis, <g, g,,>8 f, e, d, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass c'4 r4 \clef treble <b'' g'' f'' d'' b'> r }
  \tag #'left { \clef bass <c c,>4 r <g d b, g,> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' g'' e'' c''>4 r r2\fermata }
  \tag #'left { \clef bass <c g, e' c,>4 r r2\fermata }
  \tag #'common { s1 }
  |

  \bar "|."
}

secondMovement = {
  \mark \markup { \bold "Adagio" }
  \tempo 4 = 50
  \set Score.tempoHideNote = ##t
  \time 2/4
    \set Timing.beatBase = #1/4
    \set Timing.beatStructure = #'(1 1)
  \key e \major
  \accidentalStyle default

  \tag #'right { \clef treble \split { gis'16. fis'32 gis'16 a' } { b4 } <fis' b>8 r }
  \tag #'left { \clef bass <e e,>4 <dis a,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { e'16. dis'32 e'16 fis' } { b4 } <dis'b a>8 r16 b }
  \tag #'left { \clef bass <e gis,>4 <dis fis,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e' b>16 <fis' b> <gis' e' b> <a' fis' cis'> <fis' dis'>8 r16 <b' dis'> }
  \tag #'left { \clef bass gis16 dis e <a a,> <b b,>8 r16 <fis a,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' e'>16 <a' b> <gis' b> <cis'' cis'>32 a' <fis' b>8 r }
  \tag #'left { \clef bass <gis gis,>16 <dis fis,> <e e,> <a a,>32 fis <dis b,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'16. gis'32 a'16 b' } { cis'4 } <gis' cis'>8 r }
  \tag #'left { \clef bass <fis fis,>4 <eis b,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'16. eis'32 fis'16 gis' } { cis'4 } <eis' cis' b>8 r16 <ais' e'>~ }
  \tag #'left { \clef bass <a cis a,>4 <gis cis gis,>8 r16 <cis'~ fis~> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ais' e'>16 <b' dis'> r <gis' d'>~ <gis' d'> <a' cis'> r <fis' cis'> }
  \tag #'left { \clef bass <cis' fis>16 <b b,> r <b e>~ <b e> <a a,> r <a a,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <e' b>8[ <fis' dis'> <gis' e'>] } { \stemDir #AUTO { \change Staff = "left" gis8[ \change Staff = "right" a b] } } r8 }
  \tag #'left { \clef bass \stemDir #DOWN { b,4 <e e,>8 } r16 <ais~ e~> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' fis'>8 <b'' b'>16 r <e'' e'>8 <a'' a'>16 r }
  \tag #'left { \clef bass <ais e>16 <b dis> r <gis~ d~> <gis d> <a cis> r8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { r16. bis'32 cis''[ gis' a'32. fis'64] cis'8 dis' } { s4 <a fis> } }
  \tag #'left { \clef bass r4 <b, b,,> }
  \tag #'common { s2 }
  |

  \key e \minor

  \tag #'right {
    \pushContextProperty Timing.beamExceptions
    \set Timing.beamExceptions = \beamExceptions {
      32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32] |
    }
  }

  \tag #'right { \clef treble r32 e' g' b' c'' b' e' b' r e' g' b' c'' b' e' b' }
  \tag #'left { \clef bass <e e,>4 <g g,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 dis' a' b' c'' b' dis' b' r dis' fis' b' c'' b' dis' b' }
  \tag #'left { \clef bass <fis fis,>4 <a a,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 e' g' b' c'' b' g' e' r a' fis' c'' g' b' a' c'' }
  \tag #'left { \clef bass <g g,>8 \clef treble r16 b'' c''' a'' g'' fis'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 d' g' b' c'' b' g' d' r d' g' d'' cis'' d'' g' d' }
  \tag #'left { \clef bass <g g,>4 <b b,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 fis' a' c''! b' c'' a' fis' r fis' a' ees'' d'' ees'' a' fis' }
  \tag #'left { \clef bass <a a,>4 <c' c> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 d' g' b' cis'' d'' b' g' fis' a' g' b' a' c'' b' d'' }
  \tag #'left { \clef bass <b b,>8 \clef treble r16 d''' c''' b'' a'' g'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 e' a' c'' dis'' e'' c'' a' gis' b' a' c'' b' d'' c'' e'' }
  \tag #'left { \clef bass <c' c>8 \clef treble r16 e''' d''' c''' b'' a'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' g'! a' g' b g' r a c' fis' g' fis' a fis' }
  \tag #'left { \clef bass d4 <d d,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' g' a' g' b g' r b d' g' a' g' b g' }
  \tag #'left { \clef bass g,16 \clef treble cis''8[ d''16] \clef bass b, \clef treble fis''8[ g''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 a e' g' a' g' a g' r a e' g' a' g' a g' }
  \tag #'left { \clef bass c16 \clef treble dis''8[ e''16] \clef bass cis \clef treble dis'''8[ e'''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' g' a' g' b g' r a16 c'!32 fis' c' a c' }
  \tag #'left { \clef bass d16 \clef treble cis''8[ d''16] \clef bass d \clef treble ees'8[ d'16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' g' a' g' b g' r b d' g' a' g' b g' }
  \tag #'left { \clef bass b,16 \clef treble cis''8[ d''16] \clef bass b, \clef treble g''8[ d''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 a e' g' a' g' a g' r a e' g' a' g' a g' }
  \tag #'left { \clef bass c16 \clef treble dis''8[ e''16] \clef bass cis \clef treble g''8[ e''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b16 g'32 a' g' b g' r a16 c'!32 fis' c' a c' }
  \tag #'left { \clef bass d16 \clef treble cis'8[ d'16] \clef bass d \clef treble ees'8[ d'16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' g' a' g' b g' r a b dis' e' dis' a dis' }
  \tag #'left { \clef bass <g g,>4 <fis fis,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 g b e' fis' e' g e' r g b e' fis' e' g e' }
  \tag #'left { \clef bass e,4 <g, g,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 a c' dis' e' dis' a dis' r c' dis' fis' g' fis' c' fis' }
  \tag #'left { \clef bass <fis, fis,,>4 <a, a,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' f' e' f' d' b r b gis f' a e' d' gis' }
  \tag #'left { \clef bass <gis, gis,,>8 \clef treble r16 f'' e'' d'' c'' b' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 a c' e' f' e' c' a r a c' e' f' e' c' a }
  \tag #'left { \clef bass <a, a,,>4 <c c,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 gis d' e' f' e' d' gis r gis b e' f' e' b gis }
  \tag #'left { \clef bass <b, b,,>4 <d d,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 g! ais e' fis'! g' e' cis' r cis' ais g' b fis' e' ais' }
  \tag #'left { \clef bass <cis cis,>8 \clef treble r16 g'' fis'' e'' d'' cis'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b d' fis' ais' b' b b' r b d' b' ais' b' d' b' }
  \tag #'left { \clef bass <d d,>4 <fis fis,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 c' g' b' c'' b' c' b' r c' e' b' c'' b' e' b' }
  \tag #'left { \clef bass <e e,>4 <g g,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 c' dis' a' c'' a' dis' a' r fis' dis' c'' e' b' a' dis'' }
  \tag #'left { \clef bass <fis fis,>8 \clef treble r16 c''' b'' a'' g'' fis'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 e' g' e'' dis'' e'' e' e'' r e' g' e'' dis'' e'' e' e'' }
  \tag #'left { \clef treble e''8 \clef bass r16 <b b,> <a a,> <g g,> <fis fis,> <e e,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 ais cis' e' fis' g' e' cis' r ais cis' g' fis' g' ais g' }
  \tag #'left { \clef bass <ais, ais,,>8 \clef treble r16 g'' fis'' e'' dis'' e'' }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 dis' fis' b' ais' b' fis' dis' r dis' fis' a' g' a' fis' dis' }
  \tag #'left { \clef bass b,16 \clef treble e''8[ dis''16] \clef bass b \clef treble c'''8[ b''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 e' g' b' ais' b' g' e' r e' g' cis'' g' cis'' g' e' }
  \tag #'left { \clef bass b16 \clef treble a''8[ g''16] \clef bass b \clef treble fis''8[ e''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 dis' fis' a' g' a' fis' dis' r b fis' a' gis' a' fis' b }
  \tag #'left { \clef bass b,16 \clef treble c'8[ b16] \clef bass b, \clef treble e''8[ dis''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b e' g' fis' g' e' b r cis' e' g' fis' g' e' cis' }
  \tag #'left { \clef bass b,16 \clef treble fis''8[ e''16] \clef bass b, \clef treble g''8[ ais'16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 dis' fis' b' ais' b' dis' b' r b dis' b' ais' b' dis' b' }
  \tag #'left { \clef bass b,16 b8 fis16 dis b,8 fis,16 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b dis' b' cis'' b' dis' b' r b dis' a' b' a' b a' }
  \tag #'left { \clef bass dis,16 b,,8 dis,16 fis, b,8 dis16 }
  \tag #'common { s2 }
  |

  \tag #'right {
    \popContextProperty Timing.beamExceptions
  }

  \key e \major
  \tag #'right { \clef treble \split { gis'16. fis'32 gis'16 a' } { b4 } <fis' b>8 r }
  \tag #'left { \clef bass <e e,>4 <dis a,>8 r }
  \tag #'common { s2 }
  |
  
  \tag #'right { \clef treble \split { e'16. dis'32 e'16 fis' } { b4 } <dis'b a>8 r16 b }
  \tag #'left { \clef bass <e gis,>4 <dis fis,>8 r }
  \tag #'common { s2 }
  |
  
  \tag #'right { \clef treble <e' b>16 <fis' b> <gis' e' b> <a' fis' cis'> <fis' dis'>8 r16 <b' dis'> }
  \tag #'left { \clef bass gis16 dis e <a a,> <b b,>8 r16 <fis a,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <b' e'>16 <a' b> <gis' b> <cis'' cis'>32 a' <fis' b>8 r }
  \tag #'left { \clef bass <gis gis,>16 <dis fis,> <e e,> <a a,>32 fis <dis b,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a'16. gis'32 a'16 b' } { cis'4 } <gis' cis'>8 r }
  \tag #'left { \clef bass <fis fis,>4 <eis b,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { fis'16. eis'32 fis'16 gis' } { cis'4 } <eis' cis' b>8 r16 <ais'~ e'~> }
  \tag #'left { \clef bass <a cis a,>4 <gis cis gis,>8 r16 <cis'~ fis~> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ais' e'>16 <b' dis'> r <gis'~ d'~> <gis' d'> <a' cis'> r <fis' cis'> }
  \tag #'left { \clef bass <cis' fis>16 <b b,> r <b~ e~> <b e> <a a,> r <a a,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { <e' b>8[ <fis' dis'> <gis' e'>] } { \stemDir #AUTO { \change Staff = "left" gis8[ \change Staff = "right" a b] } } r8 }
  \tag #'left { \clef bass \stemDir #DOWN { b,4 <e e,>8 } r16 <ais~ e~> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fis'' fis'>8 <b'' b'>16 r <e'' e'>8 <a'' a'>16 r }
  \tag #'left { \clef bass <ais e>16 <b dis> r <gis~ d~> <gis d> <a cis> r8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { r16. bis'32 cis''[ gis' a'32. fis'64] cis'8 dis' } { s4 <a fis> } }
  \tag #'left { \clef bass r4 <b, b,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <e' g e>16. <d' g d>32 <e' g e>16 <f' g f> <d' g d>8 r }
  \tag #'left { \clef bass <c c,>16. <b, b,,>32 <c c,>16 <d d,> <b, b,,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <f' b g>16. <e' c' g>32 <f' b g>16 <g' c' g> <e' c' g>8 r }
  \tag #'left { \clef bass <d d,>16. <c c,>32 <d d,>16 <e e,> <c c,>8 r }
  \tag #'common { s2 }
  |

  \tag #'right {
    \pushContextProperty Timing.beamExceptions
    \set Timing.beamExceptions = \beamExceptions {
      32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32] 32[ 32 32 32] |
    }
  }

  \tag #'right { \clef treble r32 c' e' g' a' g' c' g' r c' e' g' a' g' c' g' }
  \tag #'left { \clef bass <c c,>4 <e e,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b f' gis'! a' gis' b gis' r d' f' b' c'' b' d' b' }
  \tag #'left { \clef bass <d d,>4 <gis gis,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 c' e' c'' b' c'' e' c'' r e' g' e'' dis'' e'' g' e' }
  \tag #'left { \clef bass <a a,>4 <ais ais,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 e' gis'! b' ais' b' gis' e' r a! dis' fis' eis' fis' dis' a }
  \tag #'left { \clef bass <b b,>4 <b, b,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 gis b e' fis' e' gis e' r gis b e' fis' e' gis e' }
  \tag #'left { \clef bass e,16 \clef treble dis''8[ e''16] \clef bass d \clef treble fis''8[ e''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 a cis' e' fis' e' a e' r ais cis' e' fis' e' ais e' }
  \tag #'left { \clef bass cis16 \clef treble bis''8[ cis'''16] \clef bass cis \clef treble dis'''8[ e'''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 b16 e'32 gis' e' gis e' r a!16 dis'32 fis' dis' a dis' }
  \tag #'left { \clef bass b,16 \clef treble ais'8[ b'16] \clef bass b, \clef treble c'8[ b16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 gis b e' fis' e' gis e' r gis b e' fis' e' gis e' }
  \tag #'left { \clef bass e16 \clef treble ais'8[ b'16] \clef bass d \clef treble fis''8[ e''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 a cis' e' fis' e' a e' r g ais e' fis' e' g e' }
  \tag #'left { \clef bass cis16 \clef treble bis'8[ cis''16] \clef bass cis \clef treble fis''8[ e''16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 gis!16 e'32 fis' e' gis e' r a!16 dis'32 fis' dis' a dis' }
  \tag #'left { \clef bass b,16 \clef treble ais'8[ b'16] \clef bass b, \clef treble c'8[ b16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 gis b dis' fis' e' gis e' r a16 dis'32 fis' dis' a dis' }
  \tag #'left { \clef bass b,16 \clef treble dis''8[ e''16] \clef bass b, \clef treble c'8[ b16] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r32 gis b e' gis' e' b' gis' e'' b' gis'' e'' b'' ais'' a'' fis'' }
  \tag #'left { \clef bass <e e,>8 r r4 }
  \tag #'common { s2 }
  |

  \tag #'right {
    \popContextProperty Timing.beamExceptions
  }

  \tag #'right { \clef treble gis''16. fis''32 gis''16 a'' <fis'' dis''>8 r }
  \tag #'left { \clef treble <b' e'>4 <b' a'>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''16.[ fis''64 e''] dis''32[ e'' gis'' fis''] e''16 dis'' r16. b'32 }
  \tag #'left { \clef treble <b' gis'>4 <a' fis'>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble e''32[ r64 b'] fis''32[ r64 b'] gis''32[ r64 b'] <a'' cis''>16 <fis'' b'>8 r32. dis''64 b''32[ r64 e''] }
  \tag #'left { \clef treble gis'16 <fis' dis'> <gis' e'> <fis' a> <dis' b>8 r16 \clef bass <fis' a> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b''32[ r64 b'] a''32[ r64 b'] gis''32[ r64 cis''] cis'''32.[ a''64] <fis'' b'>8 r }
  \tag #'left { \clef bass <gis' gis>16 <dis' fis> <e' e> <a' a>32. fis'64 <dis' b>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \split { a''16. gis''32 a''16 b'' } { <cis'' a'>4 } <gis'' cis'' gis'>8 r16. <fisis''~ cis''~ fisis'~>32 }
  \tag #'left { \clef bass <fis' cis' fis>4 <e' cis' gis>8 r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <fisis'' cis'' fisis'>4 <gis'' dis'' bis' gis'>8\arpeggio r16 <ais''~ e''~> }
  \tag #'left { \clef bass <a cis a,>4 <gis dis bis, gis,>8\arpeggio \clef treble r16 <cis''~ fis'~> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <ais'' e''>16 <b''! dis''> r <gis''~ d''~> <gis'' d''> <a'' cis''> r a''32. fis''64 }
  \tag #'left { \clef treble <cis'' fis'>16 <b'! b!> r <b'~ e'~> <b' e'> <a' a> r8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble \turnInside 32 #3.3 #'(0 . 0) cis''16 e''32. dis''64 \turnInside 32 #3.5 #'(0 . 0) dis''16 fis''32. e''64 e''8 r }
  \tag #'left { \clef treble <a' fis' b>4 <gis' e' cis'>8 r16 \clef bass <ais,~ ais,,~> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>8 <dis'' dis'>16 r <d'' d'>8[ <cis'' cis'>16] <bis'' bis'> }
  \tag #'left { \clef bass <ais, ais,,>16 <b, b,,> r <gis,~ gis,,~> <gis, gis,,> <a, a,,> r8 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <cis''' cis''>16 <gis'' gis'> <a'' a'> <fis'' fis'> <e'' e'> <dis'' dis'> <cis'' cis'> <dis'' dis'> }
  \tag #'left { \clef bass r4 <a fis b,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>16 b' b' b' b' b' b' b' }
  \tag #'left { \clef bass <gis e>8 r <e gis,>16. <dis fis,>32 <e gis,>16 <fis a,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16 b' b' b' b' b' b' b' }
  \tag #'left { \clef bass <dis fis,>8 r <gis e>16. <fis dis>32 <gis e>16 <a fis> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble b'16 <b'' b'> <b'' b'> <b'' b'> \turnInside 32 #4.5 #'(0 . 0) ##f \markup \sharp b''[ e'''~] e'''32[ dis''' cis''' bis''] }
  \tag #'left { \clef bass <fis dis>8 r <e' gis>4 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble dis'''16 cis'''8.\fermata r16 cis'''\trill dis''' e''' }
  \tag #'left { \clef bass <e' a>4\fermata r }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass b,4~ b,32[ cis dis e] fis[ gis a dis] }
  \tag #'left { \clef bass r4 <a, b,,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass <fis dis>4 e8 r }
  \tag #'left { \clef bass <a, e,~>4 <gis, e,>8 r }
  \tag #'common { s2 }
  |

  \bar "|."
}

thirdMovement = {
  \mark \markup { \bold "Scherzo. Allegro" }
  \tempo 4 = 244
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 3/4
  \key c \major

  \repeat volta 2 {

  \partial 4.
  \tag #'right { \clef treble g''8 fis'' g'' }
  \tag #'left { \clef bass r8 r4 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble a''4 g'' f''! }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |
  \accidentalStyle default
\beginRevisionSection
  \tag #'right { \clef treble \split { e''4 d'' c'' } { r4 r8 e' d' e' } }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'2. } { f'4 d' g' } }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''2. } { e'4 d' c' } }
  \tag #'left { \clef bass r4 r8 g fis g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' b' g'>2. }
  \tag #'left { \clef bass a4 g f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c'' g'>2. }
  \tag #'left { \clef bass e4 d c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' g'>4 <f'' b' g'> <e'' c'' g'> }
  \tag #'left { \clef bass b,4 g, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' b' g'>4 r r }
  \tag #'left { \clef bass g,4 \clef treble r8 d'' cis'' d'' }
  \tag #'common { s2. }
  |
\endRevisionSection
  \tag #'right { \clef treble r4 r8 fis'' e''! fis'' }
  \tag #'left { \clef treble ees''4 d'' c''! }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r8 g'' fis'' g'' }
  \tag #'left { \clef treble bes'4 a' g' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''4 r8 a'' g'' a'' }
  \tag #'left { \clef treble <fis' ees'>4 d' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes''4 r8 bes'' a'' bes'' }
  \tag #'left { \clef bass bes4 a g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble cis'''4 r8 cis''' bis'' cis''' }
  \tag #'left { \clef bass <bes bes,>4 <a a,> <g g,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 r8 d''' cis''' d''' }
  \tag #'left { \clef bass <fis fis,>4 <e e,> <d d,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b''! g'' d''>4 <c'''! a'' e''> <a'' fis'' c''> }
  \tag #'left { \clef bass <g g,>4 <c c,> <d d,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b'>4 r8 }
  \tag #'left { \clef bass <g, g,,>4 r8 }
  \tag #'common { s4. }
  |

  }

  \repeat volta 2 {

  \tag #'right { \clef treble r8 r4 }
  \tag #'left { \clef treble g'8 fis' g' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r4 r8 b' a' b' }
  \tag #'left { \clef treble aes'4 g' f'! }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4 r8 c'' b' c'' }
  \tag #'left { \clef treble ees'4 d' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4 r8 a' g' a' }
  \tag #'left { \clef treble ges'4 f' ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 bes' a' bes' }
  \tag #'left { \clef bass des'4 c' bes }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ges''4 f'' ees'' }
  \tag #'left { \clef bass a4 r8 a g a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des''4 c'' bes' }
  \tag #'left { \clef bass bes4 r8 des' c' des' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' f''>4 <ees''' ees''> <des''' des''> }
  \tag #'left { \clef bass g4 r8 g f g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' c''>4 <bes'' bes'> <aes'' aes'> }
  \tag #'left { \clef bass aes4 r8 \clef bass c' b c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees''' ees''>4 <d'''! d''!> <c''' c''> }
  \tag #'left { \clef bass fis4 r8 fis e fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b''! b'!>4 <a''! a'!> <g'' g'> }
  \tag #'left { \clef bass g4 r8 g fis g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees'' ees'>4 <d'' d'> <c'' c'> }
  \tag #'left { \clef bass ees4 d c }
  \tag #'common { s2. }
  |
\beginRevisionSection
  \tag #'right { \clef treble <g' g>4 r8 g fis g }
  \tag #'left { \clef bass g,4 r8 g, fis, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes4 g8 r <g'' d'' b'>4 }
  \tag #'left { \clef bass aes,4 g,8 r <d' b g>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis'' ees'' c'' a'>4 <g'' d'' b'>8 g[ fis g] }
  \tag #'left { \clef bass <ees' c' g>4 <d' b g>8 g,[ fis, g,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes4 g8 r <g'' d'' b'>4 }
  \tag #'left { \clef bass aes,4 g,8 r <d' b g>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a'' fis'' ees'' c''>4 <g'' d'' b'>8 g[ fis g] }
  \tag #'left { \clef bass <ees' c' g>4 <d' b g>8 g,[ fis, g,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes4 g8 r <g'' d'' b'>4 }
  \tag #'left { \clef bass aes,4 g,8 r <d' b g>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes'' ees'' c''>4 <g'' d'' b'>8 r <g'' d'' b'>4 }
  \tag #'left { \clef bass <ees' c' g>4 <d' b g>8 r <d' b g>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes'' ees'' c''>4 <g'' d'' b'>8 r <g'' d'' b'>4 }
  \tag #'left { \clef bass <ees' c' g>4 <d' b g>8 r <d' b g>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes'' ees'' c''>4 <g'' d'' b'>8 g''[ fis'' g''] }
  \tag #'left { \clef bass <ees' c' g>4 <d' b g>8 r r4 }
  \tag #'common { s2. }
  |
\endRevisionSection
  \tag #'right { \clef treble aes''4 g''8 g''[ fis'' g''] }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes''4 g''8 g''[ fis'' g''] }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes''4 g''8 g''[ fis'' g''] }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''!4 g'' f'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |
\beginRevisionSection
  \tag #'right { \clef treble \split { e''4 d'' c'' } { r4 r8 e' d' e' } }
  \tag #'left { \clef bass s2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'2. } { f'4 d' g' } }
  \tag #'left { \clef bass s2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''2. } { e'4 d' c' } }
  \tag #'left { \clef bass r4 r8 e d e }
  \tag #'common { s2. }
  |
\endRevisionSection
  \tag #'right { \clef treble <d'' b' g'>2. }
  \tag #'left { \clef bass f4 d g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e''~ c'' g'>2. }
  \tag #'left { \clef bass e4 d c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <e'' cis''>4 <f'' d''> <d'' b'> } { a'2 f'4 } }
  \tag #'left { \clef bass f,4 r g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''! e'>4 r r }
  \tag #'left { \clef bass <c c,>4 \clef treble r8 c'' b' c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r8 e'' d'' e'' }
  \tag #'left { \clef treble des''4 c'' bes' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4 r8 f'' e'' f'' }
  \tag #'left { \clef treble aes'4 g' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''4 r8 b'' a'' b'' }
  \tag #'left { \clef treble aes'4 g' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4 r8 c''' b'' c''' }
  \tag #'left { \clef treble ees'4 d' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''4 r8 fis'' eis'' fis'' }
  \tag #'left { \clef bass ees'4 d' c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 r8 g'' fis'' g'' }
  \tag #'left { \clef bass b4 a g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c'' g'>4 <f''! d'' a'> <d'' b' f'> }
  \tag #'left { \clef bass c'4 f g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e'>4 r8 c' b c' }
  \tag #'left { \clef bass c4 r8 c b, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 c'8 r <e'' c''>4 }
  \tag #'left { \clef bass des4 c8 r \clef treble <g' e' c'>4 }
  \tag #'common { s2. }
  |
\beginRevisionSection
  \tag #'right { \clef treble <f'' d'' b'>4 <e'' c''>8 c'[ b c'] }
  \tag #'left { \clef treble <aes' f' c'~>4 <g' e' c'>8 \clef bass c[ b, c] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 c'8 r <c''' g'' e''>4 }
  \tag #'left { \clef bass des4 c8 r \clef treble <g' e' c'>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' aes'' f''>4 <c''' g'' e''>8 c'[ b c'] }
  \tag #'left { \clef treble <aes' f' c'~>4 <g' e' c'>8 \clef bass c[ b, c] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'4 c'8 r <e''' c'''>4 }
  \tag #'left { \clef bass des4 c8 r \clef treble <g' e' c'>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' d''' b''>4 <e''' c'''> <e''' c'''> }
  \tag #'left { \clef treble <aes' f' c'~>4 <g' e' c'> <g' e' c'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' d''' b''>4 <e''' c'''> <e''' c'''> }
  \tag #'left { \clef treble <aes' f' c'~>4 <g' e' c'> <g' e' c'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' d''' b''>4 <e''' c'''> <c''' c''> }
  \tag #'left { \clef treble <aes' f' c'~>4 <g' e' c'> \clef bass <c' c> }
  \tag #'common { s2. }
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
  \tag #'right { \clef treble <c'' c'>4 r r }
  \tag #'left { \clef bass <c c,>4 r r }
  \tag #'common { s2. }
  |

    }
  }

  \breakLine

  \tag #'common { \textMark \markup { \bold "Trio" } }

  \repeat volta 2 {
\endRevisionSection
  \tag #'right { \clef bass \tuplet 3/2 4 { e8 a c' \clef treble e' a' c'' e'' c'' a' } }
  \tag #'left { \clef bass <a, a,,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 b' gis' e' b gis e gis b } }
  \tag #'left { \clef bass <b, b,,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e8 a c' e' a' c'' e'' c'' a' } }
  \tag #'left { \clef bass <c c,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 b' gis' e' b gis e gis b } }
  \tag #'left { \clef bass <d d,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e8 a c' e' a' c'' e'' c'' a' } }
  \tag #'left { \clef bass <c c,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e''8 b' g'! e' b g! e g b } }
  \tag #'left { \clef bass <b, b,,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'8 cis' g e' b g dis' b fis } }
  \tag #'left { \clef bass <ais, ais,,>4 <b, b,,> <b, b,,> }
  \tag #'common { s2. }
  |

  }
  \alternative {
  {
  \tag #'right { \clef treble <e' b g>4 r \clef bass e }
  \tag #'left { \clef bass e,4 e r }
  \tag #'common { s2. }
  |
  } {
  \tag #'right { \clef treble <e' b g>4 r g }
  \tag #'left { \clef bass e,4 e r }
  \tag #'common { s2. }
  |
  }
  }

  \tag #'right { \clef treble \tuplet 3/2 4 { g8 c' e' g' c'' e'' g'' e'' c'' } }
  \tag #'left { \clef bass <c c,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g''8 d'' b' g' d' b g b d' } }
  \tag #'left { \clef bass <d d,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g'8 cis' bes g' d' bes g' e' a } }
  \tag #'left { \clef bass <e e,>4 <d d,> <cis cis,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g'8 e' a f' d' a f' d' a } }
  \tag #'left { \clef bass <d d,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a8 d' f' a' d'' f'' a'' f'' d'' } }
  \tag #'left { \clef bass <d d,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a''8 e'' c'' a' e' c' a c' e' } }
  \tag #'left { \clef bass <e e,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a'8 dis' b a' e' b a' fis' b } }
  \tag #'left { \clef bass <fis fis,>4 <e e,> <dis cis,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a'8 e' b gis' e' b gis' e' b } }
  \tag #'left { \clef bass <e e,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'8 a' c'' e'' a'' c''' e''' c''' a'' } }
  \tag #'left { \clef bass <a a,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'''8 b'' gis'' e'' b' gis' e' gis' b' } }
  \tag #'left { \clef bass <b b,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'8 a' c'' e'' a'' c''' e''' c''' a'' } }
  \tag #'left { \clef bass <c' c>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'''8 b'' gis'' e'' b' gis' e' gis' b' } }
  \tag #'left { \clef bass <d' d>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'8 a' c'' e'' a'' c''' e''' c''' a'' } }
  \tag #'left { \clef bass <c' c>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'''8 c''' f'' d''' b'' f'' d''' b'' f'' } }
  \tag #'left { \clef bass <d' d>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { d'''8 b'' e'' c''' a'' e'' b'' gis'' d'' } }
  \tag #'left { \clef bass <e' e>4 r <e e,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a'' c''>4 r g! }
  \tag #'left { \clef bass a,4 a r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g8 c' e' g' c'' e'' g'' e'' c'' } }
  \tag #'left { \clef bass <c c,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g''8 d'' b' g' d' b g b d' } }
  \tag #'left { \clef bass <d d,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g'8 cis' bes g' d' bes g' e' a } }
  \tag #'left { \clef bass <e e,>4 <d d,> <cis cis,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { g'8 e' a f' d' a f' d' a } }
  \tag #'left { \clef bass <d d,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a8 d' f' a' d'' f'' a'' f'' d'' } }
  \tag #'left { \clef bass <d d,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a''8 e'' c'' a' e' c' a c' e' } }
  \tag #'left { \clef bass <e e,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a'8 dis' b a' e' b a' fis' b } }
  \tag #'left { \clef bass <fis fis,>4 <e e,> <dis dis,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { a'8 e' b gis' e' b gis' e' b } }
  \tag #'left { \clef bass <e e,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'8 a' c'' e'' a'' c''' e''' c''' a'' } }
  \tag #'left { \clef bass <a a,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'''8 b'' gis'' e'' b' gis' e' gis' b' } }
  \tag #'left { \clef bass <b b,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { e'8 a' c'' e'' a'' c''' e''' c''' a'' } }
  \tag #'left { \clef bass <c' c>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { f'''8 d''' a'' f'' d'' a' f' a' d'' } }
  \tag #'left { \clef bass <d' a f d>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { f'8 aes' d'' f'' aes'' d''' f''' d''' aes'' } }
  \tag #'left { \clef bass <c' aes f c>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \tuplet 3/2 4 { f'''8 d''' b'' g'' f'' d'' b' g' f' } }
  \tag #'left { \clef bass <b g f d b,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass \tuplet 3/2 { d'8 b g } \tuplet 3/2 { f8 d b, } \tuplet 3/2 { g,8 r r } }
  \tag #'left { \clef bass r4 r \tuplet 3/2 { r8 d, b,, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass R2. }
  \tag #'left { \clef bass g,,4 r r }
  \tag #'common { s2. }
  |

  \partial 4.
  \tag #'right { \clef treble r4 r8 }
  \tag #'left { \clef bass r4 r8 }
  \tag #'common { s4. \textEndMark \markup { \small "Scherzo D. C. e poi la Coda" } }
  |

  \bar "||"

  \breakLine

  \tag #'common { \textMark \markup { \bold "Coda" } }

  \tag #'right { \clef treble r4 r <a'' a'> }
  \tag #'left { \clef bass r4 r <a a,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' a>4 r r }
  \tag #'left { \clef bass <a, a,,>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r <fis'' fis'> }
  \tag #'left { \clef bass r4 r <fis fis,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' fis>4 r <fis' fis> }
  \tag #'left { \clef bass <fis, fis,,>4 r <fis, fis,,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' g>4 r r }
  \tag #'left { \clef bass <g, g,,>4 r8 g, fis, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b' f' d'>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e' c'>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <fis' ees' c'>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' d' b>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' c' g~>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' d' g>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' b f>2. }
  \tag #'left { \clef bass aes,4 g, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c' g e>2. }
  \tag #'left { \clef bass c,4 r8 c, b,, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' b>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' c'>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b' f'>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' e'>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' b'>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c''>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' f''>2. }
  \tag #'left { \clef bass des,4 c, c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' e''>4 r \clef bass b, }
  \tag #'left { \clef bass c,4 r b,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass c4 r b, }
  \tag #'left { \clef bass c,4 r b,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass c4 r8\fermata }
  \tag #'left { \clef bass c,4 r8\fermata }
  \tag #'common { s4. }
  |

  \bar "|."
}

fourthMovement = {
  \mark \markup { \bold "Allegro assai" }
  \tempo 4 = 180
  \set Score.tempoHideNote = ##t
  \time 6/8
  \key c \major
  \accidentalStyle default

  \partial 8
  \tag #'right { \clef treble g'8 }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <c'' g' e'>8 <b' f' d'> <c'' g' e'> <d'' a' f'> <e'' b' g'> <f'' c'' a'> }
  \tag #'left { \clef bass <c c,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 <a'' e'' c''> <b'' f'' d''> <c''' g'' e''> <d''' a'' f''> <e''' c'''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c'''>4 <e''' c'''>8 <f''' c'''>4 <e''' c'''>8 }
  \tag #'left { \clef treble a''4 g''8 a''4 g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' c'''>4 r8 r4 d'8 }
  \tag #'left { \clef treble fis''4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' d' b>8 <fis' c' a> <g' d' b> <a' e' c'> <b' f' d'> <c'' g' e'> }
  \tag #'left { \clef bass <g, g,,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' a' f'>8 <e'' b' g'> <f'' c'' a'> <g'' d'' b'> <a'' e'' c''> <b'' f'' d''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g'8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' e''>4 <d''' g'' f''>8 <c''' g'' e''>4 <d''' g'' f''>8 }
  \tag #'left { \clef treble <c'' c'>4 <b' g'>8 <c'' c'>4 <b' g'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' e''>4 r8 a''16 g'' f'' e'' d'' c'' }
  \tag #'left { \clef treble <c'' c'>4 r8 r4 r8 \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'16 c'' b' a' b' g' c'' d'' c'' b' c'' g' }
  \tag #'left { \clef treble \split { <f' d'>4. <e' c'> } { g2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''16 e'' d'' cis'' d'' g' g'' f'' e'' d'' c'' b' }
  \tag #'left { \clef treble \split { <d' b>4 } { g4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''16 d'' c'' b' c'' g' d'' e'' d'' cis'' d'' g' }
  \tag #'left { \clef treble \split { <g' e'>4. <f' d'> } { g2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''16 f'' e'' dis'' e'' c'' a'' g'' f'' e'' d'' c'' }
  \tag #'left { \clef treble \split { <e' c'>4 } { g4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''16 g'' fis'' e'' fis'' d'' g'' a'' g'' fis'' g'' d'' }
  \tag #'left { \clef treble \split { <a' c'>4. <g' b> } { g2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''16 b'' a'' gis'' a'' d'' d''' c''' b'' a'' g'' fis'' }
  \tag #'left { \clef treble \split { <fis' c'>2. } { g2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''16 a'' g'' fis'' g'' d'' d''' e''' d''' cis''' d''' fis'' }
  \tag #'left { \clef treble \split { <g' b>4. <a' c'> } { g2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''16 a'' g'' fis'' g'' d'' d''' e''' d''' cis''' d''' fis'' }
  \tag #'left { \clef treble \split { <g' b>4. <a' c'> } { g2. } }
  \tag #'common { s2. }
  |
\break
  \tag #'right { \clef treble g''16 a'' g'' fis'' g'' a'' b'' c''' b'' ais'' b'' c'''  }
  \tag #'left { \clef treble \split { <g' b>4 } { g4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''16 e''' d''' cis''' d''' e''' f'''! d''' b'' g'' f'' d'' }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>8 <b' f' d'> <c'' g' e'> <d'' a' f'> <e'' b' g'> <f'' c'' a'> }
  \tag #'left { \clef bass <c' c>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 <a'' e'' c''> <b'' f'' d''> <c''' g'' e''> <d''' a'' f''> <e''' c'''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c'''>4 <e''' b''>8 <f''' c'''>4 <e''' b''>8 }
  \tag #'left { \clef treble a''4 g''8 a''4 g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <dis''' b'' a''>4 r8 r4 b''8 }
  \tag #'left { \clef treble fis''4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e''' e''>4 <dis''' dis''>8 <e''' e''>4 <d''' d''>8 }
  \tag #'left { \clef treble <b' g'>4 <a' fis'>8 <b' g'>4 <a' fis'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <cis''' cis''>4 r8 r4 a''8\trill }
  \tag #'left { \clef treble <g' e'>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' d''>4 <c''' c''>8 <b'' b'>4 <a'' a'>8 }
  \tag #'left { \clef treble <a' fis'>4 <g' e'>8 <fis' d'>4 <e' c'>8 \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' g'>4 <fis'' fis'>8 <e'' e'>4 <d'' d'>8 }
  \tag #'left { \clef bass <d' b>4 <c' a>8 <b g>4 <a fis>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' c'>4 <b' b>8 <a' a>4 <gis' gis>8 }
  \tag #'left { \clef bass <g e>4 <fis d>8 <e c>4 <d b,>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' a>4 <gis' gis>8 <a' a>4 <g' g>8 }
  \tag #'left { \clef bass <e c>4 <d b,>8 <e c>4 <e cis>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'4 r8 r4 r8 }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> d' <a fis> d' <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4.~ c''8 a' fis' }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> d' <a fis> c <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 b'16 g' d''4 b'16 g' }
  \tag #'left { \clef bass b,16 <b g> d' <b g> d' <b g> d' <b g> d' <b g> d' <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4.~ c''8 a' fis' }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> d' <a fis> c <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 b'16 g' d''4 b'16 g' }
  \tag #'left { \clef bass b,16 <b g> d' <b g> d' <b g> d' <b g> d' <b g> d' <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''4.~ c''8 a' fis' }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> d' <a fis> c <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 b' fis' g' b' dis' }
  \tag #'left { \clef bass b,4 fis8 g b dis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'8 g' b c' e' gis }
  \tag #'left { \clef bass e8 g b, c e gis, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a8 c' b a b c' }
  \tag #'left { \clef bass a,8 c b, a, b, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'8 cis' d' \clef bass d e fis }
  \tag #'left { \clef bass d8 cis d d, e, fis, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r16 g b d' fis' g' b' d'' fis'' g'' a'' b'' }
  \tag #'left { \clef bass g,4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4.~ c'''8 a'' fis'' }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> d' <a fis> c <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 b''16 g'' d'''4 b''16 g'' }
  \tag #'left { \clef bass b,16 <b g> d' <b g> d' <b g> d' <b g> d' <b g> d' <b g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4.~ c'''8 a'' fis'' }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> d' <a fis> c <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''4 bes''16 g'' d'''4 bes''16 g'' }
  \tag #'left { \clef bass bes,16 <bes g> d' <bes g> d' <bes g> d' <bes g> d' <bes g> d' <bes g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4.~ c'''8 a'' fis'' }
  \tag #'left { \clef bass d16 <a fis> d' <a fis> e' <a fis> c <a fis> d' <a fis> d' <a fis> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8 bes'' fis'' g'' bes'' d'' }
  \tag #'left { \clef bass bes,4 \clef treble fis'8 g' bes' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''8 g'' b'! c'' ees'' g' }
  \tag #'left { \clef treble es'8 g' b! c' ees'  g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes'8 c''' e''! f'' aes'' cis'' }
  \tag #'left { \clef treble aes4 e'!8 f' aes' cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 f'' a'! bes' d'' fis' }
  \tag #'left { \clef treble d'8 f'! a bes8 d' fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8 bes'' d'' ees'' g'' b'! }
  \tag #'left { \clef treble g4 d'8 ees' g' b! }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 ees'' g' aes' c'' e'! }
  \tag #'left { \clef bass c'8 ees' g aes8 c' e! }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'8 aes' cis' d' f' ais }
  \tag #'left { \clef bass f8 aes cis d f ais, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass b8 d' fis g b d }
  \tag #'left { \clef bass b,8 d fis, g, b, d, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass ees8 g b, c ees g, }
  \tag #'left { \clef bass ees,8 g, b,, c, ees, g,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass aes,8 c g, aes, c fis, }
  \tag #'left { \clef bass aes,,8 c, g,, aes,, c, fis,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass g,8 b, d g8 a b }
  \tag #'left { \clef bass \split { r4 r8 f,!4. } { g,,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'8 g d' ees' g fis' }
  \tag #'left { \clef bass \split { ees,4. c, } { g,,2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g'4. f' } { g2.~ } }
  \tag #'left { \clef bass g,,8 b,, d, g, a, b, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees'4. c' } { g2. } }
  \tag #'left { \clef bass c8 g, d ees g, fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 b d' g' a' b' }
  \tag #'left { \clef bass \split { g4. f } { g,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 g' d'' ees'' g' fis'' }
  \tag #'left { \clef bass \split { ees4. c } { g,2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g''4. f'' } { g'2.~ } }
  \tag #'left { \clef bass g,8 b, d g a b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4. c'' } { g'2. } }
  \tag #'left { \clef bass c'8 g d' ees' g fis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8 fis' g' a' b' c'' }
  \tag #'left { \clef bass g'4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 e'' fis'' g'' a'' b'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'8 a' b' c'' d'' e'' }
  \tag #'left { \clef bass g,8 fis, g, a, b, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''8 g'' a'' b'' c''' d''' }
  \tag #'left { \clef bass d8 e fis g a b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 r f'''! e''' d''' c''' }
  \tag #'left { \clef bass g8 fis g a b c' \clef treble }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b''8 a'' g'' f'' e'' d'' }
  \tag #'left { \clef treble d'8 e' f'! g' a' b' \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>8 <b' f' d'> <c'' g' e'> <d'' a' f'> <e'' b' g'> <f'' c'' a'> }
  \tag #'left { \clef bass <c' c>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 <a'' e'' c''> <b'' f'' d''> <c''' g'' e''> <d''' a'' f''> <e''' c'''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c'''>4 <e''' c'''>8 <f''' c'''>4 <e''' c'''>8 }
  \tag #'left { \clef treble a''4 g''8 a''4 g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' c'''>4 r8 r4 d'8 }
  \tag #'left { \clef treble fis''4 r8 r4 r8 \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' d' b>8 <fis' c' a> <g' d' b> <a' e' c'> <b' f' d'> <c'' g' e'> }
  \tag #'left { \clef bass <g, g,,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' a' f'>8 <e'' b' g'> <f'' c'' a'> <g'' d'' b'> <a'' e'' c''> <b'' f'' d''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g'8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' e''>4 <d''' g'' f''>8 <c''' g'' e''>4 <d''' g'' f''>8 }
  \tag #'left { \clef treble <c'' c'>4 <b' g'>8 <c'' c'>4 <b' g'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' e''>4 r8 r4 r8 }
  \tag #'left { \clef treble <c'' c'>4 r8 r4 \clef bass g,8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g''~ e''~ g'~>2. }
  \tag #'left { \clef bass <c c,>8 <b, b,,> <c c,> <d d,> <e e,> <f f,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g''~ e''~ g'~>4. <g'' e'' g'>8 <f'' d'' g'> <e'' c'' g'> }
  \tag #'left { \clef bass <g g,>8 <a a,> <b b,> <c' c> <d' d> <e' e> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' b' g'>4 <e'' c'' g'>8 <d'' b' g'>4 <e'' cis'' g'>8 }
  \tag #'left { \clef bass <f' f>4 <e' e>8 <f' f>4 <e' e>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' d'' a'>4 r8 r4 r8 }
  \tag #'left { \clef bass <d' d>4 r8 r4 a,8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a''~ f''~ a'~>2. }
  \tag #'left { \clef bass <d d,>8 <cis cis,> <d d,> <e e,> <f f,> <g g,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a''~ f''~ a'~>4. <a'' f'' a'>8 <g'' e'' a'> <f'' d'' a'> }
  \tag #'left { \clef bass <a a,>8 <b b,> <cis' cis> <d' d> <e' e> <f' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' cis'' a'>4 <f'' d'' a'>8 <e'' cis'' a'>4 <fis'' dis'' a'>8 }
  \tag #'left { \clef bass <g' g>4 <f' f>8 <g' g>4 <fis' fis>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' e'' b'>4 r8 r4 r8 }
  \tag #'left { \clef bass <e' e>4 r8 r4 b,8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b''~ g''~ b'~>2. }
  \tag #'left { \clef bass <e e,>8 <dis dis,> <e e,> <fis fis,> <g g,> <a a,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b''~ g''~ b'~>4. <b'' g'' b'>8 <a'' fis'' b'> <g'' e'' b'> }
  \tag #'left { \clef bass <b b,>8 <cis' cis> <dis' dis> <e' e> <fis' fis> <g' g> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <fis'' dis''> <g'' e''> r <a'' fis''> <b'' g''> }
  \tag #'left { \clef treble a8 <c'' a'> <b' g'> fis <a' fis'> <g' e'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <c''' a''> <b'' g''> <a'' fis''> <g'' e''> <fis'' dis''> }
  \tag #'left { \clef bass dis8_[ \clef treble <fis' dis'> <g' e'>] <a' fis'> <b' g'> <c'' a'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <b'' gis''> <c''' a''> r <d''' b''> <e''' c'''> }
  \tag #'left { \clef treble d'8 <f''! d''!> <e'' c''> b <d'' b'> <c'' a'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <f''' d'''> <e''' c'''> <d''' b''> <c''' a''> <b'' gis''> }
  \tag #'left { \clef treble gis8 <b' gis'> <c'' a'> <d'' b'> <e'' c''> <f'' d''> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <e'' cis''> <f'' d''> r <g'' e''> <a'' f''> }
  \tag #'left { \clef treble g!8 <bes' g'!> <a' f'> f <g' e'> <f' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <bes'' g''> <a'' f''> <g'' e''> <f'' d''> <e'' cis''> }
  \tag #'left { \clef bass cis8_[ \clef treble <e' cis'> <f' d'>] <g' e'> <a' f'> <bes' g'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <a'' f''> <g'' e''> <f'' d''> <e'' cis''> d'' }
  \tag #'left { \clef bass d8_[ \clef treble d' <e' cis'>] <f' d'> <g' e'> <a' f'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <f''' d'''> <e''' c'''!> <d''' b''> <c''' a''> <b'' gis''> }
  \tag #'left { \clef bass gis,8 <b gis> <c'! a> <d' b> <e' c'> <f' d'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 <e''' c'''> <d''' b''> <c''' a''> <b'' gis''> a'' }
  \tag #'left { \clef bass a,8 a <b gis> <c' a> <d' b> <e' c'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 b' d''' r gis' b'' }
  \tag #'left { \clef bass d4 d'8 e4 e'8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 a' a'' r f' f'' }
  \tag #'left { \clef bass a,4 a8 f,4 f8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 d' d'' r b b' }
  \tag #'left { \clef bass d,4 d8 b,,4 b,8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 gis gis' r a a' }
  \tag #'left { \clef bass gis,,4 gis,8 a,,4 a,8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass r8 dis dis' r e e' }
  \tag #'left { \clef bass dis,4. e, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass r8 a, a r bes, bes }
  \tag #'left { \clef bass a,,4. bes,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass r8 b,! b! r c c' }
  \tag #'left { \clef bass b,,!4. c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' c' a>4. <a' f' c'> }
  \tag #'left { \clef bass <f,~ f,,~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' a' f'>4. <f'' c'' a'> }
  \tag #'left { \clef bass <f, f,,>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c'' g'>4. <d'' b' f'> }
  \tag #'left { \clef bass <c~ c,~>2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4. <bes' g' c'> }
  \tag #'left { \clef bass <c c,>4. c,4 d,16 e, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' f' c'>4. <g' e' bes> }
  \tag #'left { \clef bass <f, f,,>4. <g, g,,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' c' a>4. <g' d' f> }
  \tag #'left { \clef bass <a, a,,>4. <b,! b,,!> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' c' g>4. <d' b f> }
  \tag #'left { \clef bass <c c,>4. g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c' g e>4 r8 r4 r8 }
  \tag #'left { \clef bass c,8 e, g, c d e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 a'' c''' r f'' a'' }
  \tag #'left { \clef bass <f f,>4. <a a,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 gis'' a'' r c'' a'' }
  \tag #'left { \clef bass <c' c>4. <f' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 a'' g''! r f'' b'' }
  \tag #'left { \clef bass <e' e>4. <d' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 e'' c''' r e'' d''' }
  \tag #'left { \clef bass <c' c>4. <bes bes,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 d''' c''' r bes'' e''' }
  \tag #'left { \clef bass <a a,>4. <g g,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 a'' f''' r bes' d''' }
  \tag #'left { \clef bass <f f,>4. <bes bes,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 a' c''' r bes' e'' }
  \tag #'left { \clef bass <c' c>4. <c c,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' a'>4 r8 r4 r8 }
  \tag #'left { \clef bass f,8 a, c f g a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r8 bes'4 a'8 }
  \tag #'left { \clef bass \split { r4 <bes~ g~>8 <bes g>4 <a f>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { a'8 } g'8 fis' g' \acciaccatura { bes'8 } a' g' a' }
  \tag #'left { \clef bass \split { <g e>4. <a f> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 d''4 c''8 }
  \tag #'left { \clef bass \split { <bes g>4 <d'~ bes~>8 <d' bes>4 <c' a>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 c'' bes' a' bes' a' }
  \tag #'left { \clef bass \split { <bes g>4. << { a4. } \\ { f4 s8 } >> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 r8 bes'4 a'8 }
  \tag #'left { \clef bass \split { <g e>4 <bes~ g~>8 <bes g>4 <a f>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { a'8 } g'8 fis' g' \acciaccatura { b'8 } a' g' a' }
  \tag #'left { \clef bass \split { <g e>4. <a f> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 d''4 c''8 }
  \tag #'left { \clef bass \split { <bes g>4 <d'~ bes~>8 <d' bes>4 <c' a>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 d'' c'' bes' a' g' }
  \tag #'left { \clef bass \split { <bes g>4. <g e> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' c' a>4. <a' f' c'> }
  \tag #'left { \clef bass r8 f a r c f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' a' f'>4. <f'' c'' a'> }
  \tag #'left { \clef bass r8 a, c r f, a, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c'' g'>4. <d'' g' f'> }
  \tag #'left { \clef bass r8 b, c r ais b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4. <bes' g' c'> }
  \tag #'left { \clef bass r8 b c' r dis e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' f' c'>4. <g' e' bes> }
  \tag #'left { \clef bass r8 e f r fis, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' c' a>4. <g' d' g> }
  \tag #'left { \clef bass r8 gis, a, r a, bes, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c' a f>4. <e' c' bes g> }
  \tag #'left { \clef bass r8 b,! c r b,,! c, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' c' a>4 r8 r4 r8 }
  \tag #'left { \clef bass f,8 a, c f g a }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 r8 bes'4 a'8 }
  \tag #'left { \clef bass \split { r4 <bes~ g~>8 <bes g>4 <a f>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { a'8 } g'8 fis' g' \acciaccatura { b'8 } a' g' a' }
  \tag #'left { \clef bass \split { <g e>4. <a f> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 d''4 c''8 }
  \tag #'left { \clef bass \split { <bes g>4 <d'~ bes~>8 <d' bes>4 <c' a>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 c'' bes' a' bes' a' }
  \tag #'left { \clef bass \split { <bes g>4. <a f> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'4 r8 bes'4 a'8 }
  \tag #'left { \clef bass \split { <g e>4 <bes~ g~>8 <bes g>4 <a f>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { a'8 } g'8 fis' g' \acciaccatura { b'8 } a' g' a' }
  \tag #'left { \clef bass \split { <g e>4. <a f> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r8 d''4 c''8 }
  \tag #'left { \clef bass \split { <bes g>4 <d'~ bes~>8 <d' bes>4 <c' a>8 } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8 d'' c'' bes' a' g' }
  \tag #'left { \clef bass \split { <bes g>4. <g e> } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' c' a>4. <a' f' c'> }
  \tag #'left { \clef bass r8 f a r c f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' a' f'>4. <f'' c'' a'> }
  \tag #'left { \clef bass r8 a, c r f, a, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c'' g'>4. <d'' g' f'> }
  \tag #'left { \clef bass r8 b, c r ais b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4. <bes' g' c'> }
  \tag #'left { \clef bass r8 b c' r dis e }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes' f' c'>8 aes''[ c'''] r f'' aes'' }
  \tag #'left { \clef bass <f f,>4. <aes aes,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 c'' f'' r aes' aes'' }
  \tag #'left { \clef bass <c' c>4. <f' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 aes'' g'' r g' f'' }
  \tag #'left { \clef bass <ees' ees>4. <des' des> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 f'' ees'' r des'' des''' }
  \tag #'left { \clef bass <c' c>4. <bes bes,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 c''' ees''' r aes'' c''' }
  \tag #'left { \clef bass <aes aes,>4. <c' c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 ees'' aes'' r c'' c''' }
  \tag #'left { \clef bass <ees' ees>4. <aes' aes> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 c''' b'' r b' aes'' }
  \tag #'left { \clef bass <g' g>4. <f' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 aes'' g'' r f'' f''' }
  \tag #'left { \clef bass <ees' ees>4. <d' d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees'' c'' g'>4. <g'' ees'' c''> }
  \tag #'left { \clef bass r8 b c' r b c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' ees''>4. <c''' a'' c''> }
  \tag #'left { \clef bass r8 b c' r fis ees' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' g'' b'>4. <a'' fis'' a'> }
  \tag #'left { \clef bass r8 ees' d' r d c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' g'>4. <bes'' g'' bes'> }
  \tag #'left { \clef bass r8 c' b r e! des' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <aes'' f'' aes'>4. <g'' e'' g'> }
  \tag #'left { \clef bass r8 des' c' r c bes }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' f'>4. <g'' d'' g'> }
  \tag #'left { \clef bass r8 bes aes r b,! g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees'' c'' g'>4. <d'' b' f'> }
  \tag #'left { \clef bass r8 c g r d g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' ees'>4. <d'' a' d'> }
  \tag #'left { \clef bass r8 ees c r eis, fis, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b' g' d'>4. <a' fis' c'> }
  \tag #'left { \clef bass r8 fis, g, r g,, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' d' b>4. \clef bass <ees' c' fis> }
  \tag #'left { \clef bass r8 g,, g, r g,, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <d' b g>4. <c' fis ees> }
  \tag #'left { \clef bass r8 g,, g, r g,, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <b g d>4. <a fis c> }
  \tag #'left { \clef bass r8 g,, g, r g,, g, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <g b,>4 r8 \clef treble d'4 c'8 }
  \tag #'left { \clef bass g,,4 g,8~ g,4.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { c'8 } b8 a b \acciaccatura { d'8 } c' b c' }
  \tag #'left { \clef bass g,2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'4 r8 <f' d'>4 <e' c'>8 }
  \tag #'left { \clef bass g,,4 g,8~ g,4.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \acciaccatura { <e' c'>8 } <d' b>8 <c' a> <d' b> \acciaccatura { <f' d'>8 } <e' c'> <d' b> <e' c'> }
  \tag #'left { \clef bass g,2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' d'>4 r8 <a' f'>4 <g' e'>8 }
  \tag #'left { \clef bass g,,4 \split { s8 r b, c } { g,8~ g,4.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' d'>8 <g' e'> <f' d'> <e' c'> <f' d'> <e' c'> }
  \tag #'left { \clef bass \split { d4. e } { g,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' b>4 r8 <a' f'>4 <g' e'>8 }
  \tag #'left { \clef bass \split { f4 r8 r b, c } { g,4 g,8~ g,4.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f' d'>8 <g' e'> <f' d'> <e' c'> <f' d'> <e' c'> }
  \tag #'left { \clef bass \split { d4. e } { g,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d' b>8 cis' d' e' f' g' }
  \tag #'left { \clef bass \split { f4 } { g,4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 b' c'' d'' ees'' e'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''8 cis'' d'' e'' f'' g'' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''8 b'' c''' d''' ees''' e''' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'''4 r8 r4 r8 }
  \tag #'left { \clef bass g,8 fis, g, a, b, c }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2. }
  \tag #'left { \clef bass d8 e f g a b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>8 <b' f' d'> <c'' g' e'> <d'' a' f'> <e'' b' g'> <f'' c'' a'> }
  \tag #'left { \clef bass c'4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 <a'' e'' c''> <b'' f'' d''> <c''' g'' e''> <d''' a'' f''> <e''' c'''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c'''>4 <e''' c'''>8 <f''' c'''>4 <e''' c'''>8 }
  \tag #'left { \clef treble a''4 g''8 a''4 g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' c'''>4 r8 r4 d'8 }
  \tag #'left { \clef treble fis''4 r8 r4 r8 \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' d' b>8 <fis' c' a> <g' d' b> <a' e' c'> <b' f' d'> <c'' g' e'> }
  \tag #'left { \clef bass <g, g,,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' a' f'>8 <e'' b' g'> <f'' c'' a'> <g'' d'' b'> <a'' e'' c''> <b'' f'' d''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g'8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' e''>4 <d''' g'' f''>8 <c''' g'' e''>4 <d''' g'' f''>8 }
  \tag #'left { \clef treble <c'' c'>4 <b' g'>8 <c'' c'>4 <b' g'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g'' e''>4 r8 r4 r8 }
  \tag #'left { \clef treble <c'' c'>4 r8 r4 \clef bass g,8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g''~ e''~ g'~>2. }
  \tag #'left { \clef bass <c c,>8 <b, b,,> <c c,> <d d,> <e e,> <f f,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g''~ e''~ g'~>4. <g'' e'' g'>8 <f'' d'' g'> <e'' c'' g'> }
  \tag #'left { \clef bass <g g,>8 <a a,> <b b,> <c' c> <d' d> <e' e> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' b' g'>4 <e'' c'' g'>8 <d'' b' g'>4 <e'' c'' g'>8 }
  \tag #'left { \clef bass <f' f>4 <e' e>8 <f' f>4 <e' e>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' b' g'>4 r8 r4 g'8 }
  \tag #'left { \clef bass <f' f>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''~ d''~ g'~>2. }
  \tag #'left { \clef bass <g, g,,>8 <fis, fis,,> <g, g,,> <a, a,,> <b, b,,> <c c,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''~ d''~ g'~>4. <f'' d'' g'>8 <e'' c''> <d'' g' f'> }
  \tag #'left { \clef bass <d d,>8 <e e,> <f f,> <g g,> <a a,> <b b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4 <d'' g' f'>8 <c'' g' e'>4 <d'' g' f'>8 }
  \tag #'left { \clef bass <c' c>4 <b g>8 <c' c>4 <b g>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>4 r8 a''16 g'' f'' e'' d'' c'' }
  \tag #'left { \clef bass <c' c>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b'16 c'' b' a' b' g' c'' d'' c'' b' c'' g' }
  \tag #'left { \clef treble \split { <f' d'>4. <e' c'> } { g2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''16 e'' d'' cis'' d'' g' g'' f'' e'' d'' c'' b' }
  \tag #'left { \clef treble \split { <d' b>4 } { g4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''16 d'' c'' b' c'' g' d'' e'' d'' cis'' d'' g' }
  \tag #'left { \clef treble \split { <g' e'>4. <f' d'> } { g2.~} }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''16 f'' e'' dis'' e'' c'' a'' g'' f'' e'' d'' c''}
  \tag #'left { \clef treble \split { <e' c'>4 } { g4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis''16 g'' fis'' e'' fis'' d'' g'' a'' g'' fis'' g'' d'' }
  \tag #'left { \clef treble \split { <a' c'>4. <g' b> } { g2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''16 b'' a'' gis'' a'' d'' d''' c''' b'' a'' g'' fis'' }
  \tag #'left { \clef treble \split { <fis' c'>2. } { g2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''16 a'' g'' fis'' g'' d'' d''' e''' d''' cis''' d''' fis'' }
  \tag #'left { \clef treble \split { <g' b>4. <a' c'> } { g2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''16 a'' g'' fis'' g'' d'' d''' e''' d''' cis''' d''' fis'' }
  \tag #'left { \clef treble \split { <g' b>4. <a' c'> } { g2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''16 a'' g'' fis'' g'' a'' b'' c''' b'' ais'' b'' c''' }
  \tag #'left { \clef treble \split { <g' b>4 } { g4 } r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''16 e''' d''' cis''' d''' e''' f''' d''' b'' g'' f'' d'' }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g' e'>8 <b' f' d'> <c'' g' e'> <d'' a' f'> <e'' b' g'> <f'' c'' a'> }
  \tag #'left { \clef bass <c c,>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d'' b'>8 <a'' e'' c''> <b'' f'' d''> <c''' g'' e''> <d''' a'' f''> <e''' c'''> }
  \tag #'left { \clef bass r4 r8 r4 \clef treble g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c'''>4 <e''' c'''>8 <f''' c'''>4 <e''' c'''>8 }
  \tag #'left { \clef treble a''4 g''8 a''4 g''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' c'''>4 r8 r4 r8 }
  \tag #'left { \clef treble fis''4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e''' e''>4 <dis''' dis''>8 <e''' e''>4 <d''' d''>8 }
  \tag #'left { \clef treble <c'' g'>4 <c'' fis'>8 <c'' g'>4 <c'' f'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' c''>4 r8 r4 c'''8\trill }
  \tag #'left { \clef treble <g' e'>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' f''>4 <e''' e''>8 <d''' d''>4 <c''' c''>8 }
  \tag #'left { \clef treble <c'' a'>4 <b' g'>8 <a' f'>4 <g' e'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' b'>4 <a'' a'>8 <g'' g'>4 <f'' f'>8 }
  \tag #'left { \clef treble <f' d'>4 <e' c'>8 <d' b>4 <c' a>8 \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' e'>4 <d'' d'>8 <c'' c'>4 <b' b>8 }
  \tag #'left { \clef bass <b g>4 <a f>8 <g e>4 <f d>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a' a>4 <gis' g>8 <a' a>4 <fis' fis>8 }
  \tag #'left { \clef bass <e c>4 <d b,>8 <e c>4 <c a,>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'! g!>4 r8 r4 r8 }
  \tag #'left { \clef bass g,16 <d b,> g <d b,> g <d b,> g <d b,> g <d b,> g <d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 d'' b' }
  \tag #'left { \clef bass g,16 <d b,> g <d b,> g <d b,> f, <d b,> g <d b,> g <d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 e''16 c'' g''4 e''16 c'' }
  \tag #'left { \clef bass e,16 <e c> g <e c> g <e c> g <e c> g <e c> g <e c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 d'' b' }
  \tag #'left { \clef bass g,16 <d b,> g <d b,> g <d b,> f, <d b,> g <d b,> g <d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 e''16 c'' g''4 e''16 c'' }
  \tag #'left { \clef bass e,16 <e c> g <e c> g <e c> g <e c> g <e c> g <e c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 d'' b' }
  \tag #'left { \clef bass g,16 <d b,> g <d b,> g <d b,> f, <d b,> g <d b,> g <d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''8 e'' b' c'' e'' gis' }
  \tag #'left { \clef bass e,4 b8 c' e' gis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8 c'' e' f' a' cis' }
  \tag #'left { \clef bass a8 c' e f a cis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'8 f' e' d' e' f' }
  \tag #'left { \clef bass d8 f e d e f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8 fis' g' g a b }
  \tag #'left { \clef bass g8 fis g g, a, b, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'8 e' g' c'' d'' e'' }
  \tag #'left { \clef bass c4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 d'' b' }
  \tag #'left { \clef bass g,16 <d b,> g <d b,> g <d b,> f, <d b,> g <d b,> g <d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 ees''16 c'' g''4 ees''16 c'' }
  \tag #'left { \clef bass ees,16 <ees c> g <ees c> g <ees c> g <ees c> g <ees c> g <ees c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4.~ f''8 d'' b' }
  \tag #'left { \clef bass g,16 <d b,> g <d b,> g <d b,> f, <d b,> g <d b,> g <d b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g''4 ees''16 c'' g''4 ees''16 c'' }
  \tag #'left { \clef bass ees,16 <ees c> g <ees c> g <ees c> g <ees c> g <ees c> g <ees c> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes''4.~ aes''8 f'' d'' }
  \tag #'left { \clef bass bes,16 <f d> bes <f d> bes <f d> aes, <f d> bes <f d> bes <f d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes''4 g''16 ees'' bes''4 g''16 ees'' }
  \tag #'left { \clef bass g,16 <g ees> bes <g ees> bes <g ees> bes <g ees> bes <g ees> bes <g ees> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes''4.~ aes''8 f'' d'' }
  \tag #'left { \clef bass bes,16 <f d> bes <f d> bes <f d> aes, <f d> bes <f d> bes <f d> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes''8 g'' d'' ees'' g'' b' }
  \tag #'left { \clef bass g,4 d'8 ees' g' b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 ees'' g' aes' c'' e'! }
  \tag #'left { \clef bass c'8 ees' g aes c' e! }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'8 c''' e'' f'' aes'' cis'' }
  \tag #'left { \clef bass f4 \clef treble e'8 f' aes' cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''8 f'' a'! bes' d'' fis' }
  \tag #'left { \clef treble d'8 f' a! bes d' fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8 d''' fis'' g'' bes'' d'' }
  \tag #'left { \clef treble g4 fis'8 g' bes' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble ees''8 g'' b'! c'' ees'' g' }
  \tag #'left { \clef treble ees'8 g' b! c' ees' g }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble aes'8 c'' e'! f' aes' cis' }
  \tag #'left { \clef bass aes8 c' e! f aes cis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'8 f' ais \clef bass b d' fis }
  \tag #'left { \clef bass d8 f ais, b, d fis, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass g8 b d ees g b, }
  \tag #'left { \clef bass g,8 b, d, ees, g, b,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass c8 ees g, aes, c fis, }
  \tag #'left { \clef bass c,8 ees, g,, aes,, c, fis,, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass g,8 b, d g a b }
  \tag #'left { \clef bass \split { r4. f,4. } { g,,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'8 g d' ees'8 g fis' }
  \tag #'left { \clef bass \split { ees,4. c, } { g,,2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g'4. f' } { g2.~ } }
  \tag #'left { \clef bass g,,8 b,, d, g, a, b, }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees'4. c' } { g2. } }
  \tag #'left { \clef bass c8 g, d ees g, fis }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r8 b d' g' a' b' }
  \tag #'left { \clef bass \split { g4. f } { g,2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8 g' d'' ees'' g' fis'' }
  \tag #'left { \clef bass \split { ees4. c } { g,2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g''4. f''! } { g'2.~ } }
  \tag #'left { \clef bass g,8 b, d g a b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { ees''4. c'' } { g'2. } }
  \tag #'left { \clef bass c'8 g d' ees' g  fis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { b'8 } { s8 } \clef bass fis8[ g] a b c' \clef treble }
  \tag #'left { \clef bass g'8 r r r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'8 e' fis' g' a' b' }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble b8 a b c' d' e' }
  \tag #'left { \clef bass g8 fis g a b c' \clef treble }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble fis'8 g' a' b' c'' d'' }
  \tag #'left { \clef treble d'8 e' fis' g' a' b' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' d'>8 <fis' c'> <g' d'> <a' e' c'> <b' f' d'> <c'' g' e'> }
  \tag #'left { \clef treble b8 a b r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d'' a' f'>8 <e'' b' g'> <f'' c'' a'> <g'' d'' b'> <a'' e'' c''> <b'' f'' d''> }
  \tag #'left { \clef treble r2. \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''2.~\startTrillSpan }
  \tag #'left { \clef bass <c' g e>8 <b f d> <c' g e> <d' a f> <d' b g> <f' c' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''2.~ }
  \tag #'left { \clef treble <g' d' b>8 <a' e' c'> <b' f' d'> <c'' g' e'> <d'' a' f'> <e'' c'' g'> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''2.~ }
  \tag #'left { \clef treble <f'' c'' a'>4 <e'' c'' g'>8 <f'' c'' a'>4 <e'' c'' g'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''2.~ }
  \tag #'left { \clef treble <d'' c'' f'>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''2.~ }
  \tag #'left { \clef treble <e'' c'' g'>4 <d'' c'' f'>8 <e'' c'' g'>4 <d'' c'' f'>8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \afterGrace { c'''2. s1*0\stopTrillSpan } { b''16 c''' } }
  \tag #'left { \clef treble <c'' e'>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c''' a''>4 <e''' c''' g''>8 <f''' c''' a''>4 <e''' c''' g''>8 }
  \tag #'left { \clef treble c''2.~\startTrillSpan }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <dis''' c''' fis''>4 r8 r4 r8 }
  \tag #'left { \clef treble c''2.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e''' c''' g''>4 <dis''' c''' fis''>8 <e''' g''>4 <d''' c''' f''>8 }
  \tag #'left { \clef treble c''2.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' e''>4 r8 r4 c'''8 }
  \tag #'left { \clef treble \afterGrace { c''2. s1*0\stopTrillSpan } { b'16 c'' } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' c'''>8 <dis''' a''> <e''' b''> <cis''' g''> <d''' a''> <b'' f''> }
  \tag #'left { \clef treble a''8 fis'' g'' e'' f'' d'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'''! g''>8 <ais'' e''> <b'' f''> <gis'' d''> <a'' e''> <fis'' c''> }
  \tag #'left { \clef treble e''8 cis'' d'' b' c'' a' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g''! d''>8 <e'' b'> <f'' c''> <dis'' a'> <e'' b'> <cis'' g'> }
  \tag #'left { \clef treble b'8 gis' a' fis' g' e' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''! a'>8 <b' f'> <c''! g'> <ais' e'> <b' f'> <gis' d'> }
  \tag #'left { \clef treble f'8 d' e' cis' d' b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <a'! e'>8 <b' d'> <c'' c'> <b' f'> <c'' e'> <d'' d'> }
  \tag #'left { \clef treble c'8 b a d' c' b }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g'>8 <d'' f'> <e'' e'> <d'' a'> <e'' g'> <f'' f'> }
  \tag #'left { \clef treble e'8 d' c' f' e' d' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' b'>8 <f'' a'> <g'' g'> <f'' c''> <g'' b'> <a'' a'> }
  \tag #'left { \clef treble g'8 f' e' a' g' f' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' d''>8 <a'' c''> <b'' b'> <a'' e''> <b'' d''> <c''' c''> }
  \tag #'left { \clef treble b'8 a' g' c'' b' a' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' f''>8 <c''' e''> <d''' d''> <c''' g''> <d''' f''> <e''' e''> }
  \tag #'left { \clef treble d''8 c'' b' e'' d'' c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' g''>8 <d''' f''> <e''' e''> <c''' g''> <d''' f''> <e''' e''> }
  \tag #'left { \clef treble e''8 d'' c'' e'' d'' c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <d''' c''' a'' d''>4 r8 r4 r8 }
  \tag #'left { \clef treble <c'' a' f'>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <ees''' c''' a'' fis'' ees''>4 r8 r4 r8 }
  \tag #'left { \clef treble <c'' a' fis'>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'''! c''' g'' e''!>4 \tuplet 3/2 { g'16 a' b' } c''8 d'' e'' }
  \tag #'left { \clef treble <g' e' c' g>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''8 g'' a'' b'' c''' d''' }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'''8 f''' d''' e''' f''' d''' }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'''8 f''' d''' e''' f''' d''' }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \grace { cis'''8 } d'''2.~\startTrillSpan }
  \tag #'left { \clef treble r4 g32 a b c' d'8 e' fis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2.~ }
  \tag #'left { \clef treble g'8 a' b' c'' d'' e'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2.~ }
  \tag #'left { \clef treble f''!8 g'' e'' f'' g'' e'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2.~ }
  \tag #'left { \clef treble f''8 g'' e'' f'' g'' e'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2.~ }
  \tag #'left { \clef treble f''2.~\startTrillSpan }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2. s1*0\stopTrillSpan }
  \tag #'left { \clef treble f''2.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d'''2.\startTrillSpan } { b''2.~ \tweak outside-staff-priority ##f \tweak Y-offset -1 \startTrillSpan } }
  \tag #'left { \clef treble f''2.~ }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { d'''2. s1*0\stopTrillSpan } { b''2. s1*0\stopTrillSpan } }
  \tag #'left { \clef treble f''2. s1*0\stopTrillSpan }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2.~\startTrillSpan }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''2. s1*0\stopTrillSpan }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble dis'''2.~\startTrillSpan }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \afterGrace { dis'''2. s1*0\stopTrillSpan } { cisis'''16 dis''' } }
  \tag #'left { \clef treble R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble R2.\fermata }
  \tag #'left { \clef treble R2.\fermata }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'''~ cis'''~ e''~>2. }
  \tag #'left { \clef bass a,8 gis, a, b, cis d }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'''~ cis'''~ e''~>4. <e''' cis''' e''>8 <d''' b'' e''> <cis''' a'' e''> }
  \tag #'left { \clef bass e8 fis gis a b cis' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' gis'' e''>4 <cis''' a'' e''>8 <b'' gis'' e''>4 <cis''' a'' e''>8 }
  \tag #'left { \clef bass d'4 cis'8 d'4 cis'8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' gis'' e''>4 r8 r4\fermata e''8 }
  \tag #'left { \clef bass d'4 r8 r4\fermata r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'''~ c'''!~ e''~>2. }
  \tag #'left { \clef bass a8 gis a b c'! d' \clef treble }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'''~ c'''~ e''~>4. <e''' c''' e''>8 <d''' b'' e''> <c''' a'' e''> }
  \tag #'left { \clef treble e'8 fis' gis' a' b' c'' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' g''! f''>4 <c''' g''>8 <b'' g'' f''>4 <c''' g''>8 }
  \tag #'left { \clef treble d''4 e''8 d''4 e''8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' g'' f''>4 r8 r4\fermata g''8 }
  \tag #'left { \clef treble d''4 r8 r4\fermata r8 \clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'''~ d'''~ b''~ g''~ f''~>2. }
  \tag #'left { \clef bass <g, g,,>8 <fis, fis,,> <g, g,,> <a, a,,> <b, b,,> <c c,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' d''' b'' g'' f''>2. }
  \tag #'left { \clef bass <d d,>8 <e e,> <f f,> <g g,> <a a,> <b b,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e''' c''' g'' e''>8 <d''' d''> <c''' c''> <b'' b'> <a'' a'> <g'' g'> }
  \tag #'left { \clef bass <c' c>4 r8 r4 r8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f'' f'>8 <e'' e'> <d'' d'> <c'' c'> <b' b> <a' a> }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' g>4 r8 r4 r8 }
  \tag #'left { \clef bass R2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <b g f d>4 r8 r4 r8 }
  \tag #'left { \clef bass <g, g,,>4 s8 s4 s8 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <c' g e>4 r8 r4\fermata }
  \tag #'left { \clef bass <c c,>4 r8 r4\fermata }
  \tag #'common { s2. }
  |

  \bar "|."
}

movementSpecs = #'(
  (firstMovement "Allegro con brio")
  (secondMovement "Adagio")
  (thirdMovement "Scherzo. Allegro")
  (fourthMovement "Allegro assai")
)
