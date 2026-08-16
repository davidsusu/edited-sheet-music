
\version "2.24.1"

\include "../../shared/lib.ly"

workTitle = "Piano Sonata No. 1"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 2 No. 1"
workDate = "1794-1795"

firstMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t

  \mark \markup { \bold "Allegro" }
  \tempo 4 = 220
  \time 2/2
  \key f \minor
  \accidentalStyle default

  \repeat volta 2 {
  \partial 4
  \tag #'right { \clef treble c'4-. }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4\p }
  |

  \tag #'right { \clef treble f'4-. as'-. c''-. f''-. }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as''4.( \tuplet 3/2 { g''16[f'' e''] } f''4-.) r4 }
  \tag #'left { \clef bass r4 <c' as f>4 <c' as f> <c' as f> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4-. c''-. e''-. g''-. }
  \tag #'left { \clef bass <c' bes g e>4 r4 r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''4.( \tuplet 3/2 { as''16[g'' f''] } g''4-.) r4 }
  \tag #'left { \clef bass r4 <c' bes g e> <c' bes g e> <c' bes g e> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \acciaccatura c''16 as''4.( \tuplet 3/2 { g''16[f'' e''] } f''4-.) r4 }
  \tag #'left { \clef bass r4 <c' as f> <c' as f> <c' as f> }
  \tag #'common { s1\sf }
  |

  \tag #'right { \clef treble \acciaccatura c''16 bes''4.( \tuplet 3/2 { as''16[g'' f''] } g''4-.) r4 }
  \tag #'left { \clef bass r4 <e' bes g> <e' bes g> <e' bes g> }
  \tag #'common { s1\sf }
  |

  \tag #'right { \clef treble <c''' as'' f'' c''>2\arpeggio bes''8([\> as'' g'' f''\!]) }
  \tag #'left { \clef bass r4 <f' c' as> r <g' des' bes> }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble \grace { e''16[f'' g''] } f''4( e''!) r4^\fermata r4 }
  \tag #'left { \clef bass r4 <g' c'>4 r4^\fermata g,4-. }
  \tag #'common { s1\p }
  |

  \tag #'right { \clef treble R1 }
  \tag #'left { \clef bass c4-. es!-. g-. c'-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble R1 }
  \tag #'left { \clef bass es'4.( \tuplet 3/2 { d'16[c' b] } c'4-.) c'4-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r4 r8 \tuplet 3/2 { es''16([des''! c''] } des''4-.) des''-. } { as'1~ } }
  \tag #'left { \clef bass <f' c'>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { des''1~ } { as'4. \tuplet 3/2 { bes'16([as' g'] } as'4-.) as'-. } }
  \tag #'left { \clef bass <f' bes>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { des''4. \tuplet 3/2 { es''16([des'' c''] } des''4-.) des''-. } { g'1 } }
  \tag #'left { \clef bass <es' bes>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r4 r8 \tuplet 3/2 { des''16([c'' b'] } c''4-.) c''-. } { as'1 } }
  \tag #'left { \clef bass <es' as>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { c''4( bes'!2 as'4 } { f'1 } }
  \tag #'left { \clef bass des'2 d' }
  \tag #'common { s4\< s2\!\> s4\! }
  |

  \tag #'right { \clef treble g'4)-. es''( des'') c''~ }
  \tag #'left { \clef bass es'4 r r <es' c'>4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4( bes'2 as'4 }
  \tag #'left { \clef bass <f' des'>2 <f' d'> }
  \tag #'common { s4\< s2\!\> s4\! }
  |

  \tag #'right { \clef treble g'4)-. <es'' es'>( <des'' des'> <c'' c'>)~ }
  \tag #'left { \clef bass es'4 r4 r <es c>4 }
  \tag #'common { s4 s2.\f }
  |

  \tag #'right { \clef treble <c'' c'>4 <bes' bes>2( <as' as>4 }
  \tag #'left { \clef bass <f des>2 <f d> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' g>4) r r fes''4( }
  \tag #'left { \clef bass es8 es' es es' es es' es es' }
  \tag #'common { s2. s4\p }
  |

  \tag #'right { \clef treble es''4 des'' bes' g') }
  \tag #'left { \clef bass es8 es' es es' es es' es es' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fes'4.( es'8 as'4-.) fes''4( }
  \tag #'left { \clef bass \split { des'2( c'4) s4 } { es4 es es8 es' es es' } }
  \tag #'common { s1\sf }
  |

  \tag #'right { \clef treble es''4 des'' bes' g') }
  \tag #'left { \clef bass es8 es' es es' es es' es es' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble fes'4.( es'8 as'4-.) fes''4( }
  \tag #'left { \clef bass \split { des'2( c'4) s4 } { es4 es es8 es' es es' } }
  \tag #'common { s1\sf }
  |

  \tag #'right { \clef treble es''4 des'' bes' g') }
  \tag #'left { \clef bass es8 es' es es' des' es' des' es' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g'( bes' as') r a'( c'' bes') }
  \tag #'left { \clef bass c'8 es' c' es' g es' g es' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 b'( des'' c'') r d''8\<( as''\!\> d''\!) }
  \tag #'left { \clef bass as8 es' as es' f d' as d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble es''4 r r8 d''8\<( as''\!\> d''\!) }
  \tag #'left { \clef bass es8 es' g es' f d' as d' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble es''4 r r8 \shape #'((0 . 0.5) (0 . 1.2) (0 . 1.2) (0 . 0.5)) Slur g''8\<( fes'''\!\> g''\!) }
  \tag #'left { \clef bass es8 es' g es' des! bes fes bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as''4 r r8 \shape #'((0 . 0.5) (0 . 1.2) (0 . 1.2) (0 . 0.5)) Slur g''8\<( fes'''\!\> g''\!) }
  \tag #'left { \clef bass c8 as es as des bes fes bes }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g''( bes'' as'') r a''( c''' bes'') }
  \tag #'left { \clef bass c8 as es as g, g es g }
  \tag #'common { s1\< }
  |

  \tag #'right { \clef treble r8 b''( des''' c''') r c'''( es''' des''') }
  \tag #'left { \clef bass as,8 as es as bes, bes es bes }
  \tag #'common { s2.. s8\! }
  |

  \tag #'right { \clef treble r8 d'''8( f''' es''' des''' c''' bes'' as'' }
  \tag #'left { \clef bass c4 es2\sf as4 }
  \tag #'common { s1\f }
  |

  \tag #'right { \clef treble g''8 f'' es'' des'' c'' bes' as' g' }
  \tag #'left { \clef bass des4 f2\sf bes4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'8 es' d' es' d' es' d' es' }
  \tag #'left { \clef bass es4 as2 c'4 }
  \tag #'common { s4 s2.\p }
  |

  \tag #'right { \clef treble d'8 es' f' es' d' es' f' es') }
  \tag #'left { \clef bass des'!4( bes g des) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 as''8( f''' es''' des'''! c''' bes'' as'' }
  \tag #'left { \clef bass c,4 es,2\sf as,4 }
  \tag #'common { s1\f }
  |

  \tag #'right { \clef treble g''8 f'' es'' des'' c'' bes' as' g' }
  \tag #'left { \clef bass des,4 f,2\sf bes,4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'8 es' des' c' \clef bass bes as g f }
  \tag #'left { \clef bass es,4 as,2\sf c4 }
  \tag #'common { s1 \tweak extra-offset #'(0.5 . -2) \p }
  |

  \tag #'right { \clef bass es8 f g as bes c' des' bes }
  \tag #'left { \clef bass des4( bes, g, es,) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass as4) r4  \clef treble\acciaccatura d'16 ces''4.( bes'8) }
  \tag #'left { \clef bass as,4 as r <ces' as f d> }
  \tag #'common { s2 s2 \tweak extra-offset #'(-1.2 . -0.2) -\markup {\italic "con espressione" } }
  |

  \tag #'right { \clef treble as'2 g'4.( es''8) }
  \tag #'left { \clef bass r4 <c'! as es>4 r <des'! bes es> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble es''4\sf( as'4) \acciaccatura d'16 ces''4.( bes'8) }
  \tag #'left { \clef bass r4 <c' as> r <ces' as f d> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as'2 g'4.( es''8) }
  \tag #'left { \clef bass r4 <c'! as es> r <des'! bes es> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble es''4\sf( as'4) \acciaccatura d''16 ces'''4.( bes''8) }
  \tag #'left { \clef bass r4 <c' as>\clef treble r <ces'' as' f' d'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as''2 g''4.( es'''8) }
  \tag #'left { \clef treble r4 <c''! as' es'> r <des''! bes' es'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <es''' g'' des''>1 }
  \tag #'left { \clef treble <g' es' des' bes as>1 }
  \tag #'common { s1\ff\> }
  |

  \tag #'right { \clef treble <as'' es'' c''>4 r4 r }
  \tag #'left { \clef treble <as' es' c' as>4 r4 r4 }
  \tag #'common { s2.\!\p }
  }

  \break

  \repeat volta 2 {
  \tag #'right { \clef treble es'4-. }
  \tag #'left { \clef treble r4 }
  \tag #'common { s4\p }
  |

  \tag #'right { \clef treble as'4-. c''-. es''-. as''-. }
  \tag #'left { \clef treble R1\clef bass }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4.( \tuplet 3/2 { bes''16[as'' g''] } as''4-.) r4 \acciaccatura des''16 }
  \tag #'left { \clef bass r4 <es' c' as> <es' c' as> <es' c' as> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'''4.( \tuplet 3/2 { c'''16[bes'' a''] } bes''4-.) r4 }
  \tag #'left { \clef bass r4 <es' des' bes g> <es' des' bes g> <es' des' bes g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes'4-. des''-. g''-. bes''-. \acciaccatura des''16 }
  \tag #'left { \clef bass R1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'''4.( \tuplet 3/2 { c'''16[bes'' a''] } bes''4-.) r4 \acciaccatura des''16 }
  \tag #'left { \clef bass r4 <e' des' bes g> <e' des' bes g> <e' des' bes g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'''4.( \tuplet 3/2 { c'''16[bes'' a''] } bes''4-.) r4 }
  \tag #'left { \clef bass r4 <e' des' bes ges> <e' des' bes ges> <e' des' bes ges> }
  \tag #'common { s2.\< s4\! }
  |

  \tag #'right { \clef treble a''4 r r ges''(\p }
  \tag #'left { \clef bass f8^\fp f' f f' f f' f f' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 es''! c'' a') }
  \tag #'left { \clef bass f8 f' f f' f f' f f' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ges'4.(\sf f'8 bes'4-.) ges''4( }
  \tag #'left { \clef bass \split { es'!2( des'4) s4 } { f4 f f8 f' f f' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 es'' c'' a') }
  \tag #'left { \clef bass f8 f' f f' f f' f f' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble ges'4.(\sf f'8 bes'4-.) ges''4( }
  \tag #'left { \clef bass \split { es'2( des'4) s4 } { f4 f f8 f' f f' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 es'' c'' a') }
  \tag #'left { \clef bass f8 f' f f' es' f' es' f' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 a'( c'' bes') r bes'( des'' c'') }
  \tag #'left { \clef bass des'8 f' des' f' c' f' c' f' }
  \tag #'common { s2 s8 s4.\< }
  |

  \tag #'right { \clef treble r8 c''( es'' des'') r b'( des'' c'') }
  \tag #'left { \clef bass bes8 f' bes f' as! fis' as fis' }
  \tag #'common { s2.. s8\! }
  |

  \tag #'right { \clef treble b'4\fp r r as''!( }
  \tag #'left { \clef bass g8 g' g g' g g' g g' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 f''! d'' b') }
  \tag #'left { \clef bass g8 g' g g' g g' g g' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as'4.(\sf g'8 c''4-.) as''4( }
  \tag #'left { \clef bass \split { f'!2( es'4) s4 } { g4 g g8 g' g g' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g''4 f'' d'' b') }
  \tag #'left { \clef bass g8 g' g g' g g' g g' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as'4.(\sf g'8 c''4-.) f'8 d' }
  \tag #'left { \clef bass \split { f'2( es'4) } { g4 g g } as4( }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'8 d' f' d' f' d' f' d' }
  \tag #'left { \clef bass g4 f d b,) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r4 b'( c'') r } { f'8 d' f' d' es' c' es' c' } }
  \tag #'left { \clef bass as,4.\sf( g,8 c4-.) ges4( }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override MultiMeasureRest.staff-position = #0 R1 } { es'8 c' es' c' es' c' es' c' } }
  \tag #'left { \clef bass f4 es c a,) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r4 a'( bes'!) r } { es'8 c' es' c' des'! bes des' bes } }
  \tag #'left { \clef bass ges,4.\sf( f,8 bes,4-.) fes4( }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override MultiMeasureRest.staff-position = #0 R1 } { des'8 bes des' bes des' bes des' bes } }
  \tag #'left { \clef bass es4 des bes, g,!) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 g'2 } { des'8 bes des' bes des' bes des' bes } }
  \tag #'left { \clef bass fes,4( es,2) es4\sf ~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 as'2^\sf } { c'8 as es' as es' as es' as } }
  \tag #'left { \clef bass es4 c2 c,4~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 f'2 } { des'8 as des' as des' as des' as } }
  \tag #'left { \clef bass c,4 des,2 des4\sf ~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 g'2^\sf } { des'8 g des' g des' g des' g } }
  \tag #'left { \clef bass des4 bes,2 bes,,4~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 e'2 } { c'8 g c' g c' g c' g } }
  \tag #'left { \clef bass bes,,4 c,2 c4\sf ~ }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 f'2^\sf } { as8 f c' f c' f c' f } }
  \tag #'left { \clef bass c4 as,2 as,,4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { \once \override Rest.staff-position = #0 r2 f'2^\sf } { des'8 f des' f des' f des' f } }
  \tag #'left { \clef bass r4 bes,,2 bes,4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble d'8 f <f' d' as> f <f' d' as> f <f' d' as> f }
  \tag #'left { \clef bass r4 b,,2 b,4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e' c' g>4 r r c''4( }
  \tag #'left { \clef bass c,8 c e c e c e c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as'4-.) r4 r f''4( }
  \tag #'left { \clef bass f8 c f c f c as c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4-.) r4 r c'''4( }
  \tag #'left { \clef bass g8 c g c g c bes! c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4-.) r\set doubleSlurs = ##t <f''' f''>2\sf( }
  \tag #'left { \clef bass as8 c c' c b c d' c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e''' e''>4-.)\set doubleSlurs = ##f r4 r\afterGrace c''4^\trill( { b'16[c''] } }
  \tag #'left { \clef bass c'8 c e c e c g c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as'4-.) as'-. r4\afterGrace f''4^\trill( { e''16[f''] } }
  \tag #'left { \clef bass f8 c f c f c as c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble e''4-.) e''-. r4\afterGrace c'''4^\trill( { b''16[c'''] } }
  \tag #'left { \clef bass g8 c g c g c bes! c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4-.) f''-. r <f''' f''>4( }
  \tag #'left { \clef bass as8 c c' c b c d' c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e''' e''>4-.) <e''' e''>-. r4 <des'''! des''!>4( }
  \tag #'left { \clef bass c'8 c c' c bes! c bes c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' c''>4-.) <c''' c''>-. r <f''' f''>4( }
  \tag #'left { \clef bass as8 c c' c b c d' c }
  \tag #'common { s4 s2.\decresc }
  |

  \tag #'right { \clef treble <e''' e''>4-.) <e''' e''>-. r4 <des'''! des''!>( }
  \tag #'left { \clef bass c'8 c c' c bes! c bes c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' c''>4-.) <c''' c''>-. r4 <f''' f''>4( }
  \tag #'left { \clef bass as8 c c' c b c d' c }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <e''' e''>4-.) r4 r2 }
  \tag #'left { \clef bass c'4-.( c'-. c'-. c'-.) }
  \tag #'common { s1\!\pp }
  |

  \tag #'right { \clef treble R1 }
  \tag #'left { \clef bass c'4-.( c'-. c'-. c'-.) }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { as'16([ges' f'] } ges'4-.) r4 }
  \tag #'left { \clef bass <des'! c'>4 <des' c'> <des' c'> <des' c'> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { es'''16([des''' c'''] } des'''4-.) r4 }
  \tag #'left { \clef bass <des' bes>4 <des' bes> <des' bes> <des' bes> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { f'16([e' d'] } e'4-.) r4 }
  \tag #'left { \clef bass <c' bes>4 <c' bes> <c' bes> <c' bes> }
  \tag #'common { s4. s8\cresc s2 }
  |

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { des'''!16([c''' b''] } c'''4-.) r4 }
  \tag #'left { \clef bass <c' as>4 <c' as> <c' as> <c' as> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { es'16([d' c'] } d'4-.) r4 }
  \tag #'left { \clef bass <bes! as>4 <bes as> <bes as> <bes as> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r4 r8 \tuplet 3/2 { c'''16([bes'' a''] } bes''4-.) r4 }
  \tag #'left { \clef bass <e' bes g>4 <e' bes g> <e' bes g> <e' bes g> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'4-. as'-. c''-. f''-. }
  \tag #'left { \clef bass <c' as! f>4 r r2 }
  \tag #'common { s1\!\f }
  |

  \tag #'right { \clef treble as''4.\sf( \tuplet 3/2 { g''16[f'' e''] } f''4-.) r4 }
  \tag #'left { \clef bass r4 <c' as f> <c' as f> <c' as f> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble g'4-. c''-. e''-. g''-. }
  \tag #'left { \clef bass <c' bes g e>4 r r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''4.\sf( \tuplet 3/2 { as''16[g'' f''] } g''4-.) r4 \acciaccatura c''16 }
  \tag #'left { \clef bass r4 <c' bes g e> <c' bes g e> <c' bes g e> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as''4.\sf( \tuplet 3/2 { g''16[f'' e''] } f''4-.) r4 \acciaccatura c''16 }
  \tag #'left { \clef bass <c' as f>2 r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''4.\sf( \tuplet 3/2 { as''16[g'' f''] } g''4-.) r4 }
  \tag #'left { \clef bass <e' bes g>2 r2 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' as'' f'' c''>2\arpeggio bes''8([as'' g'' f'']) }
  \tag #'left { \clef bass <f' c' as>4 r <g' des' bes> r }
  \tag #'common { s2..\ff\> s8\! }
  |

  \tag #'right { \clef treble \grace { e''16[f'' g''] } f''4\p( e''-.) r4^\fermata r4 }
  \tag #'left { \clef bass <g' c'>4 r r4^\fermata c4-.^\p }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble R1 }
  \tag #'left { \clef bass f4-. as-. c'-. f'-.\clef treble }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble R1 }
  \tag #'left { \clef treble as'4.( \tuplet 3/2 { g'16[f' e'] } f'4-.) f'4-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble bes''4.( \tuplet 3/2 { as''16[ges'' f''] } ges''4-.) ges''4-. }
  \tag #'left { \clef treble <ges' f'>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { ges''1~ } { r4 r8 \tuplet 3/2 { des''!16([c'' b'] } c''4-.) c''4-. } }
  \tag #'left { \clef treble <ges' es'>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { ges''4. \tuplet 3/2 { ges''!16([f'' e''] } f''4-.) f''4-. } { c''1~ } }
  \tag #'left { \clef treble <a' es'>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { f''1 } { c''4. \tuplet 3/2 { c''16([bes'! a'] } bes'4-.) bes'4-. } }
  \tag #'left { \clef treble <f' des'>1 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { r4 r8 \tuplet 3/2 { g''!16([f'' e''] } f''4 g'' } { b'1 } }
  \tag #'left { \clef treble \split { f'2.( e'4 } { d'1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble \split { as''4 e'' f'' b') } { s1 } }
  \tag #'left { \clef treble \split { f'4 g' as' f') } { d'1 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4\<( e'' f'' g''\! }
  \tag #'left { \clef treble \split { e'4( g' f' e' } { c'1~ } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble as''4\> e'' f'' b'\!) }
  \tag #'left { \clef treble \split { f'4 bes' as' f') } { c'2 des'!2 } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c'' e'>4 r r des''4\p( }
  \tag #'left { \clef bass c8 c' c c' c c' c c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4 bes' g' e') }
  \tag #'left { \clef bass c8 c' c c' c c' c c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des'4.\sf( c'8 f'4-.) des'''4( }
  \tag #'left { \clef bass \split { bes2( as4) s4 } { c4 c c8 c' c c' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4 bes'' g'' e'') }
  \tag #'left { \clef bass c8 c' c c' c c' c c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble des''4.\sf( c''8 f''4-.) des'''4( }
  \tag #'left { \clef bass \split { bes2( as4) s4 } { c4 c c8 c' c c' } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4 bes'' g'' e'') }
  \tag #'left { \clef bass c8 c' c c' bes c' bes c' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 e''8( g'' f'') r f''( as'' g'') }
  \tag #'left { \clef bass as8 f' c' f' g e' bes e' }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 g''( bes'' as'') r b''( f''' b'') }
  \tag #'left { \clef bass f8 c' as c' des b f b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4 r r8 b''8\<( f'''\!\> b''\!) }
  \tag #'left { \clef bass c8 c' e c' des b f b }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c'''4 r4 r8 \shape #'((0 . 0.5) (0 . 1.2) (0 . 1.2) (0 . 0.5)) Slur e''8\<( des'''!\!\> e''\!) }
  \tag #'left { \clef bass c8 c' e c' bes,! g des g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''4 r4 r8 \shape #'((0 . 0.5) (0 . 1.2) (0 . 1.2) (0 . 0.5)) Slur e''8\<( des'''!\!\> e''\!) }
  \tag #'left { \clef bass as,8 f c f bes, g des g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 e''8( g'' f'') r f''( as'' g'') }
  \tag #'left { \clef bass as,8 f c f e, e c e }
  \tag #'common { s1\cresc }
  |

  \tag #'right { \clef treble r8 g''( bes'' as'') r a''( c''' bes'') }
  \tag #'left { \clef bass f,8 f c f g, g c g }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble r8 c'''8( f''' es''' des''' c''' bes'' as'' }
  \tag #'left { \clef bass as,4 c2\sf f4 }
  \tag #'common { s1\!\ff }
  |

  \tag #'right { \clef treble g''8 f'' es'' des'' c'' bes' as' g' }
  \tag #'left { \clef bass bes,4 des2\sf g4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'8 e' des' c' b c' b c' }
  \tag #'left { \clef bass c4 f2\sf as4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b8 c' des' c' b c' des' c') }
  \tag #'left { \clef bass bes!4( g e bes,!) }
  \tag #'common { s1\pp }
  |

  \tag #'right { \clef treble r8 c'''8( f''' es''' des''' c''' bes'' as'' }
  \tag #'left { \clef bass as,4 c2\sf f4 }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble g''8 f'' es'' des'' c'' bes' as' g' }
  \tag #'left { \clef bass bes,4 des2\sf g4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'8 e' des' c' b c' b c' }
  \tag #'left { \clef bass c4 f2\sf as4 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble b8 c' des' c') c'( bes! as g }
  \tag #'left { \clef bass r4 c,4 c, c, }
  \tag #'common { s1 \tweak extra-offset #'(0.3 . -0.3) \pp }
  |

  \tag #'right { \clef treble f4) r4 as'4.( g'8) }
  \tag #'left { \clef bass f,4 f r <b f des>-. }
  \tag #'common { s2 s2 \tweak Y-offset #0 \tweak extra-offset #'(0 . 1) -\markup \whiteout { \italic "con espressione" } }
  |

  \tag #'right { \clef treble f'2 e'4.( c''8) }
  \tag #'left { \clef bass r4 <c' as f c>-. r <bes! g c>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4\sf( f') as'4.( g'8) }
  \tag #'left { \clef bass r4 <as f>-. r <b as f des>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f'2 e'4.( c''8) }
  \tag #'left { \clef bass r4 <c' as f c>-. r <bes! g c>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble c''4\sf( f'4) \acciaccatura b'16 as''4.( g''8) }
  \tag #'left { \clef bass r4 <as f>-. \clef treble r <b' as' f' des'>-. }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble f''2 e''4.( c'''8) }
  \tag #'left { \clef treble r4 <c'' as' f' c'>-. r \clef bass <g' c' bes!> }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <c''' es''! c''>1 }
  \tag #'left { \clef bass <f' c' a>1 }
  \tag #'common { \once \override DynamicText.extra-offset = #'(0 . 1) s1\ff }
  |

  \tag #'right { \clef treble <f'' des'' bes'>4 r r r8 <bes'' des'' bes'>8 }
  \tag #'left { \clef bass <f' des' bes>4 r r r8 <f' des' bes>8 }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <bes'' des'' bes'>1 }
  \tag #'left { \clef bass <es' bes g>1 }
  \tag #'common { \once \override DynamicText.extra-offset = #'(0 . 1) s1\ff }
  |

  \tag #'right { \clef treble <es'' c'' as'>4 r r <as'' c'' as'>-. }
  \tag #'left { \clef bass <es' c' as>4 r r <des' f>4-. }
  \tag #'common { s2. s4\sf }
  |

  \tag #'right { \clef treble <des'' bes' g'>4-. <g'' bes' g'>-. <c'' as' f'>-. <f'' as' f'>-. }
  \tag #'left { \clef bass <des' g>4-. <c' e>-. <c' f>-. <des' des>-. }
  \tag #'common { s4 s\sf s s\sf }
  |

  \tag #'right { \clef treble <f'' des'' g' f'>4-. r <e'' c'' bes' g' e'>-. r }
  \tag #'left { \clef bass <bes g des bes,>4-. r <c' g e c>-. r }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble <f'' c'' as' f'>4-. r r4^\fermata\bar "|." }
  \tag #'left { \clef bass <f c as, f,>4-. r r4^\fermata\bar "|." }
  \tag #'common { s2. }
  }
}

secondMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t

  \mark \markup { \bold "Adagio" }
  \tempo 4 = 45
  \time 3/4
  \key f \major
  \accidentalStyle default

  \partial 4
  \tag #'right { \clef treble c'8. c'16 }
  \tag #'left { \clef bass r4 }
  \tag #'common { \once \override DynamicText.extra-offset = #'(1.5 . 0) s4-\tweak text \markup { \line { \dynamic "p" \hspace #0.5 \normal-text \italic "dolce" } } \p }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(1 . 0) { a'4^\( \grace c''16 } bes'8 a' g' f'\) }
  \tag #'left { \clef bass \split { c'4\( d'8 c' bes a\) } { f2 f4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'4\( e'8\) c'8[^\( <d' b> <e' bes>]\) } { s2. } }
  \tag #'left { \clef bass \split { a4\( g8\) } { c4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'8( c''16) r c''8( bes'16) r bes'8( a'16) r } { s4 g' f' } }
  \tag #'left { \clef bass <c' a>4 <c' e> <c' f> }
  \tag #'common { \once \override DynamicText.extra-offset = #'(0 . 0.7) s2.\p }
  |

  \tag #'right { \clef treble \split { <a' f'>4( <g' e'>16)\noBeam c'_\( d' e' f' fis' g' gis'\) } { s2. } }
  \tag #'left { \clef bass <c' c>4. r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(1 . 0) { a'4^\( \grace c''16 } bes'8 <a' f'> <g' e'> f'\) }
  \tag #'left { \clef bass \split { c'4 d'8 c' bes a } { f2 f4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <d'' f'>4\( <e'' g'> g''16 f'' e'' f''\) } { s2 c''4 } }
  \tag #'left { \clef bass <d' bes>4 <c' bes> <f' a> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''16\( d'' c'' bes' a'8.\) a'16\(\turn c'' bes' g' e'\) }
  \tag #'left { \clef bass <f' bes>4 <f' c'> c16\( e g bes\) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' e'>4\( f'8\) r c''8.\( f''16\) }
  \tag #'left { \clef bass <bes f>4^\( <a f>8\) r r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4\( e'' \turnInside 8 #3 #'(-1.5 . 0) f''8. a''16\) }
  \tag #'left { \clef bass \split { <g>16\( bes c' bes g bes c' bes <f> a c' a\) } { c2. } }
  \tag #'common { s2\< s8. s16\! }
  |

  \tag #'right { \clef treble c'''4\( b''16 c''' d''' c''' bes'' a'' g'' f''\) }
  \tag #'left { \clef bass \split { <e>16\( g c' g e g c' g f a c' a\) } { c2. } }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble f''4\( e'' \turnInside 16 #4 #'(-0.7 . -0.7) f''16.[ \once \override NoteHead.extra-spacing-width = #'(-3 . 0) g''32] \turnInside 16 #4 #'(0 . 0) a''16.[ b''32]\) }
  \tag #'left { \clef bass \split { g16\( bes c' bes g bes c' bes <a> c' a f\) } { c2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8\( c'''~\) c'''16\( b'' d''' c''' c''' bes'' a'' bes''\) }
  \tag #'left { \clef bass \split { \shape #'((0 . -0.5) (3 . 0) (-17 . 14) (0 . 6)) PhrasingSlur c16_\( e g c'\clef treble e' g' c' e' d' f' e' g'\) } { s2. } }
  \tag #'common { s4 s2\pp }
  |

  \tag #'right { \clef treble \turnInside 8 #4 #'(0 . 0) { \shape #'((0 . -1.5) (0 . 0) (0 . 0) (0 . -1)) PhrasingSlur a''4\(\grace c'''16 } bes''8 <a'' f''> <g'' e''> f''\) }
  \tag #'left { \clef treble \split { f'16 c'' f'' e'' d''8\( c'' bes' a'\) } { f'2 f'4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c''>4\( <d'' bes'>8\) r <d''' d''>8.\( <c''' c''>16\) }
  \tag #'left { \clef treble \split { <f' bes>4. r8 <e' bes>8._\( <f' a>16\) } { s2. } }
  \tag #'common { s2 s4-\tweak extra-offset #'(-0.5 . 0)-\markup { \italic "rin" \hspace #-0.5 \bold "f" \normal-text \hspace #-0.3 \italic "." } }
  |

  \tag #'right { \clef treble \shape #'((0 . -1.5) (0 . 0) (0 . 0) (0 . -1.5)) PhrasingSlur c'''16\( f''' e''' d''' cis'''\slashedGrace e'''8 d'''16 c''' bes'' a'' c''' bes'' g''\) }
  \tag #'left { \clef treble \split { <f' a>4 bes16\( d' g' bes'\) f'\( a' g' e'\) } { s4 <bes> c' } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' bes'>4\( <f'' a'>8\) r \turnInside 8 #4.5 #'(2 . 0) ##f \markup \sharp a''4 }
  \tag #'left { \clef treble \split { <e'>4\( f'8\) r r4 } { f4. s4. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \stemUp d'''4 \change Staff = "left" d\tweak extra-offset #'(3.4 . 2.4) _\markup \center-align { \italic "m.d." } \change Staff = "right" <d''' d''>8. <d''' d''>16 \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemDown r16\tweak extra-offset #'(0 . 0) _\markup \center-align { \italic "m.s." } <f' d'>_( <g' e'> <a' f'>) r <a' f'>_( <gis' e'> <a' f'>) r <a' f'>_( <g' e'> <f' d'>) \stemNeutral \change Staff = "left" }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \stemUp <d''' d''>4^\( <cis''' cis''>8\) r \turnInside 8 #4.5 #'(-1 . 0) ##f \markup \natural <cis'''>8. d'''16 \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemDown r16 <g' e'>_( <a' f'> <bes' g'>) r <bes' g'>_( <a' fis'> <bes' g'>) r <bes' g'>_( <a' f'> <g' e'>) \stemNeutral\change Staff = "left"  }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \stemUp e'''4 \change Staff = "left" a,\tweak extra-offset #'(0.5 . 0) _\markup \center-align { \italic "m.d." } \change Staff = "right" g''8. g''16 \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemDown r16 <e' cis'>_( <f' d'> <g' e'>) r <g' e'>_( <fis' dis'> <g' e'>) r <g' e'>_( <f' d'> <e' cis'>) \stemNeutral \change Staff = "left" }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \stemUp g''4^\( f''8\) r \turnInside 8 #3.5 #'(-1 . 0) f''4 \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemDown r16 <f' d'>_( <g' e'> <a' f'>) r <a' f'>_( <g' e'> <f' d'>) r <f' d'>_( <e' cis'> <f' d'>) \change Staff = "left" \stemNeutral }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \stemUp d'''4 \change Staff = "left" g,\tweak extra-offset #'(0.5 . 0) _\markup \center-align { \italic "m.d." } \change Staff = "right" <f''' f''>8. <f''' f''>16 \stemNeutral }
  \tag #'left { \clef bass \change Staff = "right" \stemDown r16 <d' b>( <e' c'!> <f' d'>) r <f' d'>( <e' c'> <d' b>) \change Staff = "left" r16 <d' b>( <cis' ais> <d' b>) \stemNeutral }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''' f''>8([ <e''' e''>)] <e''' e''>([<d''' d''>)] <d''' d''>([<c''' c''>)] }
  \tag #'left { \clef treble r16 <e' c'>( <dis' b> <e' c'>) r <f' d'>( <e' cis'> <f' d'>) r <g' e'>( <fis' dis'> <g' e'>) }
  \tag #'common { s2\< s8 s\! }
  |

  \tag #'right { \clef treble \split { c'''8(_\sf b'') ~ b''32( c''' d''' c''' b'' c''' d''' b'') c'''16( d''' e''' c''') } { d''4 s2 } }
  \tag #'left { \clef treble \split { g'4 as'8(_\sf g' e'' c'') } { f'!2 <g' e'>4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { \grace { b''32 c''' d''' } c'''8(_\sf b''!) ~ b''32\( c''' d''' c''' b'' c''' d''' b''\) } { d''4 s }  c'''32\( d''' e''' d''' c''' b'' a'' g''\) }
  \tag #'left { \clef treble \split { g'4 as'8\(_\sf g' e'' c''\) } { f'2 <g' e'>4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble gis''32\( a'' c''' b'' a'' g'' f'' e'' g'' f'' a'' g'' f'' e'' d'' cis'' d'' e'' f'' e'' g'' f'' e'' d''\) }
  \tag #'left { \clef treble <a'! f'>8 r r4\clef bass <d' a f>8 r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''!32\( d'' c'' b' c'' g' a' b' c'' d'' e'' f'' g'' fis'' g'' fis''\) g''16-.( f''-. e''-. d''-.) }
  \tag #'left { \clef bass <e' c' g>8 r r4 <f' b g>8 r}
  \tag #'common { s2 s4\pp }
  |

  \tag #'right { \clef treble c''8\noBeam \clef bass c' <f' a>[\( <e' g> <d' a f> <c' g e>]\) }
  \tag #'left { \clef bass <e' c'>8 r r4 r }
  \tag #'common { s2. }
  |

  \break

  \tag #'right { \clef bass \split { c'4\( b\) } { <g f d>2 } <b g f d>4 }
  \tag #'left { \clef bass <g, g,,>4 ~ <g, g,,>16\( a,,32 b,, c, d, e, f,\) g,\( fis, g, a, g, f, e, d,\) }
  \tag #'common { s2.\sfp }
  |

  \tag #'right { \clef bass <c' e>8 \clef treble \once \tupletSpan 8 \tuplet 3/2 { \turnAccidental #4.5 ##f \markup \natural c'16([ e' g']) g'( f') r f'( e') r e'( d') r } \tuplet 3/2 { d'( c') r } }
  \tag #'left { \clef bass c,8 r \once \tupletSpan 8 \tuplet 3/2 { r16 a( c') r g( b) r f( a) r e( g) } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { \clef bass c'4( b)\clef treble <b' f' d'> } { <g f d>2 s4 } }
  \tag #'left { \clef bass <g,^~ g,,>4 g,16\( a,32 b, c d e f\) g\( fis g a g f e d\) }
  \tag #'common { s2. \tweak extra-offset #'(0 . -1.7) \sfp }
  |

  \tag #'right { \clef treble <c'' e'>8\noBeam c'\noBeam\sf ~ c'16_\( d'32 \tweak extra-offset #'(0.6 . 0) \pp e' f' g' a' bes'! c''^[b' c'' d'' c'' bes' a' g']\) }
  \tag #'left { \clef bass \split { r4 <bes!>8_\( g e c'\) } { c2.\sf } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(1 . 0) { a'4 \grace c''16 } bes'8^\( a' g' f'\) }
  \tag #'left { \clef bass \split { c'4 d'8\( c' bes a\) } { f2 f4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { \split { f'4\( e'8\) } { c'4. } c'8[^\( <d' b> <e' bes>]\) } { s2. } }
  \tag #'left { \clef bass \split { a4\( g8\) } { c4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'16( c'') c''-. c''-. c''( bes') bes'-. bes'-. bes'( a') a'-. a'-. } { f'4 g' f' } }
  \tag #'left { \clef bass <c' a>4 <c' e> <c' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'8.( bes'32 a') g'8\noBeam } { f'4 e'8 } \once \tupletSpan 8 \tuplet 3/2 { c'16_.[_( cis'_. d'_.] es'_.[ e'_. f'_.] fis'_.[ g'_. gis'_.]) } }
  \tag #'left { \clef bass <c' c>4. r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \turnInside 8 #3 #'(2 . 0) a'4 \once \tupletSpan 8 \tuplet 3/2 { c''16(^[ bes')] r bes'( a') r a'( g') r g'( f') r } }
  \tag #'left { \clef bass \split { \tuplet 6/4 { f16( a c' f' e' es') } } { f4 } \once \tupletSpan 8 \tuplet 3/2 { r16 d'( f') r f'( c') r bes( e') r c'( a) } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4\( \turnInside 8 #3 #'(2 . 0) e'' g''32 f'' e'' f'' e'' f'' g'' f''\) }
  \tag #'left { \clef treble \tupletDown \once \tupletSpan 4 \tweak extra-offset #'(0 . 0.7) \tuplet 6/4 { bes16\( d' f' bes' f' d'\) bes\( c' e' g' e' c'\) a\( c' f' a' f' c'\) } \tupletNeutral }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e''32\( d'' cis'' d'' e'' d'' c'' bes'\) \turnInside 8 #3 #'(2 . 0) a'4^\( c''16 bes' g' e'\) }
  \tag #'left { \clef treble \once \tupletSpan 4 \tuplet 6/4 { \omit TupletNumber bes16 d' f' g' f' \once \override NoteHead.extra-spacing-width = #'(0 . 4) d' \clef bass c f a c' a f c g bes c' bes g \undo \omit TupletNumber } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'>4^\( f'8\) r c''8.\( f''16\) }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 6/4 { \omit TupletNumber f16 bes c' e' c' bes f a c' f' c' bes a c' bes a g f \undo \omit TupletNumber } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4\( e'' \turnInside 8 #3 #'(-1.5 . 0) f''8. a''16\) }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 6/4 { \omit TupletNumber c16 g bes c' bes g c g bes c' bes g c f a c' a f \undo \omit TupletNumber } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''4\( b''16 c''' d''' c''' bes'' a'' g'' f''\) }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 6/4 { \omit TupletNumber c16 e g c' g e c e g c' g e c f a c' a f \undo \omit TupletNumber } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4 e''32\( f'' e'' d'' e'' c'' d'' e'' \turnInside 16 #4 #'(0 . -0.7) f''16.[ \once \override NoteHead.extra-spacing-width = #'(-3 . 0) g''32] \turnInside 16 #4 #'(0 . 0) a''16.[ b''32]\) }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 6/4 { \omit TupletNumber c16 g bes c' bes g c g bes c' bes g c f a c' a f \undo \omit TupletNumber } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d'''8\( c'''\) \once \tupletSpan 8 \tuplet 3/2 { r16 b''( c''') r d'''( c''') r c'''( b'') r c'''( bes'') } }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 6/4 { \omit TupletNumber c16 e g c' e' d' \clef treble c' e' g' c'' c' e' d' f' c'' e' g' c'' \undo \omit TupletNumber } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a''8. a''16\turn \once \tupletSpan 8 \tuplet 3/2 { r16 c'''( bes'') r bes''( a'') r a''( g'') r g''( f'') } }
  \tag #'left { \clef treble \split { \omit TupletNumber \once \tupletSpan 4 \tuplet 6/4 { f'16[ a' c'' f'' e'' es''] } \once \tupletSpan 8 \tuplet 3/2 { d'' f'' d'' c''[ e'' c''] bes' d'' bes' a'[ c'' a'] } \undo \omit TupletNumber } { f'2 f'4 } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e'' c''>4( <d'' bes'>) <d''' d''>8.\( <c''' c''>16\) }
  \tag #'left { \clef bass \split { \clef bass f'2 f'4 } { bes4.( a8) <b gis>8.\( <c' a>16\) } }
  \tag #'common { s2 s4\sf }
  |

  \tag #'right { \clef treble c'''16\( f'''8\sf e'''32 d'''\) cis'''\( e''' d''' c''' bes'' a'' c''' bes'' a'' g'' bes'' g'' f'' e'' g'' e''\) }
  \tag #'left { \clef bass <f' c' a>4 \split { d'8 g' e' bes' } { \clef treble bes4 c' } }
  \tag #'common { s4 s\> s\!\pp }
  |

  \tag #'right { \clef treble <g'' e''>4\( f''16\)\noBeam c''\( f'' c'' bes' a' g' f'\) }
  \tag #'left { \clef treble \split { bes'4\( a'8\) } { f'4. } r8 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { <f'>8( e') ~ e'32\( f' g' f' e' f' g' e'\) f'16\( g' a' f'\) } { g4 s c' } }
  \tag #'left { \clef bass \split { \clef bass c4 des8_\sf( c a f) } { bes,2 a,4 } }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble \split { f'8( e') ~ e'32\( f' g' f' e' f' g' e'\) f'\( a' c'' bes' a' g' f' es'\) } { g4 s c' } }
  \tag #'left { \clef bass \split { c4 des8(_\sf c a f) } { bes,2 a,4 } }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble d'32\( es' d' cis' d' e' f' fis' g' a' bes' c''! d'' e'' f''! fis'' g'' a'' bes'' c''' d''' e''' f'''! d'''\) }
  \tag #'left { \clef bass <d! bes,>8 r r4\clef treble <g' d' bes>8 r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'''32\( d''' c''' b'' c''' f''' e''' d''' c''' b'' bes'' a'' g'' f'' e'' d''\) c''16^.[^( bes'^. a'^. g'^.]) }
  \tag #'left { \clef treble <a' f' c'>8 r r4\clef bass <bes e c>4 }
  \tag #'common { s2 s4 \tweak extra-offset #'(0.7 . 0.6) \pp }
  |

  \tag #'right { \clef treble \split { f'2 ~ f'8\noBeam c'16( f') } { r8 f[( bes a g f]) } }
  \tag #'left { \clef bass \split { r8 a,[( d c bes,8. a,16]) } { f,2~ f,8\noBeam f, } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'4( e') e' } { <c' bes g>2 <c' bes g>4 } }
  \tag #'left { \clef bass <c c,>4 ~ <c c,>16\( d,32 e, f, g, a, bes,\) c\( b, c d c bes, a, g,\) }
  \tag #'common { s2. \tweak extra-offset #'(0.7 . -0.7) \fp }
  |

  \tag #'right { \clef treble \tupletSpan 8 \tuplet 3/2 { <f' c' a>16[ a c'] f'[a' c''] c''[^( f' bes']) bes'[^( e'! a']) a'[^( d' g']) g'[^( c' f']) } }
  \tag #'left { \clef bass f,4 \tupletSpan 8 \tuplet 3/2 { r16 es'( d') r d'( c') r c'( bes) r bes( a) } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f'4( e') e'' } { <c' bes g>2 <c'' bes' g'>4 } }
  \tag #'left { \clef bass <c c,>4 ~ <c c,>16\( d32 e f g a bes\) c'\( b c' d' c' bes a g\) }
  \tag #'common { s2. \tweak extra-offset #'(0.5 . 0.3) \sf }
  |

  \tag #'right { \clef treble \tupletDown r16 \tuplet 3/2 { f'32_( a' c'') } r16 \tuplet 3/2 { f''32_( a'' c''') } \tuplet 3/2 { c'''32_( a'' bes'') } r16 \tuplet 3/2 { bes''32_( gis'' a'') } r16 \tuplet 3/2 { a''32_( fis'' g'') } r16 \tuplet 3/2 { g''32_( e'' f'') } r16 \tupletNeutral }
  \tag #'left { \clef bass \tupletUp \tuplet 3/2 { f32^( a c') } r16 \clef treble \tuplet 3/2 { f'32^( a' c'') } r16 r16 \tuplet 3/2 { cis''32^( d'' f'') } r16 \tuplet 3/2 { b'32^( c'' e'') } r16 \tuplet 3/2 { a'32^( bes' d'') } r16 \tuplet 3/2 { gis'32^( a' c'') } \tupletNeutral }
  \tag #'common { s2. \tweak extra-offset #'(-0.5 . 0) \p }
  |

  \tag #'right { \clef treble \shape #'((0.5 . 0) (0.3 . -0.3) (-0.8 . -0.3) (-1.3 . 0)) PhrasingSlur f''4\( e''32-.(\) c''32-. d''-. e''-. f''-. g''-. a''-. bes''-.) c'''\( b'' c''' d''' c''' bes'' a'' g''\) }
  \tag #'left { \clef bass <bes, g,! c,>4. r8 <bes, g, e, c,>4 }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble f''8 r \turnAccidental #6 ##f \markup \natural c''16-.( d''32-. e''-. f''-. g''-. a''-. bes''!-.) c'''\( b'' c''' d''' c''' bes'' a'' g''\) }
  \tag #'left { \clef bass <a, f,>8 r r4 <bes, g, e, c,> }
  \tag #'common { s4 s2\pp }
  |

  \tag #'right { \clef treble g''4. \shape #'((2 . -2) (2 . -1) (0 . 0) (0 . -1)) PhrasingSlur \turnAccidental #5.7 ##f \markup \sharp g''16.\(\< a''32\! c'''16\> bes'' g'' e''\)\! }
  \tag #'left { \clef treble \split { bes'4\( c'' des''\) \tweak extra-offset #'(0 . 0.7) \sf } { f'2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g'' e''>4\( f''8\) r r4 }
  \tag #'left { \clef treble \split { <des'' bes'>4\( <c'' a'>8\) r r4 } { f'4. s4. } }
  \tag #'common { s2. \tweak extra-offset #'(0.5 . 0.5) \pp }
  |

  \tag #'right { \clef treble <g'' e'' c'' bes' g'>8-. r <f'' c'' a'>-. r\fermata }
  \tag #'left { \clef bass <c' g e c>8_. r <f c a, f,>-. r\fermata }
  \tag #'common { s2 \tweak extra-offset #'(1.2 . 0) \pp }
  \bar "|."
  
}

thirdMovement = {

  \mark \markup { \bold "Menuetto. Allegretto" }
  \key f \minor
  \accidentalStyle default
  \time 3/4
  \override Score.MetronomeMark.transparent = ##t
  \tempo 4 = 168

  \repeat volta 2 {

  \partial 4
  \tag #'right { \clef treble <as' c'>4-. }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4\p }
  |

  \tag #'right { \clef treble <bes' des'>4( <g' bes>) r4 }
  \tag #'left { \clef bass r4 r f4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <as' c'>4( <f' as>) <f' c'>^( }
  \tag #'left { \clef bass r4 r <as f>( }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <e' c'>4 <f' c'> <g' c'>) }
  \tag #'left { \clef bass <bes g>4 <as f> <g e>) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { bes'4( as') } { c'2 } <c'' es'!>4-. }
  \tag #'left { \clef bass <as f>2 r4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <des'' f'>4( <bes' des'>) r4 }
  \tag #'left { \clef bass r4 r4 <as as,> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' es'>4( <as' c'>) <as' es'>^( }
  \tag #'left { \clef bass r4 r <c' as>( }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <g' es'>4 <as' es'> <bes' es'>) }
  \tag #'left { \clef bass <des' bes>4 <c' as> <bes g>) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { des''4( c'') es'' } { es'2 \shape #'((0.8 . 0.3) (1 . 0) (0 . 0) (0 . 0.2)) Slur as'4( } }
  \tag #'left { \clef bass <c' as>2 \shape #'((0.7 . 0) (0.9 . 0) (0 . 0) (0 . 0)) Slur <es' c'>4( }
  \tag #'common { s2 s4\f }
  |

  \tag #'right { \clef treble \split { es''4 es'' es'' } { \once \override Stem.length = #'4.5 g'4 \once \override Stem.length = #'5 as' bes') } }
  \tag #'left { \clef bass <des' bes>4 <c' as> <bes g>) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { es''2 f''4 } { des''4( c'') s4 } }
  \tag #'left { \clef bass as2 <bes des>4 }
  \tag #'common { s2 s4\p }
  |

  \tag #'right { \clef treble as'2^( \grace { c''8 } <bes' g'>4) }
  \tag #'left { \clef bass <c' es>2 <des' es>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble as'4 r g''8\sf( f'') }
  \tag #'left { \clef bass <c' as>4 r4 r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble as'2^( \grace { c''8 } <bes' g'>4) }
  \tag #'left { \clef bass <c' es>2 <des' es>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble as'4 r4 }
  \tag #'left { \clef bass <c' as>4 r4 }
  \tag #'common { s2 }
  }

  \repeat volta 2 {
  \tag #'right { \clef treble <es'' c''>4( }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4\p }
  |

  \tag #'right { \clef treble <fes'' des''>4 <des'' bes'>) r4 }
  \tag #'left { \clef bass r4 <bes g>( <des' bes>) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <es'' c''>4( <c'' as'>) r4 }
  \tag #'left { \clef bass r4 <c' as>( <es' c'>) }
  \tag #'common { s2. }
  |

  \break 
  \tag #'right { \clef treble \once \override Score .NonMusicalPaperColumn .line-break-system-details = #'((alignment-distances . (12))) }

  \tag #'right { <ges'' es''>4( <es'' c''>) r }
  \tag #'left { \clef bass r4 <c' a>( <es' c'>) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <f''! des''>4( <des'' bes'>) r }
  \tag #'left { \clef bass r4 <des' bes>( <f' des'>) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes' f'>2( \grace { des''8 } <c'' a'>4) }
  \tag #'left { \clef bass <des' f>2 <es' f>4 }
  \tag #'common { s2. \tweak extra-offset #'(0.3 . 0.5) \p }
  |

  \tag #'right { \clef treble bes'4 r ges''8\sf( f'') }
  \tag #'left { \clef bass <des' bes>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'2( \grace { des''8 } <c'' a'>4) }
  \tag #'left { \clef bass <des' f>2 <es' f>4 }
  \tag #'common { s2. \tweak extra-offset #'(0.3 . 0.5) \pp }
  |

  \tag #'right { \clef treble bes'4 r <des'' a'>8( c'') }
  \tag #'left { \clef bass <des' bes>4 r <es' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r <des'' a'>8( c'') }
  \tag #'left { \clef bass <des' bes>4 r <es' f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'4 r des''8( c'' }
  \tag #'left { \clef bass <des' bes>4 r des'8( c' }
  \tag #'common { s2 s4 \tweak extra-offset #'(0.3 . 0.5) \ff }
  |

  \tag #'right { \clef treble bes'8[c'' des'' c'' bes' c''] }
  \tag #'left { \clef bass bes8[c' des' c' bes c'] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8[as'! g' as' g' f'] }
  \tag #'left { \clef bass bes8[as! g as g f] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'8[f' g' f' as' b] }
  \tag #'left { \clef bass e8[f g f as b,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'4-.) r4 r }
  \tag #'left { \clef bass c4-.) c'\clef treble <as' c'>4 }
  \tag #'common { s2 s4\f }
  |

  \tag #'right { \clef treble r4 r e''4\sf }
  \tag #'left { \clef treble <bes' des'>4( <g' bes>) <g' bes> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f''4( as'') \afterGrace c'''4^\trill { bes''16[c'''] } }
  \tag #'left { \clef treble <as' c'>4( <f' as>)\clef bass <as f> }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble des'''4( bes'') \afterGrace bes''4^\trill { as''16[ bes''] }\break }
  \tag #'left { \clef bass <g e>4( <bes g>) <bes g> }
  \tag #'common { s2.\sf }
  |

  \break 
  \tag #'right { \clef treble \once \override Score .NonMusicalPaperColumn .line-break-system-details = #'((alignment-distances . (12))) }

  \tag #'right { \clef treble c'''4( as'') \afterGrace as''4^\trill { g''16[ as''] } }
  \tag #'left { \clef bass <as f>4( <c' as>) <f' c' as> }
  \tag #'common { s2. \tweak extra-offset #'(0 . 0.6) \sf }
  |

  \tag #'right { \clef treble bes''4( g'') \afterGrace g''4^\trill { f''16[ g''] } }
  \tag #'left { \clef bass <e' bes g>4_( <e' des' bes>) <e' des' bes>\clef treble }
  \tag #'common { s2. \tweak extra-offset #'(0 . 0.7) \sf }
  |

  \tag #'right { \clef treble as''4( f'') f'' }
  \tag #'left { \clef treble \split { f'4( as') as' } { <d' b>2 <d' b>4 } }
  \tag #'common { s2 s4\sf }
  |

  \tag #'right { \clef treble f''2( \grace { as''8 } <g'' e''>4) }
  \tag #'left { \clef treble <as' c'>2 <bes'! c'>4 }
  \tag #'common { s2.\p }
  |

  \tag #'right { \clef treble f''4 r4 es''!8( des'') }
  \tag #'left { \clef treble <as' f'>4 r r\clef bass }
  \tag #'common { s2 s4\pp }
  |

  \tag #'right { \clef treble f'2^( \grace { as'8 } <g' e'>4) }
  \tag #'left { \clef bass <as c>2 <bes c>4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'4 r r }
  \tag #'left { \clef bass <as f>4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef bass <c' g e>2. }
  \tag #'left { \clef bass <c c,>2. }
  \tag #'common { s2.\pp }
  |

  \tag #'right { \clef bass f4 r4 }
  \tag #'left { \clef bass f,4 r4 }
  \tag #'common { s2 }

  }

  \break
  \key f \major
  \tag #'common { \textMark \markup { "Trio" } }

  \repeat volta 2 {

  \tag #'right { \clef treble c'4\p }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble a'8([g' a' f' g' a'] }
  \tag #'left { \clef bass f4( a c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble bes'8[a' bes' g' a' bes'] }
  \tag #'left { \clef bass d'4 g f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[b' c'' d'' c'' bes'] }
  \tag #'left { \clef bass e4 g c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8[g' a' bes' a' f']) }
  \tag #'left { \clef bass f4 a c') }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { a'4( c'' f'') } { a'2. } }
  \tag #'left { \clef bass a,8([gis, a, f, g, a,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { g'4( d'' f'') } { g'2. } }
  \tag #'left { \clef bass bes,8[a, bes, g, a, b,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 f''4( e'') } { g'2. } }
  \tag #'left { \clef bass c8[b, c a, b, cis] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 d''4( c'') } { f'2 e'4 } }
  \tag #'left { \clef bass d8[a, b, g, c! fis,]) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r8 g'8([e' c' f' d']) } { s8 s8 s4 b4 } }
  \tag #'left { \clef bass g,2 g,,4 }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c'4 r4 }
  \tag #'left { \clef bass c,4 c }
  \tag #'common { s2 }

  }

  \repeat volta 2 {
  \tag #'right { \clef treble c'4 }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4 }
  |

  \tag #'right { \clef treble e'8([d' e' c' d' e'] }
  \tag #'left { \clef bass \split { c'2. } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'8[e' f' d' e' f'] }
  \tag #'left { \clef bass \split { b2. } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble g'8[fis' g' e' f' g']) }
  \tag #'left { \clef bass \split { bes!2. } { c2.~ } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8[f' a' c'' f'' a''] }
  \tag #'left { \clef bass \split { a4 } { c4 } r4 r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c''' c''>2.( }
  \tag #'left { \clef treble e'8([d' e' c' d' e'] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <b'' b'>2. }
  \tag #'left { \clef treble f'8[e' f' d' e' f'] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes''! bes'!>4) r8 g'8([a' bes'] }
  \tag #'left { \clef treble g'8[f' g' e' f' g'] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[bes' c'' a' bes' c'']) }
  \tag #'left { \clef treble a'8[g' a' f' g' a']) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { r4 r8 e''8([f'' g'']) } { d''8[c'' d'' bes' c'' d''] } }
  \tag #'left { \clef treble bes'8([a' bes' g' a' bes']) }
  \tag #'common { s2.\< }
  |

  \tag #'right { \clef treble <a'' e''>8([ <g'' d''> <a'' e''> <f'' c''> <g'' d''> <a'' e''>]) }
  \tag #'left { \clef treble c''8([bes' c'' a' bes' c'']) }
  \tag #'common { s2 s8. s16\! }
  |

  \tag #'right { \clef treble <bes'' f''>8([ <a'' e''> <g'' d''> <a'' e''> <g'' d''> <f'' c''>] }
  \tag #'left { \clef treble d''8([c'' bes' c'' bes' a'] }
  \tag #'common { s2. \tweak extra-offset #'(0.5 . 0) \ff }
  |

  \tag #'right { \clef treble <e'' bes'>8[ <f'' c''> <e'' bes'> <d'' a'> <c'' g'> <d'' a'>]) }
  \tag #'left { \clef treble g'8[a' g' f' e' f'])\clef bass }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <c'' g'>2.( }
  \tag #'left { \clef treble e'2.( }
  \tag #'common { s2.\p }
  |

  \tag #'right { \clef treble <b' f'>2. }
  \tag #'left { \clef treble d'2. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <bes'! e'>2.) }
  \tag #'left { \clef treble c'2.) }
  \tag #'common { s2.\pp }
  |

  \tag #'right { \clef treble a'8([g' a' f' g' a'] }
  \tag #'left { \clef bass f4( a c' }
  \tag #'common { s2.\p }
  |

  \tag #'right { \clef treble bes'8[a' bes' g' a' b'] }
  \tag #'left { \clef bass d'4 g f }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble c''8[b' c'' d'' c'' bes'] }
  \tag #'left { \clef bass e4 g c') }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'8[g' a' bes' a' f']) }
  \tag #'left { \clef bass f4 a c' }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble a'4( c'' f'' }
  \tag #'left { \clef bass a,8([gis, a, f, g, a,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble d''4 g' f' }
  \tag #'left { \clef bass bes,8[a, bes, g, a, b,] }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble e'4 g' c'' }
  \tag #'left { \clef bass c8[b, c bes, a, g,]) }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble f'4 r4 s4 }
  \tag #'left { \clef bass f,4 f s4 }
  \tag #'common {
    s2.
    \once \override Score.TextMark.direction = #DOWN
    \textEndMark \markup { \small "Menuetto D. C." }
  }
  |

  }

  \bar "|."

}

fourthMovement = {

  \mark \markup { \bold "Prestissimo" }
  \key f \minor
  \accidentalStyle default
  \time 4/4
  \override Score.MetronomeMark.transparent = ##t
  \tempo 4 = 180

  \tag #'right { \clef treble r2 }
  \tag #'left { \clef bass \tupletUp \tupletSpan 4 \tweak extra-offset #'(0 . -0.5) \tuplet 3/2 { f8 \shape #'((0 . -1.3) (0.5 . -0.2) (0.2 . -0.3) (0 . -0.5)) ([_\p as c']) f \shape #'((0 . -1.3) (0.5 . -0.2) (0.2 . -0.3) (0 . -0.5)) ([ as c']) } \tupletNeutral }
  \tag #'common { s2 }

  \repeat volta 2 {

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % REVISION START
  \once \override Staff.BarLine.color = #blue
  \once \override PianoStaff.SpanBar.color = #blue
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  \override TupletNumber.transparent = ##t
  \override TupletBracket.transparent = ##t
  
  \tag #'right { \clef treble <f'' c'' as' f'>4-. <e'' des'' bes' g' e'>-. }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 3/2 { f8[as c'] f[bes des'] f[c' as] f[c as,] f,[as, c] e,[g, c] f,[as, c] f[as c'] f[as c'] f[bes des'] f8[c' as] f[c as,] f,[as, c] e,[g, c] f,[as, c] f[as c'] } }
  \tag #'common { s1\p s1 s1 s1 }
  % |

  \tag #'right { \clef treble <f'' c'' as' f'>4-. r <c''' as'' f'' c''>-. <c''' bes'' g'' c''>-. }
  \tag #'left { \clef bass << { des'4( bes) c'2 }\\ { g2 as2 } >> }
  \tag #'common { s2 s\f }
  % |

  \tag #'right { \clef treble <c''' as'' f'' c''>4-. r <f'' c'' as' f'>4-. <e'' des'' bes' g' e'>-. }
  \tag #'left { \clef bass << { des'4( bes c'2) }\\ { g2 as } >> }
  \tag #'common { s2 s\p }
  % |

  \tag #'right { \clef treble <f'' c'' as' f'>4-. r <c''' as'' f'' c''>\f-. <c''' bes'' g'' c''>-. }
  \tag #'left { \clef bass << { des'4( bes) }\\ { g2 } >> <c' as>4( <g e> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' as'' f'' c''>4-. r es''!4\p-.( es''-.) }
  \tag #'left { \clef bass <as f>4 <f des>) <e c>4-. c'-.\clef treble }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4( as'') es''-.( es''-.) }
  \tag #'left { \clef bass << { bes'4( g') as'2 }\\ { e'2 f' } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4( as'') es''( e'' }
  \tag #'left { \clef bass << { bes'4( g') as'2 }\\ { e'2 f' } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble f''4 g'' as'' b'' }
  \tag #'left { \clef bass << { bes4( g) }\\ { e2 } >> <as f>4 <as f>2\sf }
  \tag #'common { s1 s4 }
  % |

  \tag #'right { \clef treble c'''4) r c''4\p-.( c''-. }
  \tag #'left { \clef bass <a fis>4\once \tupletSpan 4 \tuplet 3/2 { g8[b d'] g[b d'] g[b d'] g[c' es'] g[d' b] g[d b,] g,[b, d] g,[b, d] g,[b, d] g[b d'] g[b d'] g[c' es'] g[d' b] g[d b,] g,[b, d] g,[b, d] g,[b, d] g[d b,] g,[b, d] g,[b, d] g,[b, d] g[d b,] g,[b, d] g,[b, d] g,[b, d] g[d b,] g,[b, d] g[d b,] } }
  \tag #'common { s1 s1 s1 s1 s1 s1 s1 s4 }
  % |

  \tag #'right { \clef treble c''4 f'') c''-.( c''-.) }
  \tag #'left { \clef bass g,4 r4 r2 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4^\trill( f'') c''-.( c''-.) \acciaccatura c''8 }
  \tag #'left { \clef bass r2\once \tupletSpan 4 \tuplet 3/2 { r8 as[g] f[es d] } }
  \tag #'common { s1 }
  % |

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % REVISION END
  \once \override Staff.BarLine.color = #red
  \once \override PianoStaff.SpanBar.color = #red
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  \tag #'right { \clef treble as''4.\sf( g''8 f''[es'' d'' c'']) }
  \tag #'left { \clef bass c4 as4( g fis }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble b'4 r <g'' d'' b' g'>\p-. <fis'' es'' c'' a' fis'>-. }
  \tag #'left { \clef bass g4 as g fis)\once \tupletSpan 4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' d'' b' g'>4-. r <b'' g'' d'' b'>\ff-. <b'' g'' d'' b'>-. }
  \tag #'left { \clef bass \tuplet 3/2 { g8[c' es'] as[c' es'] g[c' es'] fis[c' es'] g[c' es'] as[c' es'] g[c' es'] fis[c' es'] g[c' es'] } }
  \tag #'common { s1 s1 s4 }
  % |

  \tag #'right { \clef treble <b'' g'' d'' b'>4-. r <g'' d'' b' g'>\p-. <fis'' es'' c'' a' fis'>-. }
  \tag #'left { \clef bass as8( as' f![f'! g g'] e[e' }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' d'' b' g'>4-. r <d''' b'' g'' d''>\ff-. <d''' b'' g'' d''>-. }
  \tag #'left { \clef bass f8 f'] b,[b c c']) d,8([d }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <d''' b'' g'' d''>4-. r <f''' d''' b'' f''>\ff-. <f''' d''' b'' f''>-. }
  \tag #'left { \clef bass es,8 es] f,[f fis, fis]) g,8[g }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <f''' d''' b'' f''>4-. r <f''' d''' b'' f''>-. <f''' d''' b'' f''>-. }
  \tag #'left { \clef bass g,8 g] g,[g g, g] c4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <f''' d''' b'' f''>4\sf-. r <f''' d''' b'' f''>\sf-. r\once \tupletSpan 4 }
  \tag #'left { \clef bass as8([c'] f[as g bes]) e([g }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble \tuplet 3/2 { f'''8\ff [es''' d'''] c'''[b'' as''] g''[f'' es''] d'' c'' b'] as'[g' f'] es'[d' c'] } }
  \tag #'left { \clef bass f8 as] b,[d c es]) d,4( }
  \tag #'common { s1 s2 }
  % |

  \tag #'right { \clef treble b4 r4 \tuplet 3/2 { r8 es'[c'] as'[es' c'] g'[es' c'] fis'[es' c'] g'[es' c'] as'[es' c'] g'[es' c'] fis'[es' c'] } }
  \tag #'left { \clef bass es,4 f, fis,) g,,8[g, }
  \tag #'common { s1 s1 s2 }
  % |

  \tag #'right { \clef treble g'4\once \tupletSpan 4 \tuplet 3/2 { es''8[c'' as'] es''[c'' g'] es''[c'' fis'] es''[c'' g'] es''[c'' as'] es''[c'' g'] es''[c'' fis'] } }
  \tag #'left { \clef bass g,,8 g,] g,,[g, g,, g,]\once \tupletSpan 4 \tuplet 3/2 { c,8([g, c]) c,[g, c] c,[g, c] c,[g, c] d,[f, bes,!] d,[f, bes,] d,[f, bes,] d,[f, bes,] es,[g, bes,] es,[g, bes,] e,[g, c] e,[g, c] f,[as, c] f,[as, c] f,[as, d] f,[as, d] g,[bes, es] g,[bes, es] g,[bes, e] g,[bes, e] as,[c f] as,[c f] as,[c fis] as,[c fis] g,[c es] g,[c es] g,[c es] g,[c es] g,[b, d] g,[b, d] g,[b, d] g,[b, d] c,[g, c] c,[g, c] c,[g, c] c,[g, c] d,[f, bes,] d,[f, bes,] d,[f, bes,] d,[f, bes,] es,[g, bes,] es,[g, bes,] e,[g, c] e,[g, c] f,[as, c] f,[as, c] f,[as, d] f,[as, d] g,[bes, es] g,[bes, es] g,[bes, e] g,[bes, e] as,[c f] as,[c f] as,[c fis] as,[c fis] g,[c es] g,[c es] g,[c es] g,[c es] g,[b, d] g,[b, d] g,[b, d] g,[b, d] c[es g] c'[es' g'] c'[es' g'] c'[f' as'] c'[g' es'] c'[g es] c[es g] g,[d g] c[es g] c'[es' g'] c'[es' g'] c'[f' as'] c'[g' es'] c'[g es] c[es g] g,[d g] c[es g] c'[g es] c[es g] g,[d g] c[es g] c'[g es] c[es g] c'[g es] } }
  \tag #'common { s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s2. }

  \tag #'right { \clef treble es''4 \tuplet 3/2 { as''8[es'' c''] as''[des''! c''] g''[des'' bes'] g''[c'' bes'] f''[c'' as'] f''[d'' g'] es''![c'' g'] d''[b' f'] c''[g' es'] b'[as' d'] c''[a' es'] g'[es' c'] g'[es' c'] g'[d' b] g'[d' b] c'[es' g'] c''[as' es'] c''[as' des'!] bes'[g' des'] bes'[g' c'] as'[f' c'] g'[f' d'] g'[es'! c'] f'[b g] es'[c' g] } }
  \tag #'left { \clef bass  }
  \tag #'common { s1 s1 s1 s1 s1 s1 s2 }

  \tag #'right { \clef bass \tuplet 3/2 { d'8[as f] c'[a es] c'[g es] c'[g es] b[g d] b[g d] } }
  \tag #'left { \clef bass  }
  \tag #'common { s1 s2 }

  \tag #'right { \clef treble c'4 r4\clef treble <es'' es'>4\p <es'' es'> }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <d'' d'>4( <c'' c'> <bes' bes> <as' as>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g' g>2 <c''' c''>4 <c''' c''> }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes'' bes'>4( <as'' as'> <g'' g'> <f'' f'>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es'' es'>2 <g'' g'>4 <g'' g'> }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <f'' f'>4( <es''! es'!> <d'' d'> <c'' c'>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g' g>2 <g' g>4-.( <g' g>-.) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g' g>2 <g' g>4-.( <g' g>-.) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c'4 r4 <es'' es'>4 <es'' es'> }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <d'' d'>4( <c'' c'> <bes' bes> <as' as>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g' g>2 <c''' c''>4 <c''' c''> }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes'' bes'>4( <as'' as'> <g'' g'> <f'' f'>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es'' es'>2 <g'' g'>4 <g'' g'> }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <f'' f'>4( <es''! es'!> <d'' d'> <c'' c'>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g' g>2 <g' g>4-.( <g' g>-.) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g' g>2 <g' g>4-.( <g' g>-.) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c'4 r4 <c''' g'' es'' c''>4\ff-. <b'' as'' f'' d'' b'>-. }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' g'' es'' c''>4-. r <g'' es'' c'' g'>-. <g'' d'' b' g'>-. }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' es'' c'' g'>4-. r <c''' g'' es'' c''>-. <b'' as'' f'' d'' b'>-. }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' g'' es'' c''>4-. r <g'' es'' c'' g'>-. <g'' d'' b' g'>-. }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' es'' c'' g'>4-. r <g'' es'' c'' g'>-. <g'' d'' b' g'>-. }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' es'' c'' g'>4-. r <es'' c'' g'>-. r }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  }

  \alternative {
    {
    \tag #'right { \clef treble <c'' g' es'>4-. r <bes' g' e'>-. r }
    \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 3/2 { c8[es g] c'[g es] c[e g] c'[g e] f\p [as c'] f[as c'] } }
    \tag #'common { s1 s2 }
    % |

    \tag #'right { \clef treble <as' f'>4-. r s2 }
    \tag #'left { \clef bass s2 }
    \tag #'common { s1 }
    % |
    }
    {
    \tag #'right { \clef treble <c'' g' es'>4-. r r2 }
    \tag #'left { \clef bass c4-. r4 r2 }
    \tag #'common { s1 }
    % |

    \tag #'right { \clef treble <des''! g' es' des'!>4\ff-. r <bes' g' es' des'>-. r }
    \tag #'left { \clef bass <g es des! bes,>4\ff-. r <g es des bes,>-. r }
    \tag #'common { s1 }
    % |

    \tag #'right { \clef treble <g' es' des'>4-. r r2 }
    \tag #'left { \clef bass <g es des bes,>4-. r4 r2 }
    \tag #'common { s1 }
    % |
    }
  }

  \repeat volta 2 {

  \tag #'right { \clef treble es'1^\markup {\italic "sempre piano e dolce" }( }
  \tag #'left { \clef bass r4 <c' as> <c' as> <c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'2 c'') }
  \tag #'left { \clef bass r4 <es' c' as> <es' c' as> <es' c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''2. es''4( }
  \tag #'left { \clef bass r4 <es' bes g> <es' bes g> <es' bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble d''4 es'' f'' es'') }
  \tag #'left { \clef bass r4 <es' bes g> <es' bes g> <es' bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4( des''!) r des''-. }
  \tag #'left { \clef bass r4 <des'! as f> <des' as f> <des' as f> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble des''4( c'') r c''-. }
  \tag #'left { \clef bass r4 <c' as es> <c' as es> <c' as es> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''8([bes' des'' c''] es''[des'' c'' bes'] }
  \tag #'left { \clef bass r4 <bes f des> <bes f des> <bes f des> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'2^\markup {\translate #(cons 5 -1) {\musicglyph "scripts.turn" } } c''4 bes' }
  \tag #'left { \clef bass r4 <c' es> <des' es> <des' es> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes'2. c''4 }
  \tag #'left { \clef bass r4 <des' as> <des' as> <des' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'4) r4 r2 }
  \tag #'left { \clef bass r4 as c' es' }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''2. es''4-. }
  \tag #'left { \clef bass r4\clef treble <c'' as'> <c'' as'> <c'' as'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble g''4( as'') b''( c''') }
  \tag #'left { \clef bass r4 <es'' c'' as'> <es'' c'' as'> <es'' c'' as'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble d'''4( es''') r4 es'''4( }
  \tag #'left { \clef bass r4 <es'' bes'! g'> <es'' bes' g'> <es'' bes' g'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble d'''4 es''' f''' es''') }
  \tag #'left { \clef bass r4 <es'' bes' g'> <es'' bes' g'> <es'' bes' g'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es'''4( des'''!) r des'''-. }
  \tag #'left { \clef bass r4 <des'' as' f'> <des'' as' f'> <des'' as' f'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble des'''4( c''') r c'''-. }
  \tag #'left { \clef bass r4 <c'' a' es'> <c'' a' es'> <c'' a' es'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c'''8([bes'' des''' c'''] es'''[des''' c''' bes''] }
  \tag #'left { \clef bass r4 <bes' f' des'> <bes' f' des'> <bes' f' des'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as''!2^\markup {\translate #(cons 5 -1) {\musicglyph "scripts.turn" } } c'''4 bes'' }
  \tag #'left { \clef bass r4 <c'' es'> <des'' es'> <des'' es'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble << { bes''2.( c'''4) }\\ { des''1 } >> }
  \tag #'left { \clef bass r4 g' as' g' }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <as'' c''>4 r r es''-. }
  \tag #'left { \clef bass as'4 es' c' as }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4 f'' g'' as'' }
  \tag #'left { \clef bass r4\clef bass <es' bes g> <es' bes g> <es' bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes''4 g'' es'' des'') }
  \tag #'left { \clef bass r4 <es' des' bes> <es' des' bes> <es' des' bes> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''2.( des''4^\trill) }
  \tag #'left { \clef bass r4 <es' c' as> <es' c' as> <es' c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4 r4 r es'' }
  \tag #'left { \clef bass r4\clef treble <as' es' c'> <as' es' c'> <as' es' c'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''8([f'' es'' d''] es''[f'' g'' as''] }
  \tag #'left { \clef bass r4 <g' es' bes> <g' es' bes> <g' es' bes> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble a''8[bes'' c''' bes''] as''![g'' f'' es'']) }
  \tag #'left { \clef bass r4 <bes' es' des'!> <bes' es' des'> <bes' es' des'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''2( des''!^\trill) }
  \tag #'left { \clef bass r4\clef bass <g es>( <as f> <bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4 r4 r2 }
  \tag #'left { \clef bass <c' as>4 <des' bes> <es' c'> <des' bes>) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es'' es'>1( }
  \tag #'left { \clef bass r4 <c' as> <c' as> <c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <as'' as'>2\< <c''' c''>) }
  \tag #'left { \clef bass r4 <es' as ges> <es' as ges> <es' as ges> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es''' es''>4\!\sf( <des''' des''>) r <des''' des''>-. }
  \tag #'left { \clef bass r4 <des' as f> <des' as f> <des' as f> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <des''' des''>4\sf( <c''' c''>) r <c''' c''>-. }
  \tag #'left { \clef bass r4 <a ges es> <a ges es> <a ges es> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' c''>4( <bes'' bes'> <f''' f''> <es''' es''>) }
  \tag #'left { \clef bass r4 <bes f des> <bes f des> <bes f des> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es''' es''>4( <des''' des''> <c''' c''> <bes'' bes'>) }
  \tag #'left { \clef bass r4 <des' g! es> <des' g es> <des' g es> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes'' bes'>2.( <c''' c''>4 }
  \tag #'left { \clef bass r4 <des' as> <des' as> <des' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <as'' as'>4) r4 r es''4 }
  \tag #'left { \clef bass r4 <c' as> <es' c'> <c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4( f'' g'' as'' }
  \tag #'left { \clef bass r4 <es' bes g> <es' bes g> <es' bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes''4 g'' es'' des'') }
  \tag #'left { \clef bass r4 <es' des' bes> <es' des' bes> <es' des' bes> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''2.( des''4^\trill) }
  \tag #'left { \clef bass r4 <es' c' as> <es' c' as> <es' c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4 r4 r es'' }
  \tag #'left { \clef bass r4\clef treble <as' es' c'> <as' es' c'> <as' es' c'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''8([f'' es'' d''] es''[f'' g'' as''] }
  \tag #'left { \clef bass r4 <g' es' bes> <g' es' bes> <g' es' bes> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes''8[b'' c''' des'''] d'''[es''' f''' es''']) }
  \tag #'left { \clef bass r4 <bes'! es' des'!> <bes' es' des'> <bes' es' des'> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es'''2( des'''!2^\trill) }
  \tag #'left { \clef bass r4\clef bass <g es>( <as f> <bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c'''4 r4 r2 }
  \tag #'left { \clef bass <c' as>4 <des' bes> <es' c'> <des' bes>) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es'' es'>1( }
  \tag #'left { \clef bass r4 <c' as> <c' as> <c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <as'' as'>2\< <c''' c''>) }
  \tag #'left { \clef bass r4 <es' as ges> <es' as ges> <es' as ges> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es''' es''>4\!\sf( <des''' des''>) r <des''' des''>-. }
  \tag #'left { \clef bass r4 <des' as f> <des' as f> <des' as f> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <des''' des''>4\sf( <c''' c''>) r <c''' c''>-. }
  \tag #'left { \clef bass r4 <a ges es> <a ges es> <a ges es> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' c''>4( <bes'' bes'> <f''' f''> <es''' es''>) }
  \tag #'left { \clef bass r4 <bes f des> <bes f des> <bes f des> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es''' es''>4( <des''' des''> <c''' c''> <bes'' bes'>) }
  \tag #'left { \clef bass r4 <des' g! es> <des' g es> <des' g es>\once \tupletSpan 4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <as'' as'>4 r <c'' c'>\pp-. <b' b>-. }
  \tag #'left { \clef bass \tuplet 3/2 { as,8[c es] as,[c es] as,[c es] as,[c es] as,[c es] as,[c es] as,[c es] as,[c es] } }
  \tag #'common { s1 s1 }
  % |

  \tag #'right { \clef treble <c'' c'>4-. r <c'' c'>-. <b' b>-. }
  \tag #'left { \clef bass as,4 <es' c' as> <es' c' as> <es' c' as> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''1^\markup {\translate #(cons 10 -1) {\musicglyph "scripts.turn" } } }
  \tag #'left { \clef bass <es' c' as>4 <es' c' as> <es' c' as> <es' c' as>\once \tupletSpan 4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c'''2.\sf c''4 }
  \tag #'left { \clef bass \tuplet 3/2 { g,8[c e] g,[c e] g,[c e] g,[c e] g,[c e] g,[c e] g,[c e] g,[c e] } }
  \tag #'common { s1 s1 }
  % |

  \tag #'right { \clef treble bes'!4 r <bes' bes>4\pp-. <a' a>-. }
  \tag #'left { \clef bass g,4 <e' bes g> <e' bes g> <e' bes g> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes' bes>4-. r <bes' bes>-. <a' a>-. }
  \tag #'left { \clef bass <e' bes g>4 <e' bes g> <e' bes g> <e' bes g>\once \tupletSpan 4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes'1^\markup {\translate #(cons 10 -1) {\musicglyph "scripts.turn" } } }
  \tag #'left { \clef bass \tuplet 3/2 { f,8[c f] f,[c f] f,[c f] f,[c f] f,[c f] f,[c f] f,[c f] f,[c f] } }
  \tag #'common { s1 s1 }
  % |

  \tag #'right { \clef treble bes''2.\sf bes'4 }
  \tag #'left { \clef bass f,4 <as f> <as f> <as f> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'!4 r <as' as>\pp-. <g' g>-. }
  \tag #'left { \clef bass << { <as f>4 <as f> <as f> <as f> }\\ { des1\sf } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <as' as>4-. r <as' as>-. <g' g>-. }
  \tag #'left { \clef bass << { <as ges>4 <as ges> <as ges> <as ges> }\\ { c1\sf } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'1^\markup {\translate #(cons 10 -1) {\musicglyph "scripts.turn" } } }
  \tag #'left { \clef bass << { <as ges>4 <as ges> <as ges> <as ges> }\\ { es1\sf } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as''2.\sf( as'4) }
  \tag #'left { \clef bass << { <as f>4 <as f> <as f> <as f> }\\ { des1\sf } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as''2.\sf( as'4) }
  \tag #'left { \clef bass << { <f es>4 <f es> <f es> <f es> }\\ { c1\sf } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as''2.\sf( as'4) }
  \tag #'left { \clef bass << { r4 <f des> <f des> <f des> }\\ { bes,1\ff } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as''2.\sf( as'4) }
  \tag #'left { \clef bass << { r4 <g des> r <g d> }\\ { bes,2 b,2 } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble a''2.\sf( a'4) }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 3/2 { c8[e g] } r4 c'4-. c'-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble << { bes''2.\ff }\\ { r4 bes'2 } >> <as''! as'!>4 }
  \tag #'left { \clef bass c'4-. r c-. b,-.\once \tupletSpan 4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble g''4( g' f'' f') }
  \tag #'left { \clef bass \tuplet 3/2 { c8[e g] } r4 c'4-. c'-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble e''4\once \tupletSpan 4 \tuplet 3/2 { c'8\p [e' g'] c''[g' e'] b'[as' f'] c''[g' e'] c'[g' e'] r8 g'[e'] r as'[f'] } }
  \tag #'left { \clef bass c'4-. r c-. b,-. }
  \tag #'common { s1 s1 }
  % |

  \tag #'right { \clef treble r4\once \tupletSpan 4 \tuplet 3/2 { c'8[e' g'] c''[g' e'] b'[as' f'] c''[g' e'] c'[g' e'] r g'[e'] r as'[f'] r g'[e'] c''[g' e'] } }
  \tag #'left { \clef bass << { r2 bes!4^\accent( a }\\ { c1~ } >> }
  \tag #'common { s1 s1 s2 }
  % |

  \tag #'right { \clef treble << { des''4^\accent( c'' des'') }\\ {\override TupletNumber.transparent = ##t\once \tupletSpan 4 \tuplet 3/2 { des''8[g' e'] c''[g' e'] des''[g' e'] } } >>\once \tupletSpan 4 \tuplet 3/2 { r8 g'8[e'] } }
  \tag #'left { \clef bass << { bes4) r bes^\accent( a }\\ { c4 c2.\sf ~ } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble << { des''4^\accent( c'' des'') }\\ {\override TupletNumber.transparent = ##t\once \tupletSpan 4 \tuplet 3/2 { des''8[g' e'] c''[g' e'] des''[g' e'] } } >>\once \tupletSpan 4 \tuplet 3/2 { r8 g'8[e'] } }
  \tag #'left { \clef bass << { bes4) r bes^\accent( a) }\\ { c4 c2.\sf } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble << { des''4^\accent c'' des'' c'' }\\ {\override TupletNumber.transparent = ##t\once \tupletSpan 4 \tuplet 3/2 { des''8[g' e'] c''[g' e'] des''[g' e'_\markup {\italic "decresc." }] c''[g' e'] des''[g' e'] c''[g' e'] } } >> }
  \tag #'left { \clef bass << { bes1 }\\ { c1~ } >> }
  \tag #'common { s1 s2 }
  % |

  \tag #'right { \clef treble << { des''4 c'' }\\ { } >>\once \tupletSpan 4 \tuplet 3/2 { des''8([g' e'] c''[g' e'] des''[g' e'] c''[g' e']) des''\>([g' e'] c''[g' e'] des''[g' e'] c''[g' e'] des''[g' e'] c''[g' e'] des''[g' e'] c''[g' e'\!]) } }
  \tag #'left { \clef bass << { g1 }\\ { c1~ } >> }
  \tag #'common { s1 s1 s1 s2 }
  % |

  \tag #'right { \clef treble f'4\f r <f'' c'' as' f'>4-. <e'' des'' bes' g' e'>-. }
  \tag #'left { \clef bass << { e1 }\\ { c1~ } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <f'' c'' as' f'>4-. r <c''' as'' f'' c''>-. <c''' bes'' g'' c''>-. }
  \tag #'left { \clef bass << { bes1 }\\ { c1 } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' as'' f'' c''>4-. r <f'' c'' as' f'>-. <e'' des'' bes' g' e'>-. }
  \tag #'left { \clef bass \once \tupletSpan 4 \tuplet 3/2 { f8[as c'] f[as c'] f[as c'] f[bes des'] f[c' as] f[c as,] f,[as, c] e,[g, c] f,[as, c] f[as c'] f[as c'] f[bes des'] f[c' as] f[c as,] f,[as, c] e,[g, c] f,[as, c] f[as c'] } }
  \tag #'common { s1 s1 s1 s1 s2 }
  % |

  \tag #'right { \clef treble <f'' c'' as' f'>4-. r <c''' as'' f'' c''>-. <c''' bes'' g'' c''>-. }
  \tag #'left { \clef bass << { des'4( bes) c'2 }\\ { g2\p as } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c''' as'' f'' c''>4-. r es''!\p-.( es''-.) }
  \tag #'left { \clef bass << { des'4( bes) c'2 }\\ { g2 as } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4( as'') es''-.( es''-.) }
  \tag #'left { \clef bass << { des'4( bes) }\\ { g2 } >> <c' as>4( <g e> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble es''4( as'') es''( e'' }
  \tag #'left { \clef bass <as f>4 <f des>) <e c>4-. c'-.\clef treble }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble f''4 g'' as'' b'') }
  \tag #'left { \clef bass << { bes'!4( g') as'2 }\\ { e'2 f'2 } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c'''4-. r c''4-.( c''-.) }
  \tag #'left { \clef bass c'4-.( c'-.) c'4( f')\clef treble }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4( f'') r8 des'''8([c''' bes'']) }
  \tag #'left { \clef bass << { bes'4( g') as'2 }\\ { e'2 f'2 } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes''8([as'' g'' f'']) c''4-.( c''-.) }
  \tag #'left { \clef bass c'4-.( c'-.) c'4^\trill( f') }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4^\trill( f'') r8 des'''8([c''' bes'']) }
  \tag #'left { \clef bass <g e>4\fp <g e> <as f> r }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble bes''8([as'' g'' f'']) r8 des'''\fp( c''' bes'') }
  \tag #'left { \clef bass <f des>4 r\once \tupletSpan 4 \tuplet 3/2 { c8[e g] c[e g] c[e g] c[f as] c[g e] c[g, e,] c,[e, g,] c,[e, g,] c,[e, g,] c[e g] c[e g] c[f as] c[g e] c[g, e,] c,[e, g,] c,[e, g,] c,[e, g,] c[g, e,] c,[e, g,] c,[e, g,] c,[e, g,] c[g, e,] c,[e, g,] c,[e, g,] c,[e, g,] c[g, e,] c,[e, g,] c[g, e,] } }
  \tag #'common { s1 s1 s1 s1 s1 s1 s1 s2 }
  % |

  \tag #'right { \clef treble bes''8([as'' g'' f''] es''![des'' c'' b']) }
  \tag #'left { \clef bass c,4 r4 r2 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble c''4 r <c'' g' e' c'>4\p-. <b' as' f' d' b>-. }
  \tag #'left { \clef bass << { s4\override TupletNumber.transparent = ##t\override TupletBracket.transparent = ##t\once \tupletSpan 4 \tuplet 3/2 { as8[g f] } e4 r }\\ { r2\override TupletNumber.transparent = ##t\override TupletBracket.transparent = ##t\once \tupletSpan 4 \tuplet 3/2 { r8 des[c] bes,[as, g,] } } >> }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' g' e' c'>4-. r <e'' c'' g' e'>\f-. <e'' c'' g' e'>-. }
  \tag #'left { \clef bass f,4( des c b, }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <e'' c'' g' e'>4-. r <c'' g' e' c'>\p-. <b' as' f' d' b>-. }
  \tag #'left { \clef bass c4 des c b,) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' g' e' c'>4-. r <g'' e'' c'' g'>\f-. <g'' e'' c'' g'>-. }
  \tag #'left { \clef bass c4 <des' des>( <c' c> <b b,>) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' e'' c'' g'>4-. r <bes'' g'' e'' bes'>\f-. <bes'' g'' e'' bes'>-. }
  \tag #'left { \clef bass <c' c>4( <des' des> <c' c> <b b,>) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes'' g'' e'' bes'>4-. r <bes'' g'' e'' bes'>\ff-. <bes'' g'' e'' bes'>-. }
  \tag #'left { \clef bass <c' c>4( des' d' es') }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes'' g'' e'' bes'>4-. r <bes'' g'' e'' bes'>-. r\once \tupletSpan 4 }
  \tag #'left { \clef bass a4( bes g! as) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble \tuplet 3/2 { bes''8\sf [as'' g''] f''[e'' des''] c''[bes' as'] g'[f' e'] des'[c' bes] } }
  \tag #'left { \clef bass e4( f bes, b,) }
  \tag #'common { s1 s4 }
  % |

  \tag #'right { \clef treble s4 s2\once \tupletSpan 4 \tuplet 3/2 { r8 f'[as'] des'[f' as'] c'[f' as'] b[f' as'] c'[f' as'] des'[f' as'] c'[f' as'] b[f' as'] c'[f' as'] des''[as' f'] c''[as' f'] b'[as' f'] c''[as' f'] des''[as' f'] c''[as' f'] b'[as' f'] c''[as' f'] f''[as' f'] f''[bes' as'] es''[bes' ges'] es''[c'' f'] des''[bes' f'] des''[bes' e'] c''[as' f'] bes'[g'! c'] as'[f' c'] g'[des' bes] f'[d' as] f'[c' as] f'[c' as] e'[c' g] e'[c' g] f'[as' c''] f''[c'' as'] f''[bes' as'] es''[bes' ges'] es''[c'' f'] des''![bes' f'] des''[bes' e'] c''[as' f'] bes'[g' c'] as'[f' c'] g'[des' bes] f'[d' as] f'[c' as] f'[c' as] e'[c' g] e'[c' g] } }
  \tag #'left { \clef bass c,8[c c, c] c,[c c, c] }
  \tag #'common { s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s2. }
  % |

  \tag #'right { \clef treble <f' as>4 r4 <as'' as'>4\p <as'' as'> }
  \tag #'left { \clef bass f,4 f8([f'] d[d' es es']) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' g'>4( <f'' f'> <es'' es'> <des'' des'>) }
  \tag #'left { \clef bass a,8([a bes, bes] g,![g! a, a] }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' c'>2 <f'' f'>4 <f'' f'> }
  \tag #'left { \clef bass e,8[e f, f]) bes,,([bes, b,, b,]) }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es'' es'>4( <des'' des'> <c'' c'> <bes' bes>) }
  \tag #'left { \clef bass c,8([c c, c] c,[c c, c])\once \tupletSpan 4 }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'!2 <c''' c''>4 <c''' c''> }
  \tag #'left { \clef bass \tuplet 3/2 { f,8[as, c] f,[as, c] f,[as, des] f,[as, des] g,[bes, des] g,[bes, des] g,[bes, es] g,[bes, es] as,[c es] as,[c es] a,[c f] a,[c f] bes,[des f] bes,[des f] bes,[des g] bes,[des g] c[es as!] c[es as] c[es a] c[es a] des[f bes] des[f bes] d[f b] d[f b] c[f as] c[f as] c[f as] c[f as] c[e g] c[e g] c[e g] c[e g] f,[as, c] f,[as, c] f,[as, des] f,[as, des] g,[bes, des] g,[bes, des] g,[bes, es] g,[bes, es] as,[c es] as,[c es] a,[c f] a,[c f] bes,[des f] bes,[des f] bes,[des g] bes,[des g] c[es as!] c[es as] c[es a] c[es a] des[f bes] des[f bes] d[f b] d[f b] c[f as] c[f as] c[f as] c[f as] c[e g] c[e g] c[e g] c[e g] } }
  \tag #'common { s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 }
  % |

  \tag #'right { \clef treble <bes'' bes'>4( <as''! as'!> <g'' g'> <f'' f'>) }
  \tag #'left { \clef bass <f f,>4\f r\clef treble <c'' as' f'>-. <des'' bes' f'>-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' c'>2 <c'' c'>4-.( <c'' c'>-.) }
  \tag #'left { \clef bass <c'' as' f'>4-. r\clef bass <c' as f>-. <c' g c>-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' c'>2 <c'' c'>4-.( <c'' c'>-.) }
  \tag #'left { \clef bass <c' as f>4-. r\clef treble <c'' as' f'>-. <des'' bes' f'>-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble f'4 r4 <as'' as'>4\p <as'' as'> }
  \tag #'left { \clef bass <c'' as' f'>4-. r\clef bass <c' as f>-. <c' g c>-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <g'' g'>4( <f'' f'> <es'' es'> <des'' des'>) }
  \tag #'left { \clef bass <c' as f>4-. r <c' as f>\ff-. <des' bes f>-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' c'>2 <f'' f'>4 <f'' f'> }
  \tag #'left { \clef bass <c' as f>4-. r <c' as f>-. <des' bes f>-. }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <es'' es'>4( <des'' des'> <c'' c'> <bes' bes>) }
  \tag #'left { \clef bass <c' as f>4-. r4 r\once \tupletSpan 4 \tuplet 3/2 { f8[c as,] } }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble as'!2 <c''' c''>4 <c''' c''> }
  \tag #'left { \clef bass f,4 r4 r2^\fermata }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <bes'' bes'>4( <as''! as'!> <g'' g'> <f'' f'>) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' c'>2 <c'' c'>4-.( <c'' c'>-.) }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble <c'' c'>2 <c'' c'>4-.( <c'' c'>-.)\once \tupletSpan 4 }
  \tag #'left { \clef bass  }
  \tag #'common { s1 }
  % |

  \tag #'right { \clef treble \tuplet 3/2 { f'8\f [as' c''] f''[as'' c'''] f'''[c''' as''] e'''[des''' bes''] f'''[c''' as''] f''[c'' as'] f'[as' c''] e'[g' c''] f'[as' c''] f''[as'' c'''] f'''[c''' as''] e'''[des''' bes''] f'''[c''' as''] f''[c'' as'] f'[as' c''] e'[g' c''] f'[as' c''] f''[as'' c'''] f'''\ff [c''' as''] e'''[des''' bes''] f'''[c''' as''] f''[as'' c'''] f'''[c''' as''] e'''[des''' bes''] f'''[c''' as''] f''[c'' as'] f'[c' as] } }
  \tag #'left { \clef bass  }
  \tag #'common { s1 s1 s1 s1 s1 s1 s2. }

  \tag #'right { \clef treble r4 s4 s4 r2^\fermata }
  \tag #'left { \clef bass  }
  \tag #'common { s1 s4 }

  }

}
