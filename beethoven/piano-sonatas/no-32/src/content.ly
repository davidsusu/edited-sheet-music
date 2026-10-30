\version "2.26.0"

\include "../../shared/src/lilypond/lib.ily"

workTitle = "Piano Sonata No. 32"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 111"
workDate = "1821–1822"
workEditor = "Dávid Horváth"

firstMovement = {

  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers
  \time 4/4
  \set Timing.beatBase = #1/4
  \set Timing.beatStructure = #'(2 2)
  \key c \minor
  \accidentalStyle default
  \mark \markup { \bold "Maestoso" }
  \tempo 4 = 52

  \partial 32
  \tag #'right { \clef treble r32 }
  \tag #'left { \clef bass <ees' ees>32 }
  \tag #'common { s32 }
  |

  \tag #'right { \clef treble r8 r16. <ees'' c'' a' ees'>32 <ees'' c'' a' ees'>4~ <ees'' c'' a' ees'>8..[ <c'' a'>32] \split { c''8.^\trill[ b'32 c''] } { a'4 } }
  \tag #'left { \clef bass <fis fis,>8..[ <fis, fis,,>32] <fis fis,>4~ <fis fis,>8..[ <ees' fis>32] <ees' fis>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' g'>8 r <c'' g' ees'> r \grace { s64*7 d'64[ g' b'!] } <d'' g' d'>8 r r4 }
  \tag #'left { \clef bass <d' g>8 r <c' g c> r \grace { b,,64[ d, g, b, d g b] s64*3 } <b, b,,>8 r r r16. <aes' aes>32 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 r16. <aes'' f'' d'' aes'>32 <aes'' f'' d'' aes'>4~ <aes'' f'' d'' aes'>8..[ <f'' d''>32] \split { f''8.^\trill[ e''32 f''] } { d''4 } }
  \tag #'left { \clef bass <b b,>8..[ <b, b,,>32] <b b,>4~ <b b,>8..[ \clef treble <aes' b>32] <aes' b>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e'' g'>8 r <f'' c'' f'> r \grace { s64*64 e'64[ g' c'' e''] } <g'' c'' g'>8 r r4 }
  \tag #'left { \clef bass <des' bes!>8 r <c' aes> r \grace { e,64[ g, c e g c'] s64*4 } <e! e,!>8 r r r16. <des' des>32 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 r16. <des''' bes'' f'' des''>32 <des''' bes'' f'' des''>4~ <des''' bes'' f'' des''>8..[ <bes'' des''>32] \split { bes''8.^\trill[ a''32 bes''] } { des''4 } }
  \tag #'left { \clef bass <e e,>8..[ <f f,>32] <f f,>4~ <f f,>8..[ <des' bes f>32] <des' bes f>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <bes'' ees'' des''>8..[ <bes'' ees'' des''>32] <bes'' ees'' des''>4~ <bes'' ees'' des''>8..[ <aes'' ees'' c''>32] <aes'' ees'' c''>8..[ <ges'' ees'' c''>32] }
  \tag #'left { \clef bass <des' bes ges>8..[ <des' bes g>32] <des' bes g>4~ <des' bes g>8..[ <c' aes>32] <c' aes>8..[ <ges' ees' a>32] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <ges'' ees'' c''>8..[ <ges'' ees'' bes'>32] <ges'' ees'' bes'>4~ <ges'' ees'' bes'>8..[ <ges'' ees'' a'>32] <ges'' ees'' a'>8..[ <ges'' ees'' a'>32] }
  \tag #'left { \clef bass <ges' ees' a>8..[ <ges' ees' bes>32] <ges' ees' bes>4~ <ges' ees' bes>8..[ <ges' ees' ces'>32] <ges' ees' ces'>8..[ <ges' ees' c'>32] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <ges'' ees'' a'>8..[ <f'' des'' aes'>32] <f'' des'' aes'>4~ <f'' des'' aes'>8..[ <f'' ces'' aes'>32] <f'' ces'' aes'>8..[ <f'' ces'' aes'>32] }
  \tag #'left { \clef bass <ges' ees' c'>8..[ <f' des'>32] <f' des'>4~ <f' des'>8..[ <f' d'>32] <f' d'>8..[ <d! d,!>32] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' ces'' aes'>8..[ <ees'' c'' aes'>32] <ees'' c'' aes'>4~ <ees'' c'' aes'>8..[ <ees'' c'' aes'>32] <ees'' c'' aes'>8..[ <des'' bes' g'>32] }
  \tag #'left { \clef bass <d d,>8..[ <ees ees,>32] <ees ees,>4~ <ees ees,>8..[ <ees ees,>32] <ees ees,>8..[ <e e,>32] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <des'' bes' g'>8..[ <des'' bes' f'>32] <des'' bes' f'>8..[ <des'' bes' e'>32] <des'' bes' e'>8-.[ <c'' f' c'>-. <c'' f' c'>-. <c'' fis' c'>-.] }
  \tag #'left { \clef bass <e e,>8..[ <f f,>32] <f f,>8..[ <g g,>32] <g g,>8-.[ <aes aes,>-. <aes aes,>-. <aes, aes,,>-.] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' g' d'>8-. r r4 r \split { g'4( } { b8\rest c' } }
  \tag #'left { \clef bass <g, g,,>8-. g[ g <aes g>] <aes f>[ <g f> <g f> <g ees>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { a'4 b' c'') } { <fis' c'>4 <f' d'> <g' ees'> } <c'' a' ees'>8..([ <b' g' d'>32]) }
  \tag #'left { \clef bass \split { g8[ g g g] g[ g g g]~ } { ees4( d c) fis,8..( g,32) } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b' g' d'>4. r8 r4 \clef bass \split { g4 } { a,8\rest c } }
  \tag #'left { \clef bass \split { <g g,>8[ g, g, <aes, g,>] <aes, f,>[ <g, f,> <g, f,> <g, ees,>] } { s1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <a fis c>4( <b f d> <c' g ees>) <c' a ees>8..( <b g d>32) }
  \tag #'left { \clef bass \split { g,8[ g, g, g,] g,[ g, g, g,]~ } { ees,4( d, c,) fis,,8..( g,,32) } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <b g d>2 <b g d>4.. <b g d>16 }
  \tag #'left { \clef bass \split { g,8[ g, g, g,] g,[ g, g, g,] } { g,,2 g,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <b g d>1 }
  \tag #'left { \clef bass g,,32[ aes,, g,, aes,, g,, aes,, g,, aes,,] g,,[ aes,, g,, aes,, g,, aes,, g,, aes,,] g,,[ aes,, g,, aes,, g,, aes,, g,, aes,,] g,,[ aes,, g,, aes,, g,, aes,, g,, aes,,] }
  \tag #'common { s1 }
  |

  \mark \markup { \bold "Allegro con brio ed appassionato" }
  \tempo 4 = 128

  \tag #'right { \clef bass <d' b g d>1 }
  \tag #'left { \clef bass g,,16 aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <g' d' b g>16 aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, aes, g, aes,32 b, }
  \tag #'left { \clef bass g,,16 aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,,32 b,, }
  \tag #'common { s1 }
  |

  \repeat volta 2 {

  \tag #'right { \clef bass c4-. r r r8 \tuplet 3/2 { g,16[ a, b,] } }
  \tag #'left { \clef bass c,4-. r r r8 \tuplet 3/2 { g,,16[ a,, b,,] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass c4-. ees-. b,4.^\fermata \tuplet 3/2 { g,16[ a, b,] } }
  \tag #'left { \clef bass c,4-. ees,-. b,,4.^\fermata \tuplet 3/2 { g,,16[ a,, b,,] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass c4-. ees-. b,4. aes!8-. }
  \tag #'left { \clef bass c,4-. ees,-. b,,4. aes,!8-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass g8-.[ f-. ees-. d-.] ees16 f ees d c8 aes-.( }
  \tag #'left { \clef bass g,8-.[ f,-. ees,-. d,-.] ees,16 f, ees, d, c,8 aes,-.( }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass g8-. f-. ees-. d-.) ees16 f ees d c aes bes^\markup { "a tempo." } aes }
  \tag #'left { \clef bass g,8-. f,-. ees,-. d,-.) ees,16 f, ees, d, c, aes, bes, aes, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass g16 aes g f ees f ees d ees f ees d c g f ees }
  \tag #'left { \clef bass g,16 aes, g, f, ees, f, ees, d, ees, f, ees, d, c, g, f, ees, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass f16 g f ees d aes g f g aes g f e bes aes g }
  \tag #'left { \clef bass f,16 g, f, ees, d, aes, g, f, g, aes, g, f, e, bes, aes, g, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass aes16 c' g c' f c' fis c' b a g d' \clef treble c' b f' ees' }
  \tag #'left { \clef bass aes,16 c g, c f, c fis, c b, a, g, d c b, f ees }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'16 aes'! g' f' d'' c'' b' f'' ees'' d'' aes'' g'' f'' d''' c''' b'' }
  \tag #'left { \clef bass d16 aes! g f \clef treble d' c' b f' ees' d' aes' g' f' d'' c'' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'''16 ees''' d''' aes''' g''' f''' ees''' d''' c''' b'' aes'' g'' f'' ees'' d'' g'' }
  \tag #'left { \clef treble f''16 ees'' d'' aes'' g'' f'' ees'' d'' c'' b' aes' g' f' ees' d' g' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''4 ees'' b'4. aes''8 } { <g' ees'>8[ <g' ees'> <g' ees'> <g' ees'>] <g' f'>[ <g' f'> <g' f'> <g' f'>] } }
  \tag #'left { \clef treble c'4 \clef bass <c c,> r <g, g,,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''8[ f'' ees'' d''] ees''16 f'' ees'' d'' c''8 aes''-.( } { <g' f'>8[ <g' f'> <g' f'> <g' f'>] r4 g'8_\markup { \italic "poco ritente" }[ g'] } }
  \tag #'left { \clef bass r8 <d' g> <c' g> <b g> r4 <ees' c'>8 <f' g>-.( }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''8-.[ f''-. ees''-. d''-.]) ees''16 f'' ees'' d'' c''8 aes'''\noBeam ^\markup { "a tempo." }( } { g'8 <b' g'> <c'' g'> g' r g'~ g' f'''16[ aes''] } }
  \tag #'left { \clef bass <ees' g>8-. <d' g>-. <c' g>-. <b g>-.) r <ees' c'>~ <ees' c'> <g, g,,>\noBeam }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'''8[ f''' ees''' d''']) ees'''([ d''' c''' b'']) } { ees'''16 g'' d''' g'' c''' g'' d''' <g'' f''> ees''' g'' d''' g'' c''' g'' b'' g'' } }
  \tag #'left { \clef bass <g, g,,>8[ <g, g,,> <a, a,,> <b, b,,>] <c c,>[ <b, b,,> <c c,> <d d,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c'''8([ bes'' aes'' g'']) aes''([ f'' ees'' d'']) } { g''16 c'' g'' c'' aes'' c'' g'' c'' aes'' c'' f'' c'' ees'' c'' d'' c'' } }
  \tag #'left { \clef bass <ees ees,>8[ <e e,> <f f,> <e e,>] <f f,> <f' c' aes>4 <f' c' aes>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { d''8( c'') c''2^\markup { \italic "poco ritente" } c''4 } { f'4 fis'( g') a' } }
  \tag #'left { \clef bass \split { c'4 ees'2 ees'4 } { aes4 aes( g) fis } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''4^\trill( ees''8 d'') c''4^\markup { "a tempo." } f''\rest } { g'4 g' c'-. ees'-. } }
  \tag #'left { \clef bass <ees' g>4 <f' b g>~ g16 f ees d c d ees c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b4~ b16 d' f' aes'! g' aes' g' f' ees' f' ees' d' }
  \tag #'left { \clef bass d16 c b, a, g, b, d f ees8[ <g, g,,>( <c c,> <b,! b,,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees'16 f' ees' d' c' ees' g' bes' aes' bes' aes' g' f' g' f' ees' }
  \tag #'left { \clef bass <c c,>8[ <f f,>) <ees ees,>-. <c c,>-.] r <c c,>([ <d d,> <c c,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'16 g' f' ees' d' f' aes' c'' bes' c'' bes' aes' g' aes' g' f' }
  \tag #'left { \clef bass <d d,>8[ <g g,>) <f f,>-. <ees ees,>-.] <d d,>-.[ <bes,! bes,,!>-. <c c,>-. <d d,>-.] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 bes' aes' g' f' ees' d' ees' f' ces' bes ces' bes d' f' aes' }
  \tag #'left { \clef bass <ees ees,>4-. <g g,>-. <d d,>8 d,~ d,16 f, aes, c! }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'8[ <f' f>( <bes' bes> <aes' aes>] <bes' bes>[ <des'' des'>) <c''! c'!>-. <g' g>-.] }
  \tag #'left { \clef bass bes,16 c bes, aes, g, aes, g, f, g, aes, g, f, e, g, bes, des }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <g' g>([ <c'' c'> <bes' bes>] <c'' c'>[ <ees'' ees'>) <ees'' ees'>-. <a' a>-.] }
  \tag #'left { \clef bass c16 des c bes, aes, bes, aes, g, aes, bes, aes, ges, f, a, c ees }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <bes' bes>([ <des'' des'> <c'' c'>] <des'' des'>[ <f'' f'>) <ees'' ees'>] bes'16 aes' }
  \tag #'left { \clef bass des16 ees des c bes, c bes, a, bes, c bes, aes, g,! bes, des f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'16 ees' f' g' aes' g' aes' bes' \split { aes''4-. c'''-. } { c''16 des'' c'' bes' s4 } }
  \tag #'left { \clef bass ees16 f ees des c des c bes, aes,4 \clef treble aes'16 c'' bes' aes' }
  \tag #'common { s1 }
  |

  \bar "||"
  \key as \major

  \tag #'right { \clef treble g''4~ g''16 bes'' des''' f''' ees''' f''' ees''' des''' c''' des''' c''' bes'' }
  \tag #'left { \clef treble bes'16 aes' g' f' ees' g' bes' des'' c''8[ <g' g>( <aes' aes> <g' g>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''16 des''' c''' bes'' a'' c''' ees''' ges''' f''' ges''' f''' ees''' des''' ees''' des''' c''' }
  \tag #'left { \clef treble <aes' aes>8[ <des'' des'>) <c'' c'>-. <a' a>-.] r <a' a>([ <bes' bes> <a' a>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'''16 ees''' des''' c''' bes'' des''' f''' aes'''! ges''' aes''' ges''' f''' ees''' f''' ees''' des''' }
  \tag #'left { \clef treble <bes' bes>8[ <ees'' ees'>) <des'' des'>-. <bes' bes>-.] r <bes' bes>([ <c'' c'> <bes' bes>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees'''16 f''' ees''' des''' c''' ees''' ges''' bes''' aes''' bes''' aes''' ges''' f''' ges''' f''' ees''' }
  \tag #'left { \clef treble <c'' c'>8[ <f'' f'>) <ees'' ees'>-. <c'' c'>-.] r \clef bass <aes, aes,,>[ <bes, bes,,> <c c,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \ottava #0 f'''2 \clef bass des, }
  \tag #'left { \clef bass <f des>16 aes <f des> aes <f des> aes <f des> aes <f des> aes <f des> aes <f des> aes <f des> aes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass d,2 \clef treble ces'''' }
  \tag #'left { \clef bass <aes f d>16 ces' <aes f d> ces' <aes f d> ces' <aes f d> ces' <aes f d> ces' <aes f d> ces' <aes f d> ces' <aes f d> ces' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 ees'''2( c'''!8. aes''16) }
  \tag #'left { \clef bass <ees ees,>4 r r r8. <ees' c'! ees>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes''4( g''8)[ r16 f''] f''4( ees''8)[ r16 <des''' g'' des''>] }
  \tag #'left { \clef bass <des' bes ees>4. r16 <c' aes ees> <c' aes ees>4 <bes g ees>8[ r16 <bes g ees>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <des''' g'' des''>4 <c''' aes'' c''>~ \tuplet 12/8 { <c''' aes'' c''>32_\markup { \italic "Meno allegro" } ([ ees''' d''' ees''' f''' ees''' b'' c''' b'' c''' des''' c''']) } \tuplet 6/4 { g''16([ aes'' bes'' aes'' g'' aes'']) } }
  \tag #'left { \clef bass <bes g ees>4 <c' aes ees> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 5/4 { aes''16([ g'' aes'' bes'' aes'']) } g''8[ r16 f''] \tuplet 5/4 { f''16([ ees'' f'' g'' f'']) } ees''8[ r16 <des''' g'' des''>] }
  \tag #'left { \clef bass <des' bes ees>4. r16 <c' aes ees> <bes g ees>4. r16 <bes g e> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <des''' g'' des''>4 <c''' aes'' c''> r r8. <f''' bes'' g''>16^\markup { "Adagio." } }
  \tag #'left { \clef bass <bes g e>4 <aes f> r r8. \clef treble <bes' g' des'>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f''' bes'' g''>4 <ees''' aes'' ees''> r r8 aes'''16^\markup { "Tempo I." } ces'''' }
  \tag #'left { \clef treble <bes' g' des'>4 <c'' aes' c'> r r8 <ces'' aes' f' d'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes'''16( ces'''') f'''( aes''') d'''( f''') ces'''( d''') aes''( ces''') f''( aes'') d''( f'') ces''( d'') }
  \tag #'left { \clef treble <ces'' aes' f' d'>8 f''16( aes'') d''( f'') ces''( d'') aes'( ces'') f'( aes') \clef bass d'( f') ces'( d') }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes'16( ces'') f'( aes') d' ees' f' g' aes' bes' c'' des''! ees'' e'' f'' ees'' }
  \tag #'left { \clef bass aes16( ces') f( aes) d ees f g aes bes c' des'! ees' e' f' ees' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''16 ees'' c'' aes' f'' ees'' c'' aes' f'' ees'' des'' bes' f'' ees'' des'' bes' }
  \tag #'left { \clef bass <aes, aes,,>4-. <c c,>-. <g, g,,>2-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''16 aes'' ees'' c'' bes'' aes'' ees'' c'' bes'' aes'' f'' des'' ees''' des''' aes'' des'' }
  \tag #'left { \clef bass <ges, ges,,>4-. <aes, aes,,>-. <f, f,,>2-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees'''16 des''' aes'' des'' ees''' des''' aes'' des'' des''' c''' aes'' ees'' des''' c''' aes'' ees'' }
  \tag #'left { \clef bass <fes, fes,,>4-. <aes, aes,,>-. <ees, ees,,>-. <aes, aes,,>8. <c c,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'''16 c''' aes'' ees'' c''' bes'' g'' des'' \split { aes''4-. c'''-. } { <ees'' c''>8[ <ees'' c''> <ees'' c''> <ees'' c''>] } }
  \tag #'left { \clef bass <ees ees,>4-. <ees, ees,,>-. r16 c' bes aes g aes bes aes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''2 ges''4-. aes''-. } { <ees'' bes'>8[ <ees'' bes'> <ees'' bes'> <ees'' bes'>] <ees'' aes'>[ <ees'' aes'> <ees'' aes'> <ees'' aes'>] } }
  \tag #'left { \clef treble r16 g' f' ees' d' ees' f' ees' \clef bass r ees des c b, c des c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { f''2 fes''4-. aes''-. } { <des'' aes'>8[ <des'' aes'> <des'' aes'> <des'' aes'>] <des'' aes'>[ <des'' aes'> <des'' aes'> <des'' aes'>] } }
  \tag #'left { \clef bass r16 f' ees' des' c' des' ees' des' r des, ees, fes, ees, des, c, des, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { ees''4 aes''8. c'''16 ees'''8[ ees'''] } { <c'' aes'>4 aes'8.[ c''16] ees''8 s }ees'''8.^\trill d'''32 ees''' }
  \tag #'left { \clef bass d,16 ees, f,! ees, des, c, bes,, aes,, g,, aes,, bes,, c, des, c, des, b,, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees'''8( f'''16 g''') g'''8( aes''') r ees'' ees''8.^\trill[ d''32 ees''] }
  \tag #'left { \clef bass c,16 des, ees, des, c, b,, c, aes,, g,, aes,, bes,, c, des, c, des, b,, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees''8( f''16 g'') g''8( aes'') r ees' ees'\trill[ f'16 g'] }
  \tag #'left { \clef bass c,16 des, ees, des, c, b,, c, aes,, g,, aes,, bes,, c, des, ees, f, g, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes'16 bes' c'' b' c'' des'' eeses'' des'' eeses'' ees'' fes'' ees'' fes'' f'' ges'' g'' }
  \tag #'left { \clef bass aes,16 bes, c b, c des eeses des eeses ees fes ees fes f ges g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes''16 bes'' c''' b'' c''' des''' eeses''' des''' eeses''' ees''' fes''' ees''' fes''' f''' ges''' g''' }
  \tag #'left { \clef bass aes16 bes c' b \clef treble c' des' eeses' des' eeses' ees' fes' ees' fes' f' ges' g' }
  \tag #'common { s1 }
  |

  } \alternative {
  {

  \tag #'right { \clef treble <aes''' aes''>4-. <aes' aes>-. r r8 \clef bass \tuplet 3/2 { g,16[ a, b,] } }
  \tag #'left { \clef treble aes'4-. \clef bass <aes, aes,,>-. r r8 \clef bass \tuplet 3/2 { g,,16[ a,, b,,] } }
  \tag #'common { s1 }
  |

  }
  {

  \tag #'right { \clef treble <aes''' aes''>4-. <aes' aes>-. r2 }
  \tag #'left { \clef treble aes'4-. \clef bass <aes, aes,,>-. r2 }
  \tag #'common { s1 }
  |

  }
  }

  \tag #'right { \clef treble r4 <g' g> r2 }
  \tag #'left { \clef bass r4 <g, g,,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 \tuplet 3/2 { a'16[ b' cis''] } <d'' a' d'>4-. r2 }
  \tag #'left { \clef bass r4 <fis, fis,,>-. r2 }
  \tag #'common { s1 }
  |

  \bar "||"
  \key g \minor

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { d'16([ e' fis']) } <g' g>4-. <bes' bes>-. }
  \tag #'left { \clef bass r4 r8 \tuplet 3/2 { d,16([ e, fis,]) } <g, g,,>4-. <bes, bes,,>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <fis' fis>2 <f' f>4-. <aes' aes>-. }
  \tag #'left { \clef bass <fis, fis,,>2 <f, f,,>4-. <aes, aes,,>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' e>2 <ees' ees>4-. <g' g>-. }
  \tag #'left { \clef bass <e, e,,>2 <ees, ees,,>4-. <g, g,,>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <d' d>4 <g' g>8. <bes' bes>16 <d'' d'>4-. <d' a! fis>-. }
  \tag #'left { \clef bass <d, d,,>4-. <g, g,,>8. <bes, bes,,>16 <d d,>4-. <c c,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s1 } { d'2( ees' } }
  \tag #'left { \clef bass <b, b,,>4 <g, g,,> g-. c'-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s1 } { a2 \afterGrace fis')^\startTrillSpan { e'16[\stopTrillSpan fis'] } } }
  \tag #'left { \clef bass fis4. ees'8 \split { d'8[ c' bes! a] } { s4 d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s1 } { g'16 d' ees'! f'! g' f' ees' d' c'4-. ees'-. } }
  \tag #'left { \clef bass \split { b4 s s2 } { g2( aes } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { s1 } { b4. aes'8 g'[ f' ees' d'] } }
  \tag #'left { \clef bass \split { s1 } { d2 \afterGrace b) \startTrillSpan { a16[ \stopTrillSpan b] } } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''2( des'' } { e'16 f' e' des' c' g' f' e' f'4-. aes'-. } }
  \tag #'left { \clef bass \split { s4 } { c'4 } r16 bes! aes g aes4 f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g'2 \afterGrace e'' \startTrillSpan) { d''16[ \stopTrillSpan e''] } } { e'4. des''8 c''[ bes' aes' g'] } }
  \tag #'left { \clef bass bes4 g c' c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' aes'>16 bes' aes' g' f' aes' des'' b' c'' b' c'' bes' c'' aes' c'' g' }
  \tag #'left { \clef bass f2 \afterGrace e \startTrillSpan { d!16[ \stopTrillSpan e] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <f' aes>16 bes aes g f aes des' b c' b c' bes c' aes c' g }
  \tag #'left { \clef bass \split { f4 s s2 } { f,2 \afterGrace e,_\startTrillSpan { d,!16[ \stopTrillSpan e,] } } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass c'16 aes c' g b f c' ees \clef treble d' g e' c' f' c' <c'' fis'> ees' }
  \tag #'left { \clef bass f,8[ ees,! d, c,] b,,[ bes,, a,,! aes,,] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' g'>16 ees' <ees'' c'' a'!> ees' <ees'' c'' a'> ees' <ees'' c'' a'> ees' <ees'' c'' a'> ees' <ees'' c'' a'> ees' <ees'' c'' a'> ees' <c'' a' ees'> c' }
  \tag #'left { \clef bass g,,8[ fis,,~ fis,, <fis, fis,,>~] <fis, fis,,> <fis, fis,,>4 <fis, fis,,>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' d' b>4-. <b' g' d' b>-. <fis' ees' c' a>2 }
  \tag #'left { \clef bass r16 g,,[ a,, b,,] r g,[ a, b,] r g,, c, ees, fis, a, c ees }
  \tag #'common { s1 }
  |

  \bar "||"
  \key c \minor

  \tag #'right { \clef treble \split { c''4-. ees''-. b'2 } { <a' fis' ees'>4 <ees' a' fis'> <aes' f' d'>2 } }
  \tag #'left { \clef bass r16 g,, c, ees, r g, c ees r g,, d, f, g, b, d f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { f''4-. aes''-. e''2 } { <d'' b' aes'>4 <d'' b' aes'> <des'' bes' g'>2 } }
  \tag #'left { \clef bass r16 g,, d, f, r g, d f r g,, g, bes,! des e g bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''4-. bes''-. fis''2 } { <e'' des'' bes'>4 < e'' des'' bes'> <ees'' c'' a'>2 } }
  \tag #'left { \clef bass r16 g,, g, bes, r g, g bes r g,, a, c ees fis a c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c'''4-. ees'''-. b''4. } { <a'' fis'' ees''>4 <ees'' a'' fis''> <aes'' f'' d''>4. } <aes''' aes''>8 }
  \tag #'left { \clef bass r16 g,, a, c r fis a c' r g,, b, d f aes f aes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'''16 aes''' g''' f''' ees''' f''' ees''' d''' ees''' f''' ees''' d''' c''' g'' a'' b'' }
  \tag #'left { \clef bass g16 aes g f ees f ees d ees f ees d c g, a, b, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' c''>4-. <ees''' ees''> <b'' b'>4. <aes'''! aes''!>8 }
  \tag #'left { \clef bass <c c,>4-. <ees ees,>-. <b, b,,>4. <aes! aes,!>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g''' g''>8[ <f''' f''> <ees''' ees''> <d''' d''>] <ees''' ees''>16 f''' ees''' d''' <c''' c''>8 <aes''' g'' f''>\noBeam }
  \tag #'left { \clef bass <g g,>8[ <f f,> <ees ees,> <d d,>] ees,16 f, ees, d, <c c,>8 r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g''' g'' f''>8-.([ <f''' g'' f''>-. <ees''' g'' f''> <d''' g'' f''>-.]) \split { ees'''16 f''' ees''' d''' c'''8 aes''\noBeam } { r8 <g'' ees''>[~ <g'' ees''>] <g' f'> } }
  \tag #'left { \clef bass <b g>8[ <b g> <c' g> <b g>] r <c' c>~ <c' c> r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''8-.([ f''-. ees''-. d''-.]) ees''16 f'' ees'' d'' c''8 } { <g' f'>8[ <g' f'> <g' f'> <g' f'>] r <g' ees'>~[ <g' ees'>] } <aes''' aes''>16\noBeam r }
  \tag #'left { \clef bass <g, g,,>8[ <g, g,,> <a, g,,> <b, g,,>] r <c c,>~ <c c,> r16 <b,! b,,!> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g''' g''>16[ r <f''' f''> r <ees''' ees''> r <d''' d''>] r <ees''' ees''>[ r <d''' d''> r <c''' c''> r <b'' b'>] r }
  \tag #'left { \clef bass r16 <b, b,,>[ r <b, b,,> r <b, b,,> r <b, b,,>] r <c c,>[ r <d d,> r <ees ees,> r <d d,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' c''>16[ r <bes''! bes'!> r <aes'' aes'> r <g'' g'>] r <aes'' aes'>[ r <g'' g'> r <f'' f'> r <ees''! ees'!>] r }
  \tag #'left { \clef bass r16 <ees ees,>[ r <e e,> r <f f,> r <e e,>] r <f f,>[ r <g g,> r <aes aes,> r <aes f>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <des'' des'>16[ r <aes'' aes'> r <des'''! des''!> r <f''' f''>] r <aes''' aes''>[ r <aes'' aes'> r <f'' f'> r <des'' des'>] r }
  \tag #'left { \clef bass r16 <aes f>[ r <des' aes f> r <des' aes f> r <des' aes f>] r <des' aes f>[ r <des' aes f> r <des' aes f> r <aes f>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <des'' des'>16[ r <c'' c'> r <c'' c'> r <c'' c'>] r <c'' g' c'>8 <c'' g' c'>4 <bes' g' c'>8 }
  \tag #'left { \clef bass r16 <aes f>[ r <g e> r <g e> r <g e>] <g e>8 e,4 \tuplet 3/2 { c,16[ d, e,] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes'16 c'' bes' aes' g' f' e' f' g' aes' bes' g' des'( e' g' bes'~ }
  \tag #'left { \clef bass <f, f,,>4-. <aes, aes,,>-. <e, e,,>~ <e, e,,>16 g, bes, des }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes'8)^([ <e' e> <f' f> <e' e>] <f' f>[ <bes' bes>) <aes' aes>-. <f' f>-.] }
  \tag #'left { \clef bass c16 des c bes, aes, bes, aes, g, aes, bes, aes, g, f, aes, bes, c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <f' f>[( <g' g>) <g' g>]~ <g' g>[( <c'' c'>) <bes' bes>-. <g' g>-.] }
  \tag #'left { \clef bass des16 ees des c bes, c bes, a, bes, c bes, aes, g, bes, des f }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 <g' g>[( <aes' aes>) <aes' aes>]~ <aes' aes>[( <des'' des'>) <c'' c'>-.] <c'' c'>16[ bes'] }
  \tag #'left { \clef bass ees16 f ees des c des c bes, c des c bes, a, c ees ges }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble a'8 bes'16 c'' f' ges' f' ees' \split { bes'4-. des''-. } { f'16 ges' f' ees' des' f' des' f' } }
  \tag #'left { \clef bass f16 ges f ees des ees des c des ees des c bes, des bes, des }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { a'4. ges''8 f''16 ges'' f'' ees'' des'' ees'' des'' c'' } { ees'16 f' ges' f' ees'8 ees''16 des'' c''4 e'\rest } }
  \tag #'left { \clef bass c16 des ees des c des c bes, a,8 <f f,>([ <bes bes,> <a! a,!>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des''16 ees'' des'' c'' bes' des'' f'' aes'' ges'' aes'' ges'' f'' ees'' f'' ees'' des'' }
  \tag #'left { \clef bass <bes bes,>8[ <ees' ees>) <des' des>-. <bes bes,>-.] r <bes bes,>([ <c' c> <bes bes,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ees''16 f'' ees'' des'' c'' ees'' ges'' bes'' aes'' bes'' aes'' ges'' f'' ges'' f'' ees'' }
  \tag #'left { \clef bass <c' c>8[ <f' f>) <ees' ees>-. <c' c>-.] r <c' c>([ <des' des> <c' c>]) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { des'''4 f''' c'''~ } { aes''16 bes'' aes'' ges'' f'' ges'' aes'' f'' ees''8 r } c'''16 ees''' ges''' bes''' }
  \tag #'left { \clef treble f'16 ges' f' ees' des' ees' f' des' aes' bes' aes' g' aes' c'' ees'' ges'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes'''16 bes''' aes''' ges''' f''' ges''' f''' ees''' f''' ges''' f''' ees''' d'''! f''' aes''' ces'''' }
  \tag #'left { \clef treble f''16 ges'' f'' ees'' des'' ees'' des'' c'' des'' ees'' des'' c'' bes' d'' f'' aes'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes'''16 ces'''' bes''' aes''' ges''' aes''' ges''' f''' ges''' aes''' ges''' f''' e''' g''' bes''' des''' }
  \tag #'left { \clef treble ges''16 aes'' ges'' f'' ees'' f'' ees'' d'' ees'' f'' ees'' des'' c'' e'' g'' f'' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''16 des''' c''' bes'' aes'' bes'' aes'' g'' aes'' bes'' aes'' g'' fis'' a'' c''' ees''' }
  \tag #'left { \clef treble e''16 f'' e'' g'' f'' g'' f'' e'' f'' g'' f'' ees'' d'' fis'' a'' c''' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'''!16 ees''' d''' c''' bes'' c''' bes'' a'' b'' c''' b'' a'' b'' d''' f''' aes'''! }
  \tag #'left { \clef treble bes''16 c''' bes'' a'' g'' a'' g'' fis'' g'' a'' g'' fis'' g'' b'' d''' f'''! }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'''16 aes''' g''' f''' ees''' f''' ees''' d''' ees''' f''' ees''' d''' ees''' g''' a''' b''' }
  \tag #'left { \clef treble ees'''16 f''' ees''' d''' c''' d''' c''' b'' c''' d''' c''' b'' c'''8 \clef bass g,16[ f,] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''''2 \clef bass c, }
  \tag #'left { \clef bass <g, ees,>16 c <g, ees,> c <g, ees,> c <g, ees,> c <bes,! g, e,> c <bes, g, e,> c <bes, g, e,> c <bes, g, e,> c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass f,,2 \clef treble c'''' }
  \tag #'left { \clef bass <aes, f,>16 c <aes, f,> c <aes, f,> c <aes, f,> c <c a, fis,> ees <c a, fis,> ees <c a, fis,> ees <c a, fis,> ees }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 g'''2( e'''8. c'''16) }
  \tag #'left { \clef bass <g, g,,>4 r r r8. <g' e' g>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4( b''8)[ r16 a''] a''4( g''8)[ r16 <f''' d''' f''>] }
  \tag #'left { \clef bass <f' d' g>4. r16 <e' c' g> <e' c' g>4 <d' b g>8[ r16 <d' b g>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f''' d''' f''>4 <e''' c''' e''>~ \tuplet 12/8 { <e''' c''' e''>32([ g''' fis''' g''' a''' g''' dis''' e''' f''' e''' b'' c''']) } \tuplet 9/8 { d'''32([ c''' fis'' g'' gis'' a'' g'' e'' c'']) } }
  \tag #'left { \clef bass <d' b g>4 <e' c' g> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \tuplet 5/4 { c''16([ b' c'' d'' c'']) } b'8[ r16 a'] \tuplet 5/4 { a'16([ g' a' b' a']) } g'8[ r16 <f'' b'>] } { <f' b>4. s16 <f' c'> <f' d'>4. s8 } }
  \tag #'left { \clef bass <f d g,>4. r16 <f c g,> <f b, g,>4. r16 <d' g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <f'' b'>4 <e'' c''> r r8. <a'' d'' g'>16 }
  \tag #'left { \clef bass <d' gis>4 <c' a> r r8. <b g f>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <a'' d'' g'>4 <g'' g'> r r8. \split { aes''16 } { d''16 } }
  \tag #'left { \clef bass <b g f>4 <c' g e> r r8. \clef treble <b' f'>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { aes''4( g''2 bes''!4)~ } { d''4( des''2 <g'' f''>4)~ } }
  \tag #'left { \clef treble <b' f'>4( <bes' e'>2) <bes' g' des'>4~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { bes''4 bes''~ bes''8[ a'' bes'' b''] } { <g'' f''>4 <g'' e''>2~ <g'' e''>8[ <aes'' f''>] } }
  \tag #'left { \clef treble <bes' g' des'>4 <bes' g' des'>2~ <bes' g' des'>8[ <aes' f' des'>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 c'' f'' aes''! c'''4 r16 c'' f'' aes'' c'''4 }
  \tag #'left { \clef bass <c' c>2.( <aes aes,>8. <f f,>16) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 c'' g'' bes'' c'''4 r16 c'' e'' g'' c'''4 }
  \tag #'left { \clef bass <f f,>4( <e e,>8)[ r16 <des des,>] <des des,>4( <c c,>8)[ r16 <bes bes,>] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r16 c'' f'' aes'' c''' e''' f'''_\markup { \italic "meno allegro" } c''' \tuplet 6/4 { ees'''16([ des''' bes'' des''' c''' aes'']) } \tuplet 6/4 { c'''16([ bes'' g'' bes'' aes'' f'']) } }
  \tag #'left { \clef bass <bes bes,>4 <aes aes,> r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \tuplet 5/4 { f''16([ e'' f'' g'' f'']) } e''8[ r16 des''] \tuplet 5/4 { des''16([ c'' des'' ees'' des'']) } c''8[ r16 bes''] } { bes'4. s16 aes' g'4. s8 } }
  \tag #'left { \clef bass <c' g c>4. r16 <c' f c> <c' e c>4. r16 <c' g e> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 5/4 { bes''16([ aes'' bes'' c''' bes'']) } aes''8 c''' \tuplet 5/4 { c'''16([ b'' c''' d''' c''']) } b''8 d''' }
  \tag #'left { \clef bass <c' aes f>8[ <c' aes f>] r <ees'! a fis> <d' b g>[ <d' b g>] r <f'! b g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 5/4 { d'''16([ c''' d''' ees''' d''']) } c'''8 ees''' \tuplet 5/4 { ees'''16([ d''' ees''' f''' ees''']) } d'''8 f''' }
  \tag #'left { \clef bass <ees' c' aes!>8[ <ees' c' aes>] r <f' c' a> <f' d' bes!>[ <f' d' bes>] r <g' d' b> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \ottava #1 \tuplet 5/4{ f'''16([ ees''' f''' g''' f''']) } ees'''8 g''' \tuplet 5/4 { g'''16([ f''' g''' aes''' g''']) } f'''8 aes''' }
  \tag #'left { \clef bass <g' ees' c'>8[ <g' ees' c'>] r \clef treble <g' ees' c'> <b' aes' f' d'>[ <b' aes' f' d'>] r <b' aes' f' d'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \tuplet 5/4 { aes'''16([ g''' aes''' bes''' aes''']) } g'''8 bes''' \tuplet 5/4 { bes'''16([ aes''' bes''' c'''' bes''']) } aes'''8 b''' }
  \tag #'left { \clef treble <c'' g' ees'>8[ <c'' g' ees'>] r <c'' g' e'> <c'' aes' f'>[ <c'' aes' f'>] r <d'' aes' f'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''''16( ees'''') a'''( c'''') fis'''( a''') ees'''( fis''') \ottava #0 c'''( ees''') a''( c''') fis''( a'') ees''( fis'') }
  \tag #'left { \clef treble <ees'' a' fis'>8 a''16( c''') fis''( a'') ees''( fis'') c''( ees'') a'( c'') fis'( a') ees'( fis') }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d''16( f''!) b'( d'') aes'!( b') f'( aes') d'( f') b( d') aes!( b) aes( b) }
  \tag #'left { \clef bass d'16( f'!) b( d') aes!( b) f( aes) d( f) b,( d) aes,!( b,) aes,( b,) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g16 b c' d' ees' f' g' aes' b' c'' d'' ees'' f'' fis'' g'' fis'' }
  \tag #'left { \clef bass g,16 b, c d ees f g aes b c' d' ees' \clef treble f' fis' g'8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble aes''16 g'' ees'' c'' aes'' g'' ees'' c'' aes'' g'' f''! d'' aes'' g'' f'' d'' }
  \tag #'left { \clef bass <c c,>4-. <ees ees,>-. <b, b,,>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'''16 c''' g'' e'' des''' c''' g'' e'' g''' f''' c''' f'' g''' f''' c''' f'' }
  \tag #'left { \clef bass <bes,! bes,,!>4-. <c c,>-. <a, a,,>2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'''16 fis''' ees''' c''' g''' fis''' ees''' c''' aes''' g''' ees''' c''' f''' ees''' c''' g'' }
  \tag #'left { \clef bass <aes,! aes,,!>4-. <c c,>-. <g, g,,>-. <c c,>8. <ees ees,>16 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'''16 ees''' c''' g'' ees''' d''' b'' f'' \split { c'''4-. ees'''-. } { <g'' ees''>8[ <g'' ees''> <g'' ees''> <g'' ees''>] } }
  \tag #'left { \clef bass <g g,>4-. <g, g,,>-. r16 d' c' b c' d' ees' c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { b''2 bes''4-. c'''-. } { <g'' d''>8[ <g'' d''> <g'' d''> <g'' d''>] <g'' c''>[ <g'' c''> <g'' c''> <g'' c''>] } }
  \tag #'left { \clef bass r16 a, g, fis, g, a, b, g, r f' e' d' e' f' g' e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { a''2 aes''4-. c'''-. } { <f'' c''>8[ <f'' c''> <f'' c''> <f'' c''>] <f'' c''>[ <f'' c''> <f'' c''> <ees''! c''>] } }
  \tag #'left { \clef bass r16 g, f, e, f, g, a, f, r g f e f g aes! fis }
  \tag #'common { s1 }
  |
\endRevisionSection
  \tag #'right { \clef treble \split { g''4 c'''8. ees'''16 g'''8[ g'''] } { <ees'' c''>4 c''8. ees''16 g''8 s } g'''8.[\trill fis'''32 g'''] }
  \tag #'left { \clef bass g16 ees! c g, ees, g, ees, c, b,, g, d, g, ees, g, f, g, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \ottava #1 g'''8([ b''']) b'''([ c'''']) \ottava #0 r g'' g''8.[\trill fis''32 g''] }
  \tag #'left { \clef bass ees,16 g, d, g, ees, g, c, g, b,, g, d, g, ees, g, f, g, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''8([ b'']) b''([ c''']) r g' aes'16 g' a' b' }
  \tag #'left { \clef bass ees,16 g, d, g, ees, g, c, g, b,, g, d, g, aes, g, a, b, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''16 d'' ees'' d'' ees'' e'' f'' e'' f'' fis'' g'' fis'' g'' a'' bes'' b'' }
  \tag #'left { \clef bass c16 d ees d ees e f e f fis g fis g a bes b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \ottava #1 c'''16 d''' ees''' d''' ees''' e''' f''' e''' f''' fis''' g''' fis''' g''' a''' bes''' b''' }
  \tag #'left { \clef treble c'16 d' ees' d' ees' e' f' e' f' fis' g' fis' g' a' bes' b' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''''4 \ottava #0 <c'' c'> r <ees'' a' fis' ees'> }
  \tag #'left { \clef treble c''4 \clef bass <c c,> r <c c,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 <b' aes'! f'! d'>-. r <d'' b' aes' f'>-. }
  \tag #'left { \clef bass r4 <c c,>-. r <c c,>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 <bes'! g' e' des'>-.( r <des'' bes' g' e'>-. }
  \tag #'left { \clef bass r4 <c c,> r <c c,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 <a' f' c'>-. r <c'' a' f'>-.) }
  \tag #'left { \clef bass r4 <c c,> r <c c,> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r2 \split { c''2 } { <aes'! f'>2 } }
  \tag #'left { \clef bass r8 c16 des c bes, aes, g, f, c des c bes, aes, g, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''2 c''4.( <d''! b'>8 } { <bes' g'>2 <aes' f'> } }
  \tag #'left { \clef bass e,16 c des c bes, g, e, c f, c des c bes, aes, g, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { e''4 c'') c''2 } { <c'' g' e'>4 e'8( f'16 g') <aes' f'>2 } }
  \tag #'left { \clef bass c,16 d,! e, f, g, c, d, e, f, c des c bes, aes, g, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''2 c''4.( f''8 } { <bes' g'>2 <aes' f'> } }
  \tag #'left { \clef bass e,16 c des c bes, g, e, c f, c des c bes, aes, g, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { g''4 c'') c''2 } { <e'' c'' g'>4 e'8( f'16 g') <aes' f' c'>2 } }
  \tag #'left { \clef bass c,16 d,! e, f, g, c, d, e, f, c des c bes, aes, g, f, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''2 c''4. b''8 } { <bes' g' c'>2 <aes' f' c'>4. <aes'' f'' d''>8 } }
  \tag #'left { \clef bass e,16 c des c bes, g, e, c f, aes, f, c, f, aes, f, c, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <b'' aes'' f'' d''>1 }
  \tag #'left { \clef bass f,16 aes, f, c, f, aes, f, c, f, aes, f, c, f, aes, f, c, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' g'' e''>2 <c''' g'' e''> }
  \tag #'left { \clef bass g,16 c g, c, g, c g, c, g, e g, c, g, e g, c, }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' g'' e''>1 }
  \tag #'left { \clef bass <c, c,,>1 }
  \tag #'common { s1 }
  |

  \bar "|."

}

secondMovement = {

  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
  \override Score.SpacingSpanner.spacing-increment = #0.8
  \tempo "Adagio molto semplice e cantabile"
  \set Score.alternativeNumberingStyle = #'numbers
  \time 9/16
  \set Timing.beatBase = #1/16
  \set Timing.beatStructure = #'(3 3 3)
  \set Timing.beamExceptions = \beamExceptions {
    8.[ 8. 8.] |
  }
  \key c \major
  \accidentalStyle default

  \repeat volta 2 {

  \partial 8.
  \tag #'right { \clef treble \split { c''8( g'16) } { e'8. } }
  \tag #'left { \clef bass <g, c,>8. }
  \tag #'common { s8. }
  |

  \tag #'right { \clef treble \split { g'4. d''8( g'16) } { e'8. f' d' } }
  \tag #'left { \clef bass <g, c,>8. <g, d,> <g, b,,> }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { g'4. g'8. } { d'8. e' f' } }
  \tag #'left { \clef bass <g, b,,>8. <g, c,> <g, d,> }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { g'8.( e'' c'') } { s8. e' g' } }
  \tag #'left { \clef bass <g, e,>8. <g, c,> <g, e,> }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { c''8. b' <b' g'> } { e'8. d' d' } }
  \tag #'left { \clef bass \split { g,,8. g, g,8( f,16) } { g,,4.~ g,,8 f,,16 } }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { c''8.( e'' g'') } { g'4. g'8. } }
  \tag #'left { \clef bass <e, e,,>4. <e, e,,>8. }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { g''8.( f'' d''8 c''16) } { a'4. a'8 <a' d'>16 } }
  \tag #'left { \clef bass <d, d,,>4. <f, f,,>8( <fis, fis,,>16) }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { b'8.( c'' d''8 g'16) } { <g' d'>8. <g' c'> <g' d'>8 d'16~ } }
  \tag #'left { \clef bass g,8. a, b,8 b,16~ }
  \tag #'common { s8.*3 }
  |

  }
  \alternative {
  {

  \partial 4.
  \tag #'right { \clef treble \split { g'4. } { d'8 d'16( <e' c'>8 <f' b>16) } }
  \tag #'left { \clef bass b,8 b,16( c8 d16) }
  \tag #'common { s8*3 }
  |

  }
  {

  \tag #'right { \clef treble \split { g'4. e'8. } { d'8 <e' c'>16 <f' b>8 <e' c'>16 s8. } }
  \tag #'left { \clef bass b,8[ c16 d8 c16] e8. }
  \tag #'common { s8.*3 }
  |

  }
  }
  \repeat volta 2 {

  \tag #'right { \clef treble \split { c''4. c''8( b'16) } { e'4. e'8. } }
  \tag #'left { \clef bass \split { a,8. e e } { a,4. a,8. } }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { b'4. b'8( e''16) } { e'4. s8. } }
  \tag #'left { \clef bass \split { gis,8. e e } { gis,4. gis,8. } }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble <e'' b'>8. <e'' c''> <d'' b'>8 <c'' a'>16 }
  \tag #'left { \clef bass <e gis,>8. <e a,> <e a,> }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble <c'' a'>8. <b' gis'> <c'' a' e'> }
  \tag #'left { \clef bass \split { e,8. e } { e,4. } <a, a,,>8. }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble <d'' b' g'!>4. <d'' b' g'>8. }
  \tag #'left { \clef bass <g,! g,,!>4. <g, g,,>8. }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble <e'' c'' g'>4. <f'' c'' a'>8. }
  \tag #'left { \clef bass <c c,>4. <f, f,,>8. }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble <d'' b' g'>8. <d'' b' g'> \split { d''8[( g''16]) } { <b' g'>8 <d'' b'>16 } }
  \tag #'left { \clef bass <g, g,,>8. <g, g,,> <g, g,,>8[ <g, g,,>16] }
  \tag #'common { s8.*3 }
  |

  }
  \alternative {
  {

  \tag #'right { \clef treble <g'' d'' b'>8[( <e'' c'' g'>16]) <e'' c'' g'>8.\noBeam e'\noBeam }
  \tag #'left { \clef bass <g, g,,>8[( <c c,>16]) <c c,>8.\noBeam e\noBeam }
  \tag #'common { s8.*3 }
  |

  }
  {

    \set Timing.beamExceptions = \beamExceptions {
      16[ 16 16] 16[ 16 16] 16[ 16 16] |
    }

  \tag #'right { \clef treble <g'' d'' b'>8( <e'' c'' g'>16) <e'' c'' g'>8. c''8( e'16 }
  \tag #'left { \clef bass <g, g,,>8( <c c,>16) <c c,>( g f e c g)~ }
  \tag #'common { s8.*3 }
  |

  }
  }
  \repeat volta 2 {

  \tag #'right { \clef treble a'8 e'16 g'8 f'16 d''8 d'16 }
  \tag #'left { \clef bass g16 cis g~ g d g~ g ais, g~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble g'8 d'16 f'8 e'16 g'8 f'16 }
  \tag #'left { \clef bass g16 b, g~ g c! g e d g~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble a'8 g'16 e''8 e'16 c''8 e'16) }
  \tag #'left { \clef bass g16 dis e g c g~ g e g~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble <c'' ees'>8^( <b' d'>16 <a' c'>8 <g' b>16 <a' c'>8 <b' d'>16 }
  \tag #'left { \clef bass g16 fis, g~ g g, g~ g f, g~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { c''8 e'!16 e''8 g'16 g''8 bes'16) } { s4. bes'8 g'16 } }
  \tag #'left { \clef bass g16 e, g~ g c, e~ e c, e~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { g''8( a'16 f''8 a'16 d''8 c''16) } { a'8 g'16 a'8 s16 a'8 fis'16 } }
  \tag #'left { \clef bass e16 cis, e~ e d, f fis fis, a }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { c''8[( b'16 c''8 cis''16] cis'' <d'' g'> g') } { <f'! d'>8.[ <f' d'>~] <f' d'>16 <f' d'> <f' d'> } }
  \tag #'left { \clef bass aes16( g, g a g, bes~ bes) b b }
  \tag #'common { s8.*3 }
  |

  }
  \alternative {
  {

  \tag #'right { \clef treble \split { g'4. } { <f' d'>16 e' d' c' d' b } c''!8( e'16) }
  \tag #'left { \clef bass b16( c'! f e f d) e c g\tieToRepeat }
  \tag #'common { s8.*3 }
  |

  }
  {

  \tag #'right { \clef treble \split { g'8.~ g'16 gis' a' b' e' e' } { <f' d'>16 e' f' e' <e' d'> <e' c'> <e' b> c' d' } }
  \tag #'left { \clef bass b16( c' d' c' b a gis a b) }
  \tag #'common { s8.*3 }
  |

  }
  }

  \tag #'right { \clef treble \split { c''8( e'16 } { s8 c'16 } }
  \tag #'left { \clef bass c'16 a, e~ }
  \tag #'common { s8. }

  \repeat volta 2 {

  \tag #'right { \clef treble \split { f'8 e'16 } { <d' b>8. } c''8 <e' c'>16 }
  \tag #'left { \clef bass e16 gis, e~ e a, e~ }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble b'8 <e'^~ b>16 <e' c'> c'' b') c'' <b' e'> \split { <e'' b'>16^( } { \once \omit Flag \once \omit Stem b'16~ } }
  \tag #'left { \clef bass e16 gis, e~ e a, e~ e gis, gis~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { f''8 e''16) e''8( d''16) d'' c'' c''~ } { b'16 b' c'' c''8 gis'16 gis'16 a' a'~ } }
  \tag #'left { \clef bass gis16 gis a~ a a b~ b c' d' }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { <c'' a'>16 } { \once \omit Flag \once \omit Stem a'16 } <b' gis'>16 <b' gis'>~ <b' gis'>( <c'' e'>) <c'' e'>~( <c'' e'> <d'' b'>) <d'' b'> }
  \tag #'left { \clef bass dis'16 e' e'~ e' a a~ a g! g~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { <d'' b'>4. <dis'' b'>8.} { \once \override Staff.NoteCollision.merge-differently-dotted = ##t b'8[ f'16 e'8 f'16] \once \override Staff.NoteCollision.merge-differently-dotted = ##t b'8 f'16 } }
  \tag #'left { \clef bass g16 g, g~ g g, g~ g g, g~ }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { e''8. e''8( g''16) g''8( f''16) } { bes'8 e'16 <bes' g'>8 <e'' bes'>16 a'8. } }
  \tag #'left { \clef bass g16 c, c~ c c, c~ c f,, f, }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble \split { e''8[ d''16 cis''8 d''16] d'' a'' g'' } { <b'! f'>8.[ <b' f'>] <d'' b'>8 d''16 } }
  \tag #'left { \clef bass g,16 g,, g,~ g, g,, g,~ g, g,, b, }
  \tag #'common { s8.*3 }
  |

  }
  \alternative {
  {

  \tag #'right { \clef treble \split { g''16( f'' e'' f''[ e'']) } { d''16 b' c''!~ c''8 } e'16[( f' e') e']( }
  \tag #'left { \clef bass \split { s16 g g( a g) } { b,16 g, c~ c8 } e16([ f e) e~] }
  \tag #'common { s8.*3 }
  |

  \tag #'right { \clef treble c''8 <e' c'>16) }
  \tag #'left { \clef bass e16 a, e\tieToRepeat }
  \tag #'common { s8. }

  }
  {

  \tag #'right { \clef treble \split { g''16( f'' e'' f'' e'' e'') } { d''16 b' c''!~ c''8 c''16 } }
  \tag #'left { \clef bass \split { s16 g g a g g } { b,16 g, c~ c8 c16 } }
  \tag #'common { s4. }
  |

  }
  }

  \time 6/16
  \set Timing.beatBase = #1/16
  \set Timing.beatStructure = #'(2 2 2)
  \tempo "L'istesso tempo"

  \repeat volta 2 {

  \partial 8
  \tag #'right { \clef treble r8 }
  \tag #'left { \clef bass \tuplet 3/2 16 { c'16( g32 fis16 g32) } }
  \tag #'common { s8 }
  |
\beginRevisionSection
  \partial 4.
  \tag #'right { \clef treble \split { \tuplet 3/2 16 { e''16( c''32 b'16 c''32) d''16( b'32 ais'16 b'32) } } { \tuplet 3/2 16 { g'16 e'32 d'16 e'32 f'16 d'32 cis'16 d'32 } } r8 }
  \tag #'left { \clef bass g16 g~ g g \tuplet 3/2 16 { d16( g,32 fis,16 g,32) } }
  \tag #'common { s4. }
  |
\endRevisionSection
  \tag #'right { \clef bass \tuplet 3/2 16 { f16^( d32 cis16 d32 \clef treble g'16 e'32 dis'16 e'32 g'16 e'32 g'16 f'32) } }
  \tag #'left { \clef bass a,16_( b,~ b, c cis d }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 16 { a'16( fis'32 a'16 g'32) } <e'' g'>8 <c'' g'> }
  \tag #'left { \clef bass dis16 e) \tuplet 3/2 16 { d16( b,32 d16 c32 f16 dis32 f16 e32) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { \tuplet 3/2 16 { c''16( b'32 d''16 c''32 c''16 ais'32 c''16 b'32) } b'8 } { \tuplet 3/2 16 { e'16 d'32 f'!16 e'32 e'16 cis'32 e'16 d'32 } <g' d'>8 } }
  \tag #'left { \clef bass g8 g, \tuplet 3/2 16 { f,16( e,32 g,16 f,32) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { c''8 \tuplet 3/2 16 { e''16( d''32 f''16 e''32 } g''8)~ } { g'8 e'16 g' \tuplet 3/2 16 { d''16 cis''32 e''16 d''32 } } }
  \tag #'left { \clef bass \tuplet 3/2 16 { e,16( d,32 f,16 e,32) c,16( b,,32 d,16 c,32 bes,,16 a,,32 c,16 bes,,32) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { g''16 g''~ \tuplet 3/2 16 { g''16( e''32 g''16 f''32 e''16 cis''!32 e''16 d''32) } } { \tuplet 3/2 16 { cis''16 b'32 d''16 cis''32 } a'16 a'~ a' a' } }
  \tag #'left { \clef bass a,,16 a, d, d f, fis,~ }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { c''!16[( b' c'' cis'' d''16] \tuplet 3/2 { d''16[ g'32]) } } { a'16 d' \tuplet 3/2 16 { g'16 e'32 g'16 f'32~ f'16 d'32 <aes' f'>16 <f' d'>32 } } }
  \tag #'left { \clef bass \split { \tuplet 3/2 16 { fis,16 fis,32( a,16 g,32) } a,16 bes,~ bes, b,~ } { s8 g,~ g,16 g,~ } }
  \tag #'common { s4. }
  |

  }
  \alternative {
  {

  \partial 4
  \tag #'right { \clef treble \split { g'16 g'~ g' g' } { \tuplet 3/2 16 { <f' d'>16 d'32 b16 c'32 d'16 c'32 f'16 e'32 } } }
  \tag #'left { \clef bass \split { b,16 s } { \tuplet 3/2 16 { g,16 b,32( d16 e32 } } \tuplet 3/2 16 { f16 e32 d16 c32) } }
  \tag #'common { s4 }
  |

  }
  {

  \partial 4.
  \tag #'right { \clef treble \split { g'16 g'~ \tuplet 3/2 16 { g'16 gis'32 a'16 b'32 e'16 e'32~ e'16 e'32 } } { \tuplet 3/2 16 { <f' d'>16 d'32 <f' b>16 <e' c'>32 e'16 <e' d'>32~ <e' c'>16 <e' b>32~ b16 <d' b>32 <c' a>16 <d' gis>32 } } }
  \tag #'left { \clef bass \split { b,16 s } { \tuplet 3/2 16 { g,16 b,32 d16 c32 } } \tuplet 3/2 16 { c16 b,32 a,16 gis,32~ gis,16 gis,32 a,16 b,32 } }
  \tag #'common { s4. }
  |

  }
  }
  \repeat volta 2 {

  \tag #'right { \clef treble \split { c''16(~ \tuplet 3/2 { c''16 b'32 } c''16~ \tuplet 3/2 { c''16 b'32 } c''16~ \tuplet 3/2 { c''16 b'32 } } { \tuplet 3/2 { c'16( dis'32 } e'16~ \tuplet 3/2 { e'16 dis'32 } e'16~ \tuplet 3/2 { e'16 dis'32 } e'16~ } }
  \tag #'left { \clef bass \split { \tuplet 3/2 { a,16 dis32 } e16~ \tuplet 3/2 { e16 dis32 } e16~ \tuplet 3/2 { e16 dis32 } e16~ } { a,16~ \tuplet 3/2 { a,16 gis,32 } a,16~ \tuplet 3/2 { a,16 gis,32 } a,16~ \tuplet 3/2 { a,16 gis,32 } } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { b'16~ \tuplet 3/2 { b'16 c''32 } b'16~ \tuplet 3/2 { b'16 c''32 } b'16~ \tuplet 3/2 { b'16 e''32) } } { \tuplet 3/2 { e'16 f'32 } e'16~ \tuplet 3/2 { e'16 f'32 } e'16~ \tuplet 3/2 { e'16 f'32 } e'16) } }
  \tag #'left { \clef bass \split { \tuplet 3/2 { e16 f32 } e16~ \tuplet 3/2 { e16 f32 } e16~ \tuplet 3/2 { e16 f32 } e16 } { gis,16~ \tuplet 3/2 { gis,16 a,32 } gis,16~ \tuplet 3/2 { gis,16 a,32 } gis,16~ \tuplet 3/2 { gis,16 gis,32~ } } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <e'' b'>16~ \tuplet 3/2 { <e'' b'>16 <e'' c''>32 } <e'' c''>16~ \tuplet 3/2 { <e'' c''>16 <d'' b' gis'>32 } \tuplet 3/2 16 { <d'' b' e'>16( <c'' a' f'>32 <c'' a' fis'>16 <b' gis' b>32) } }
  \tag #'left { \clef bass \tuplet 3/2 { \split { gis,16 } { \once \omit Flag \once \omit Stem gis,16 } <gis,! gis,,!>32( } <a,~ a,,~>16 \tuplet 3/2 { <a, a,,>16 <a, a,,>32 } <b, b,,>16 \tuplet 3/2 16 { <c c,>16 <d d,>32 <dis dis,>16 <e e,>32) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 16 { <b' gis' b>16 <b' gis' b>32~ <b' gis' b>16 <b' gis' b>32~ <b' gis' b>16 <c'' a' c'>32~ <c'' a' c'>16 <c'' a' c'>32~ <c'' a' c'>16 <d'' b' d'>32~ <d'' b' d'>16 <d''' b'' d''>32 } }
  \tag #'left { \clef bass \tuplet 3/2 16 { <e e,>16 <e~ e,~>32 <e e,>16 <e~ e,~>32 <e e,>16 <a,~ a,,~>32 <a, a,,>16 <a,~ a,,~>32 <a, a,,>16 <g,!~ g,,!~>32 <g, g,,>16 <g, g,,>32 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { \tuplet 3/2 16 { <d''' b'' d''>16 d''32( cis''16 d''32) } d''8~ \tuplet 3/2 16 { d''16 dis''32 f''16 e''32 } } { s8 \tuplet 3/2 16 { d''16 b'32 ais'16 b'32 } g'16 g'~ } }
  \tag #'left { \clef bass \split { \tuplet 3/2 16 { s16 f'32 e'16 f'32 f'16 d'32 cis'16 d'32 } b16 \tuplet 3/2 { d'16 c'32 } } { <g, g,,>16\noBeam g~ g8~ g16 g~ } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { e''8~ e''16 e''~ \tuplet 3/2 16 { e''16 e''32 g''16 f''32 } } { \tuplet 3/2 16 { g'16 c''!32 b'16 c''32 c''16 bes'32 a'16 bes'32~ } bes'16 \tuplet 3/2 { bes'16 a'32 } } }
  \tag #'left { \clef bass \split { \tuplet 3/2 16 { c'16 e'32 d'16 e'32 e'16 g'32 fis'16 g'32~ g'16 g'32 e'16 f'32 } } { g16 c'~ c' c'~ c' f! } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { \tuplet 3/2 16 { d''16 fis''32 a''16 g''32~ } g''16 \tuplet 3/2 { a''16 g''32 } g''16 \tuplet 3/2 { a''16 g''32 } } { \tuplet 3/2 { a'16 c''32 } d''16~ \tuplet 3/2 { d''16 dis''32 } e''16~ \tuplet 3/2 16 { e''16 f''32 <f'' b'>16 <d'' b'>32 } } }
  \tag #'left { \clef bass \split { c'16 \tuplet 3/2 { c'16 b32~ } \tuplet 3/2 { b16 b32 } c'16 \tuplet 3/2 16 { cis'16 d'32 <f'! d'>16 <f'! d'>32 } } { \tuplet 3/2 16 { fis16 a32 fis16 g32~ } g16 g~ g \tuplet 3/2 { g16 g32 } } }
  \tag #'common { s4. }
  |

  }
  \alternative {
  {

  \tag #'right { \clef treble \split { g''16~ \tuplet 3/2 { g''16 f''32 } e''16 r \tuplet 3/2 16 { r16 e'32~ e'16 e'32 } } { \tuplet 3/2 16 { <d'' b'>16 b'32 c''16 d''32 g'16 b32 c'16 d'32 c'16 b32 a16 <d' gis>32 } } }
  \tag #'left { \clef bass \tuplet 3/2 16 { <f' d' g>16 <g g,>32\( <a a,>16 <b b,>32 <c'! c!>16\) d32( e16 f32 e16 d32 c16 b,32) } }
  \tag #'common { s4. }
  |

  }
  {

  \tag #'right { \clef treble \split { g''16~ \tuplet 3/2 16 { g''16 f''32 e''16 g''32~ g''16 g''32 } } { \tuplet 3/2 16 { <d'' b'>16 b'32 c''16 d''32 g'16 d''32 e''16 f''32 } } }
  \tag #'left { \clef bass \tuplet 3/2 16 { <f' d' g>16 <g g,>32( <a a,>16 <b b,>32 <c' c>16) \clef treble b'32( c''16 d''32) } }
  \tag #'common { s4 }

  }
  }

  \time 12/32
  \set Timing.beatBase = #1/32
  \set Timing.beatStructure = #'(4 4 4)
  \tempo "L'istesso tempo"

  \repeat volta 2 {

  \tag #'right { \clef treble \tuplet 3/2 32 { c'''32[( g''64 e''32 c''64] g'32[ e'64 c'32 g64]) } }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble <g'~ e'~>32 \tuplet 3/2 { <g' e'>32 <g'~ e'~>64 } <g'~ e'~>32 \tuplet 3/2 { <g' e'>32 <g' e'>64 } <g'~ f'~>32 \tuplet 3/2 { <g' f'>32 <g'~ f'~>64 } <g'~ f'~>32 \tuplet 3/2 { <g' f'>32 <g' f'>64 } \tuplet 3/2 32 { f'''32( d'''64 b''32 g''64 f''32 d''64 b'32 g'64) } }
  \tag #'left { \clef bass \tuplet 3/2 32 { c,32 e,64 g,32 c64 e32 g64 b32 c'64 d,32 g,64 b,32 d64 g32 b64 cis'32 d'64 } r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g'~ f'~>32 \tuplet 3/2 { <g' f'>32 <g'~ f'~>64 } <g'~ f'~>32 \tuplet 3/2 { <g' f'>32 <g' f'>64 } g'32~ \tuplet 3/2 { g'32 g'64~ } g'32~ \tuplet 3/2 { g'32 g'64 } \tuplet 3/2 32 { g'''32( e'''64 c'''32 g''64 e''32 c''64 g'32 g''64) } }
  \tag #'left { \clef bass \tuplet 3/2 32 { d,32 g,64 b,32 d64 g32 b64 cis'32 d'64 e,32 g,64 c32 e64 g32 c'64 dis'32 e'64 } r8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g''~ cis''~ bes'~ g'~>32 \tuplet 3/2 { <g'' cis'' bes' g'>32 <g''~ cis''~ bes'~ g'~>64 } <g''~ d''~ b'~ g'~>32 \tuplet 3/2 { <g'' d'' b' g'>32 <g'' d'' b' g'>64 } <g''~ b'~ g'~>32 \tuplet 3/2 { <g'' b' g'>32 <g''~ b'~ g'~>64 } <g''~ c'' g'~>32 \tuplet 3/2 { <g'' c'' g'>32 <g'' c'' g'>64 } <e'''~ g''~ e''~>32 \tuplet 3/2 { <e''' g'' e''>32 <e'''~ g''~ e''~>64 } <e'''~ g''~ e''~>32 \tuplet 3/2 { <e''' g'' e''>32 <c''' e'' c''>64 } }
  \tag #'left { \clef bass \tuplet 3/2 32 { e,32 bes,64 cis32 e64 f32 b!64 d'32 f'64 dis32 g64 b32 dis'64 e32 g64 c'!32 e'64 c32[ e64 g32 c'64] c,32[ e,64 g,32 c64] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 32 { c'''32( a''64 fis''32 ees''64 c''32 a'64 fis'32 <c'' ees'>64) b''32( g''64 d''32 b'64 g'32 d'64 b32) <b''~ aes''~ d''~ b'~>64 } <b''~ aes''~ d''~ b'~>32 \tuplet 3/2 { <b'' aes'' d'' b'>32 <b''~ aes'' d''~ b'~>64 } <b''~ g''~ d''~ b'~>32 \tuplet 3/2 { <b'' g'' d'' b'>32 <b'' g'' d'' b'>64 } }
  \tag #'left { \clef bass <g,~ g,,~>32 \tuplet 3/2 { <g, g,,>32 <g,~ g,,~>64 } <g,~ g,,~>32 \tuplet 3/2 { <g, g,,>32 <g,~ g,,~>64 } <g,~ g,,~>32 \tuplet 3/2 { <g, g,,>32 <g,~ g,,~>64 } <g,~ g,,~>32 \tuplet 3/2 { <g, g,,>32 <f, f,,>64 } \tuplet 3/2 32 { f,,32 b,,64 d,32 f,64 b,32 d64 e32 f64 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 32 { c'''32( g''64 e''!32 c''64 g'32 e'64 e''32 c''64) e''32 c''64 g''32 e''64 c''32 g'64 e''32 c''64 g''32 e''64 c'''32 g''64 e''32 c''64 g''32 e''64 } }
  \tag #'left { \clef bass <e e,>32 r r \tuplet 3/2 32 { g'32 e'64 c'32[ g64 e32 c64] e'32[ c'64 g32 e64] e'32[ c'64 g32 e64] c'32[ g64 e32 c64] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 \tuplet 3/2 32 { g''32 e''64 cis''32 e''64 g''32 e''64 f''32 d''64 f''32 a'64 f''32 f'64 a'32 f'64 a'32 f'64 f''32 d''64 a'32 a''64 f''32 d''64 } }
  \tag #'left { \clef bass \tuplet 3/2 32 { a32 g64 e32 cis64 a,32 g64 e32 cis64 a32 f64 d32 f64 d32 d'64 f'32 d'64 f'32[ d'64 a32 f64] f'32[ d'64 a32 f64] } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 32 { c''!32 b'64 f''32 d''64 b''32 f''64 d''32 b'64 d''32 c''64 aes''32 f''64 c'''32 a''64 f''32 c''64 ees''32 d''64 d'''32 d''64 d'''32 d''64 d'''32 <g'' d''>64 } }
  \tag #'left { \clef treble \tuplet 3/2 32 { g32[ f'64 d'32 b64] g32[ b64 d'32 f'64] as32[ as'64 f'32 c'64] a32[ c'64 f'32 a'64] bes32 bes'64 bes32 bes'64 bes32 bes'64 b32 b'64 } }
  \tag #'common { s4. }
  |

  }
  \alternative {
  {

  \partial 4
  \tag #'right { \clef treble \split { g''32~[ \tuplet 3/2 { g''32 g''64~] } g''32~[ \tuplet 3/2 { g''32 g''64~] } g''32~[ \tuplet 3/2 { g''32 g''64(] } \tuplet 3/2 32 { f''32[ g''64 a''32 b''64]) } } { \tuplet 3/2 32 { d''32[ e''!64 f''32 <f'' d''>64] b'32[ c''64 d''32 c''64] d''32[ e''64 f''32 e''64] } s16 } }
  \tag #'left { \clef treble \tuplet 3/2 32 { b32[( c'64 d'32) b64]( d'32[ e'64 f'32) e'64]( b'32[ c''64 d''32) c''64]( d''32[ e''64 f''32 d''64]) } }
  \tag #'common { s32*8 }
  |

  }
  {

  \partial 4.
  \tag #'right { \clef treble \split { g''32~[ \tuplet 3/2 { g''32 g''64~] } g''32~[ \tuplet 3/2 { g''32 g''64~] } g''32~[ \tuplet 3/2 { g''32 g''64~] } g''32~[ \tuplet 3/2 { g''32 g''64] } \tuplet 3/2 32 { gis''32 a''64 b''32 e'64~ e'32~ e'64~ e'32 e'64 } } { \tuplet 3/2 32 { d''32[ e''!64 f''32 <f'' d''>64] b'32[ c''64 d''32 c''64] d''32[ e''64 f''32 e''64] f''32[ d''64 f''32 e''64] d''32[ c''64 b'32] r64 b32[ c'64 d'32 c'64] } } }
  \tag #'left { \clef treble \tuplet 3/2 32 { b32[( c'64 d'32) b64]( d'32[ e'64 f'32) e'64]( b'32[ c''64 d''32) c''64]( d''32[ b'64 d''32) c''64]( b'32 a'64 gis'32) r64 \clef bass gis,,32( a,,64 b,,32 a,,64)~ } }
  \tag #'common { s4. }
  |

  }
  }

  \tag #'right { \clef treble <c''~ e'~>32 \tuplet 3/2 { <c'' e'>32 <c''~ e'~>64 } <c''~ e'~>32 \tuplet 3/2 { <c'' e'>32 <c'' e'>64 } \tuplet 3/2 32 { c'''32 gis''64 a''32 e''64 d''32 c''64 e''32 c''64 b'32 a'64 c''32 a'64 b'32 a'64 c''32 <b' f' d'>64 } }
  \tag #'left { \clef bass \tuplet 3/2 32 { a,,32( c,64 e,32 gis,64 a,32 c64 e32 gis64) } a32~ \tuplet 3/2 { a32 <e'~ c'~ a~>64 } <e'~ c'~ a~>32 \tuplet 3/2 { <e' c' a>32 <e'~ c'~ a~>64 } <e'~ c'~ a~>32 \tuplet 3/2 { <e' c' a>32 <e'~ c'~ a~>64 } <e'~ c'~ a~>32 \tuplet 3/2 { <e' c' a>32 <a, a,,>64 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <b'~ e'~ d'~>32 \tuplet 3/2 { <b' e' d'>32 <b'~ e'~ d'~>64 } <b'~ e'~ d'~>32 \tuplet 3/2 { <b'~ e'~ d'~>32 <b' e' d'>64 } \tuplet 3/2 32 { c'''32( b''64 e'''32 b''64 a''32 gis''64 b''32 e''64 b''32 e''64 f''32 d''64 c''32 b'64 e''32 b'64) } }
  \tag #'left { \clef bass \tuplet 3/2 32 { gis,,32( b,,64 e,32 gis,64 b,32 e64 gis32 a64) } <e'~ b~ gis~>32 \tuplet 3/2 { <e' b gis>32 <e'~ b~ gis~>64 } <e'~ b~ gis~>32 \tuplet 3/2 { <e' b gis>32 <e'~ b~ gis~>64 } <e'~ b~ gis~>32 \tuplet 3/2 { <e' b gis>32 <e'~ b~ gis~>64 } <e'~ b~ gis~>32 \tuplet 3/2 { <e' b gis>32 <e' b gis>64 } }
  \tag #'common { s4. }
  |

}

movementSpecs = #'(
  (firstMovement "Maestoso – Allegro con brio ed appassionato")
  (secondMovement "Arietta. Adagio molto semplice e cantabile")
)
