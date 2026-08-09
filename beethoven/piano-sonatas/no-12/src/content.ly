\version "2.24.1"

\include "lib.ly"

workTitle = "Piano Sonata No. 12"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 26"
workDate = "1800–1801"

firstMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t

  \mark \markup { \bold "Andante con variazioni" }
  \tempo 8 = 90
  \time 3/8
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/8)
    \set Timing.beatStructure = #'(3)
  \key as \major
    \accidentalStyle modern

  \partial 8

  % critical-note: intro-note|A|opening upbeat, RH|Minimal critical-note example attached to the opening note. This longer sample paragraph is intentionally verbose enough to check the note-page text block, margins, and line wrapping in the assembled extended edition. It should remain on the notes page immediately following the score page that contains marker A, and it should not drift to a later page when the music layout changes.
  \tag #'right { \clef treble \tag #'urtext { es'8 } \tag #'main-only { es'8-1\altFinger "(2" } \tag #'extended { es'8-1\altFinger "(2"^\markup \box \bold "A" \critRef #'intro-note } }
  \tag #'left { \clef bass es8 }
  \tag #'dynamics { s8-\p }
  |

  \tag #'right { \clef treble \split { es'8-2\altFinger "3)"( as'-3) as'^. } { c'4. } }
  \tag #'left { \clef bass \split { es8( as) as^. } { <as, es>4. } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'16( g') g'16.( f'32 g'16. es'32) } { <des' es'>4. } }
  \tag #'left { \clef bass \split { as16( g) g16.( f32 g16. es32) } { <bes, es>4. } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4( bes'8) } { r8 es' <bes es'>\altFinger "(1 5;2 5)"\tag #'extended \altFinger "(1 4;2)" } }
  \tag #'left { \clef bass \split { as4 es8 } { r8 c g, } }
  \tag #'dynamics { s4.-\cresc }
  |

  \tag #'right { \clef treble \split { des''16.[( c''32) bes'8-.] \acciaccatura { c''8 } bes'32( a' bes' c'') } { <c' es' as'>8 <bes es' g'> s } }
  \tag #'left { \clef bass <as, es>8 <es, es> r }
  \tag #'dynamics { s8\!-\sf\> s8\! s8-\p }
  |

  \tag #'right { \clef treble <as' des''>4( <as' c''>8 }
  \tag #'left { \clef bass f8( f' es' }
  \tag #'dynamics { s4.-\cresc }
  |

  \tag #'right { \clef treble <as' bes' f''>8 <g' bes'> <as' es''>) }
  \tag #'left { \clef bass d'8 des' c') }
  \tag #'dynamics { s4 s8\! }
  |

  \tag #'right { \clef treble <f' as'>8^( <fes' bes' des''> <es' as' c''> }
  \tag #'left { \clef bass f8( g as) }
  \tag #'dynamics { s4-\p-\cresc s8\! }
  |

  \tag #'right { \clef treble \split { <fis' a'>8 <g' bes'>16) r  es'16. es'32-. } { es'4 s8 } }
  \tag #'left { \clef bass \split { s4 es16. es32-. } { es4 r8 } }
  \tag #'dynamics { s4.-\p }
  |

  \tag #'right { \clef treble \split { es'16( as') as'-. as'-. as'-. as'-. } { c'4. } }
  \tag #'left { \clef bass \split { es16( as) as-. as-. as-. as-. } { <as, es>4. } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'16( g') g'16.( f'32 g'16. es'32) } { <des' es'>4. } }
  \tag #'left { \clef bass \split { as16( g) g16.( f32 g16. es32) } { <bes, es>4. } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4( bes'8) } { r8 es' <bes es'> } }
  \tag #'left { \clef bass \split { as4 es8 } { r8 c g, } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { des''16.[( c''32) bes'8]-. \acciaccatura { c''8 } bes'32( a' bes' c'') } { <c' es' as'>8 <bes es' g'> s } }
  \tag #'left { \clef bass <as, es>8 <es, es> r }
  \tag #'dynamics { s8-\sf s8 s8 }
  |

  \tag #'right { \clef treble <as' des''>4( <as' c''>8 }
  \tag #'left { \clef bass f8( f' es' }
  \tag #'dynamics { s4.-\cresc }
  |

  \tag #'right { \clef treble <as' bes' f''>8 <g' bes'> <as' es''>) }
  \tag #'left { \clef bass d'8 des' c') }
  \tag #'dynamics { s4 s8\! }
  |

  \tag #'right { \clef treble \acciaccatura { bes'8 } as'32[( g' as' bes']) <es' as' c''>8( <des' g' bes'> }
  \tag #'left { \clef bass r8 es( es,) }
  \tag #'dynamics { s4.\p }
  |

  \tag #'right { \clef treble <c' as'>8) r8 r }
  \tag #'left { \clef bass as,8[_. as,,]_. f'~ }
  \tag #'dynamics { s4 s8-\sf }
  |

  \tag #'right { \clef treble <a' c''>8( <g' bes'> <a' c''> }
  \tag #'left { \clef bass f'4 es'8 }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <bes' des''>8 <des'' f''>) r }
  \tag #'left { \clef bass es'16[( des' c' bes]) es'8~ }
  \tag #'dynamics { s4 s8-\sf }
  |

  \tag #'right { \clef treble <g' bes'>8( <f' as'> <g' bes'> }
  \tag #'left { \clef bass es'4 des'8 }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as' c''>8[ <c'' es''>]) <es' es''>~-> }
  \tag #'left { \clef bass des'16( c' bes as) r8 }
  \tag #'dynamics { s4.}
  |

  \tag #'right { \clef treble <es' es''>8( <d' d''> <e' e''> }
  \tag #'left { \clef bass \split { c'8( b <bes des'> } { as4( g8 } }
  \tag #'dynamics { s4.-\cresc }
  |

  \tag #'right { \clef treble \split { <f' f''>8[ <g' g''>]) as''16.( f''32) } { s4 as'8 } }
  \tag #'left { \clef bass \split { c'8) c' c' } { as8 e f16 as) } }
  \tag #'dynamics { s4 s16 s16\! }
  |

  \tag #'right { \clef treble
    \splitThree
      { es''4( d''8)\trill }
      { \once \override NoteColumn.force-hshift = #0.5 g'8 bes' s }
      { \once \override NoteColumn.force-hshift = #0.5 g'4( <f' as'>8) }
  }
  \tag #'left { \clef bass <bes, bes>4( <b, b>8 }
  \tag #'dynamics { s4.-\p }
  |

  \tag #'right { \clef treble \split { es''4( g''16. f''32) } { <es' g'>8 c'' <f' c''> } }
  \tag #'left { \clef bass <c c'>8 <as, as> <a, a>) }
  \tag #'dynamics { s4-\cresc s8\!-\sf }
  |

  \tag #'right { \clef treble
    \splitThree
      { es''4( \afterGrace d''8)\trill { c''16 d'' } }
      { \once \override NoteColumn.force-hshift = #0.5 g'8 bes' s }
      { \once \override NoteColumn.force-hshift = #0.5 g'4( <f' as'>8) }
  }
  \tag #'left { \clef bass <bes, bes>4 <bes,, bes,>8 }
  \tag #'dynamics { s4.-\p }
  |

  \tag #'right { \clef treble \split { es''8-.( es''-. es''-.) } { <es' g'>8( <d' as'> <des' bes'>) } }
  \tag #'left { \clef bass \split { es8 es es } { es,8( f, g,) } }
  \tag #'dynamics { s4-\cresc s16 s16\! }
  |

  \tag #'right { \clef treble \split { es'16( as') as'-. as'-. as'-. as'-. }  { <c' es'>4. } }
  \tag #'left { \clef bass \split { es16( as) as-. as-. as-. as-. } { <as, es>4. } }
  \tag #'dynamics { s4.-\p }
  |

  \tag #'right { \clef treble \split { as'16( g') g'16.( f'32 g'16. es'32) } { <des' es'>4. } }
  \tag #'left { \clef bass \split { as16( g) g16.( f32 g16. es32) } { <bes, es>4. } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4( bes'8) } { r8 es' <bes es'> } }
  \tag #'left { \clef bass \split { as4 es8 } { r8 c g, } }
  \tag #'dynamics { s4.-\cresc }
  |

  \tag #'right { \clef treble \split { des''16.( c''32) bes'8-. \acciaccatura { c''8 } bes'32[( a' bes' c'']) } { <c' es' as'>8 <bes es' g'> s } }
  \tag #'left { \clef bass <as, es>8 <es, es> r }
  \tag #'dynamics { s4\!-\sf s8-\p }
  |

  \tag #'right { \clef treble <des' des''>4( <c' c''>8 }
  \tag #'left { \clef bass f,8( <f as> <es as> }
  \tag #'dynamics { s4.-\cresc }
  |

  \tag #'right { \clef treble <f' f''>8 <bes bes'> <es' es''>) }
  \tag #'left { \clef bass <d as>8 <des g> <c as>) }
  \tag #'dynamics { s4 s16 s16\! }
  |

  \tag #'right { \clef treble \acciaccatura { bes'8 } as'32[( g' as' bes']) <es' as' c''>8( <des' g' bes'> }
  \tag #'left { \clef bass r8 es( es,) }
  \tag #'dynamics { s4.-\p }
  |

  \tag #'right { \clef treble <c' as'>8) r }
  \tag #'left { \clef bass as,8[_. as,,]_. }
  \tag #'dynamics { s4 }

  \bar "||"
  
  \break

  \mark \markup { \bold "Variation I" }
  \partial 8

  \tag #'right { \clef bass es8~ }
  \tag #'left { \clef bass r8 }
  \tag #'dynamics { s8 }
  |

  \tag #'right { \clef bass es32[( c es as] c'8-> as }
  \tag #'left { \clef bass <as,, es, as,>4.}
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass g32-.[) \clef treble des'( es' g'] des''8-> g' }
  \tag #'left { \clef bass <bes,, es, bes,>4. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble as'32-.[) es( as c']) es'8 <bes es'> }
  \tag #'left { \clef bass <c, es, c>4 <g, es>8 }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { <as es'>8 <g bes es'> \acciaccatura { c'8 } bes32[( a bes c']) } { des'16 c' s4 } }
  \tag #'left { \clef bass <as, es>8 <es, es> r }
  \tag #'dynamics { s8\sf s4 }
  |

  \tag #'right { \clef treble des'32-.[( des' f' as'] des''8-> c''16) r }
  \tag #'left { \clef bass \once \override Stem.direction = #down f,8-. <f as>( <es as> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 f'[( as' bes'] f''8 es''16) r }
  \tag #'left { \clef bass <d as>8 <des g> <c as>) }
  \tag #'dynamics { s8 s\sf s }
  |

  \tag #'right { \clef bass r32 des[( f as] <fes bes des'>8 <es as c'> }
  \tag #'left { \clef bass f,8( g, as, }
  \tag #'dynamics { s8 s\< s16 s\! }
  |

  \tag #'right { \clef bass \split { <fis a>8 <g bes>16) r } { es4 } es8~ }
  \tag #'left { \clef bass es,4) r8 }
  \tag #'dynamics { s4 s8\p }
  |

  \tag #'right { \clef bass es32[( c es as] c'8-> as }
  \tag #'left { \clef bass <as,, es, as,>4. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass g32[-.) \clef treble des'( es' g'] des''8-> g' }
  \tag #'left { \clef bass <bes,, es, bes,>4. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'32-.[) es( as c']) es'16-. es'-. es'-. es'-. } { s4 bes8( } }
  \tag #'left { \clef bass \split { \once \override NoteColumn.force-hshift = #0.5 \once \override Stem.length = #6 c,8 es16[-. es-. es-. es]-. } { c4 g,8 } }
  \tag #'dynamics { s8 s\cresc s }
  |

  \tag #'right { \clef treble \split { <as es'>8 <g bes es'> \acciaccatura { c'8 } bes32[( a bes c']) } { des'16^\sf c') s4 } }
  \tag #'left { \clef bass <as, es>8 <es, es> r }
  \tag #'dynamics { s8\! s s\p }
  |

  \tag #'right { \clef treble des'32[-. des'( f' as'] des''8-> c''16) r }
  \tag #'left { \clef bass f,8-. <f as>( <es as> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 f''[( as'' bes''] f'''8 es'''16) r }
  \tag #'left { \clef bass <d as>8 <des g> <c as>) }
  \tag #'dynamics { s8 s\sf s }
  |

  \tag #'right { \clef treble 
    <<
      { \voiceOne r32 c'32[( es' as'] c''8.^\sf bes'16 }
      \new Voice { \voiceTwo
        s16.
        \once \override Stem.direction = #down as'32_~
        <es' as'>8[ <des' g'>8]
      }
      \new Voice { \voiceThree
        s16
        
        \once \override Stem.direction = #down
        es'16_~
        
        \once \override NoteColumn.ignore-collision = ##t
        \once \override NoteColumn.force-hshift = #0
        \once \omit Stem
        \once \omit Flag
        es'8\noBeam

        s8
      }
    >>
    \oneVoice
  }
  \tag #'left { \clef bass es4 es,8( }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <c' as'>8) r4 }
  \tag #'left { \clef bass as,8[-.) as,,]-. f'~ }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <a' c''>8( <g' bes'> <a' c''> }
  \tag #'left { \clef bass f'32[ f a c'] f'8.(_\sf es'16) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <bes' des''>8 <des'' f''>) r16 <bes' des''>32( <as' c''>) }
  \tag #'left { \clef bass es'32[( des' c' bes] a[ bes des' bes]) bes,8 }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <g' bes'>8( <f' as'> <g' bes'> }
  \tag #'left { \clef bass es'32[ es g bes] es'8.(_\sf des'16) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as' c''>8 <c'' es''>) r16 <es' es''>~ }
  \tag #'left { \clef bass des'32[( c' bes as] g[ as c' as]) as,8 }
  \tag #'dynamics { s4 s16 s\sf }
  |

  \tag #'right { \clef treble <es' es''>32 es'[( es'' es']) r d'( d'' d') r e'( e'' e') }
  \tag #'left { \clef bass <as c'>8( <as b> <g bes des'> }
  \tag #'dynamics { s16\p s\cresc s4 }
  |

  \tag #'right { \clef treble r32 f'( f'' f') r g'( g'' g') r as'( as'' as') }
  \tag #'left { \clef bass <as c'>8 <e c'> <f c'>) }
  \tag #'dynamics { s4 s16. s32\! }
  |

  \tag #'right { \clef treble <g' bes' es''>4 <f' as' d''>8 }
  \tag #'left { \clef bass r32 bes,,[-. es,-. g,]-. bes,[-. es-. g-. a]-. b8 }
  \tag #'dynamics { s4\p s8\sf }
  |

  \tag #'right { \clef treble <es' g' es''>4 <f' c'' f''>8 }
  \tag #'left { \clef bass r32 c,[-. es,-. g,]-. c[-. es-. g-. c']-. a8 }
  \tag #'dynamics { s4 s8\sf }
  |

  \tag #'right { \clef treble <g' bes' es''>4  \afterGrace <f' as' d''>8\trill { c''16 d'' } }
  \tag #'left { \clef bass r32 bes,,[-. es,-. g,]-. bes,[-. es-. g-. a]-. bes16( bes,) }
  \tag #'dynamics { s4 s8\sf }
  |

  \tag #'right { \clef treble <es' g' es''>32-. es'[( g' es'']) r d'( as' es'') r des'( bes' es'') }
  \tag #'left { \clef bass es16( es, f, es, g, es,) }
  \tag #'dynamics { s4\cresc s16. s32\! }
  |

  \tag #'right { \clef bass c'32[ c( es as] c'8-> as }
  \tag #'left { \clef bass <as,, es, as,>4. }
  \tag #'dynamics { s4.\p }
  |

  \tag #'right { \clef bass g32[-.) \clef treble des'( es' g'] des''8-> g' }
  \tag #'left { \clef bass <bes,, es, bes,>4. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'32-.[) es( as c']) es'16-. es'-. es'-. es'-. } { s4 bes8( } }
  \tag #'left { \clef bass \split { \once \override NoteColumn.force-hshift = #0.5 \once \override Stem.length = #6 c,8 es16[-. es-. es-. es]-. } { c4 g,8 } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { <as es'>8 <g bes es'> \acciaccatura { c'8 } bes32[( a bes c']) } { des'16^\sf c') s4 } }
  \tag #'left { \clef bass <as, es>8 <es, es> r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble des'32[-.( des' f' as'] des''8-> c''16) r }
  \tag #'left { \clef bass \once \override Stem.direction = #down f,8-. <f as>( <es as> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 f''[( as'' bes''] f'''8 es'''16) r }
  \tag #'left { \clef bass <d as>8 <des g bes> <c as c'>) }
  \tag #'dynamics { s8 s4-\sf }
  |

  \tag #'right { \clef treble 
    <<
      { \voiceOne r32 c'32[( es' as'] c''8.^\sf bes'16 }
      \new Voice { \voiceTwo
        s16.
        \once \override Stem.direction = #down as'32_~
        <es' as'>8[ <des' g'>8]
      }
      \new Voice { \voiceThree
        s16
        
        \once \override Stem.direction = #down
        es'16_~
        
        \once \override NoteColumn.ignore-collision = ##t
        \once \override NoteColumn.force-hshift = #0
        \once \omit Stem
        \once \omit Flag
        es'8\noBeam

        s8
      }
    >>
    \oneVoice
  }
  \tag #'left { \clef bass es4 es,8 }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <c' as'>8) r }
  \tag #'left { \clef bass as,8[ as,,] }
  \tag #'dynamics { s4 }

  \bar "||"

  \break

  \mark \markup { \bold "Variation II" }
  \partial 8

  \tag #'right { \clef treble r32 <c' es'>[ r <c' es'>] }
  \tag #'left { \clef bass <es, es>16 <es, es> }
  \tag #'dynamics { s8 }
  |

  \tag #'right { \clef treble r32 <c' es'>[ r <c' es'> r <c' es'> r <c' es'> r <c' es'> r <c' es'>] }
  \tag #'left { \clef bass <es, es>16( <as, as>) <as, as>-. <as, as>-. <as, as>-. <as, as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <bes des' es'>[ r <bes des' es'> r <bes des' es'> r <bes des' es'> r <bes des' es'> r <bes des' es'>] }
  \tag #'left { \clef bass <as, as>16( <g, g>) <g, g>-. <f, f>-. <g, g>-. <es, es>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <c' es'>[ r <c' es'> r <c' es' as'> r <c' es' as'> r <des' es' g'> r <des' es' g'>] }
  \tag #'left { \clef bass <es, es>16-. <as, as>-. <es, es>-. <as, as>-. <es, es>-. <bes, bes>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' as'>[ r <es' as'> r <es' g'> r <es' g'>] r <es' ges' as'>[ r <es' ges' as'>] }
  \tag #'left { \clef bass <es, es>16-. <c c'>-. <es, es>-. <bes, bes>-. \acciaccatura { c'8 } bes32[( a bes c']) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <f' as'>[ r <f' as'> r <as' as''> r <as' as''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass des16-. des'-. f-. des'-. es-. c'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <as' as''>[ r <as' as''> r <g' g''> r <g' g''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass d16-. f'-. des-. bes-. c-. es'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <des'' des'''>[ r <f' f''> r <fes' fes''> r <es' es''> r <es' es''> r <es' es''>] }
  \tag #'left { \clef bass f,16-. as-. g,-. des'-. as,-. c'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' fis' es''>[ r <es' fis' es''> r <es' g' es''> r <es' g' es''>] r <es' es''>[ r <es' es''>] }
  \tag #'left { \clef bass es,16-. a-. es,-. bes-. <es, es>[ <es, es>] }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' c'' es''>[ r <es' c'' es''> r <es' c'' es''> r <es' c'' es''> r <es' c'' es''> r <es' c'' es''>] }
  \tag #'left { \clef bass <es, es>16( <as, as>) <as, as>-. <as, as>-. <as, as>-. <as, as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' des'' es''>[ r <es' des'' es''> r <es' des'' es''> r <es' des'' es''> r <es' des'' es''> r <es' g' es''>] }
  \tag #'left { \clef bass <bes, as>16( <bes, g>) <bes, g>-. <bes, f>-. <bes, g>-. <bes, es>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' as' es''>[ r <es' c'' es''> r <es' as' es''> r <es' c'' es''> r <es' bes' es''> r <es' des'' es''>] }
  \tag #'left { \clef bass <c es>16-. as-. <c es>-. as-. <g, es>-. bes-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' as' c'' es''>[ r <es' as' c'' es''> r <es' g' bes' es''> r <es' g' bes' es''>] r <es' ges' as' es''>[ r <es' ges' as' es''>] }
  \tag #'left { \clef bass <as, es>16-. c'-. <es, es>-. bes-. \acciaccatura { c'8 } bes32[( a bes c']) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <f' as' f''>[ r <f' as' f''> r <as' as''> r <as' as''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass des16-. des'-. f-. des'-. es-. c'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <as' as''>[ r <as' as''> r <g' g''> r <g' g''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass d16-. f'-. des-. bes-. c-. es'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' c'' es''>[ r <es' c'' es''> r <es' as' c'' es''> r <es' as' c'' es''> r <des' es' g'> r <des' es' g'>] }
  \tag #'left { \clef bass es16-. as-. es,-. c'-. es,-. bes-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <c' es' as'>[ r <c' es' as'>] r8 r32 <f' f''>[ r <f' f''>] }
  \tag #'left { \clef bass as,16[-. as]-. as,,8 a,16[-. c']-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <f' f''>[ r <f'' f'''> r <e'' e'''> r <e'' e'''> r <es'' es'''> r <es'' es'''>] }
  \tag #'left { \clef bass a,16-. c'-. g,-. bes-. a,-. c'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <des'' des'''>[ r <des'' des'''> r <bes' bes''> r <bes' bes''>] r <f' des'' f''>[ r <fes' des'' fes''>] }
  \tag #'left { \clef bass bes,16[-. des'-. des-. f']-. <bes,, bes,>[( <as,, as,>] }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' des'' es''>[ r <es'' es'''> r <d'' d'''> r <d'' d'''> r <des'' des'''> r <des'' des'''>] }
  \tag #'left { \clef bass <g,, g,>16) bes-. f,-. as-. g,-. bes-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <c'' c'''>[ r <c'' c'''> r <as' as''> r <as' as''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass as,16-. c'-. c-. es'-. c[-. es]-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <as' as''>[ r <as' as''> r <as' as''> r <as' as''> r <g' g''> r <g' g''>] }
  \tag #'left { \clef bass c16-. es-. b,-. d-. bes,-. e-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <c'' c'''>[ r <c'' c'''> r <bes' c'' e''> r <bes' c'' e''> r <as' c'' f''> r <as' c'' f''>] }
  \tag #'left { \clef bass as,16-. f g,-. g-. f,[ as32( f]) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <g' g''>[ r <g' g''> r <g' g''> r <g' g''> r <as' f'' as''> r <as' f'' as''>] }
  \tag #'left { \clef bass bes,16-. es-. bes,-. es-. b,-. d-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <g' es'' g''>[ r <g' es'' g''> r <g' es'' g''> r <g' es'' g''> r <c'' es'' c'''> r <c'' es'' c'''>] }
  \tag #'left { \clef bass c16-. es-. c-. es-. a,[ g32( f]) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <bes' es'' g'' bes''>[ r <bes' es'' g'' bes''> r <g' bes' es''> r <g' bes' es''> r <as' bes' f''> r <as' bes' f''>] }
  \tag #'left { \clef bass bes,16-. es-. bes,-. es-. bes,,-. d-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <g' bes' es''>[ r <g' bes' es''> r <es' as' d''> r <es' as' d''> r <es' bes' des''> r <es' bes' des''>] }
  \tag #'left { \clef bass es,16-. es-. f,-. es-. g,-. es-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' as' c''>[ r <es' as' c'' es''> r <es' as' c'' es''> r <es' as' c'' es''> r <es' as' c'' es''> r <es' as' c'' es''>] }
  \tag #'left { \clef bass <as, es>16( <as, as>) <as, as>-. <as, as>-. <as, as>-. <as, as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' bes' des'' es''>[ r <es' bes' des'' es''> r <es' bes' des'' es''> r <es' bes' des'' es''> r <es' bes' des'' es''> r <es' bes' des'' es''>] }
  \tag #'left { \clef bass <as, as>16( <g, g>) <g, g>-. <f, f>-. <g, g>-. <es, es>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' as' c'' es''>[ r <es' as' c'' es''> r <es' as' c'' es''> r <es' as' c'' es''> r <es' g' des'' es''> r <es' g' es''>] }
  \tag #'left { \clef bass <es, es>16-. <as, as>-. <es, es>-. <as, as>-. <es, es>-. <bes, bes>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' as' es''>[ r <es' as' es''> r <es' g' es''> r <es' g' es''> r <es' ges' as' es''> r <es' ges' as' es''>] }
  \tag #'left { \clef bass <es, es>16-. <c c'>-. <es, es>-. <bes, bes>-. \acciaccatura { c'8 } bes32[( a bes c']) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <f' as' f''>[ r <f' as' f''> r <as' as''> r <as' as''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass des16-. des'-. f-. des'-. es-. c'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <as' as''>[ r <as' as''> r <g' g''> r <g' g''> r <as' as''> r <as' as''>] }
  \tag #'left { \clef bass d16-. f'-. des-. bes-. c-. es'-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <es' c'' es''>[ r <es' c'' es''> r <es' as' c'' es''> r <es' as' c'' es''> r <des' es' g'> r <des' es' g'>] }
  \tag #'left { \clef bass es16-. as-. es,-. c'-. es,-. bes-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble r32 <c' es' as'>[ r <c' es' as'>] r8 }
  \tag #'left { \clef bass as,16[-. as]-. as,,8 }
  \tag #'dynamics { s4 }

  \bar "||"

  \break

  \mark \markup { \bold "Variation III" }
  \key as \minor
  \partial 8

  \tag #'right { \clef bass
    es16 es~ }
  \tag #'left { \clef bass r8 }
  \tag #'dynamics { s8 }
  |

  \tag #'right { \clef bass es16 as8 as as16~ }
  \tag #'left { \clef bass <as, ces>8 <as, ces> <as, ces> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass as16 g8 g g16~ }
  \tag #'left { \clef bass <bes, des>8 <bes, des> <bes, des> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass g16 as8 as as16~ }
  \tag #'left { \clef bass <ces es>8 <ces es> <ces es> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass as16 beses8 beses beses16~ }
  \tag #'left { \clef bass <des fes>8 <des fes> <des fes> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass beses16 c'8 c' c'16~ }
  \tag #'left { \clef bass <es ges>8 <es ges beses> <es ges beses> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass c'16 des'8 des' des'16~ }
  \tag #'left { \clef bass <fes as>8 <fes as> <fes as> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass des'16 d'8 d' d'16~ }
  \tag #'left { \clef bass <f ces'>8( <f bes> <f as>) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass d'8( es') \clef treble <es es'>16[ <es es'>~] }
  \tag #'left { \clef bass \split { as8 g s } { es4 s8 } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <es es'>16 <as as'>8 <as as'> <as as'>16~ }
  \tag #'left { \clef bass as,,8 <as, ces> <as, ces> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as as'>16 <g g'>8 <g g'> <g g'>16~ }
  \tag #'left { \clef bass bes,,8 <bes, des> <bes, des> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <g g'>16 <as as'>8 <as as'> <as as'>16~ }
  \tag #'left { \clef bass ces,8 <ces es> <ces es> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as as'>16 <beses beses'>8 <beses beses'> <beses beses'>16~ }
  \tag #'left { \clef bass des,8 <des fes> <des fes> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <beses beses'>16 <c' c''>8 <c' c''> <c' c''>16~ }
  \tag #'left { \clef bass es,8 <es ges beses> <es ges beses> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <c' c''>16 <des' des''>8 <des' des''> <d' d''>16~ }
  \tag #'left { \clef bass fes,8 <fes as> <f as ces'> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <d' d''>16 <es' es''>8 <es' es''> <es' es''>16 }
  \tag #'left { \clef bass <es as ces'>8 <es, as, ces es> <es, g, bes, es> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r s } { s4 beses'8~ } }
  \tag #'left { \clef bass <as, as>8-. as,,-. r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \splitThree { <es'' ges''~>4. } { s8 as' c'' } { beses'8 as'4~ } }
  \tag #'left { \clef bass r8 c'( as }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \splitThree { ges''8 fes'' r } { des''4 s8 } { as'4 fes'8~ } }
  \tag #'left { \clef bass des'8 des) r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \splitThree { <bes' des''~>4. } { s8 es' g' } { fes'8 es'4~ } }
  \tag #'left { \clef bass r8 g( es }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \splitThree { des''8( ces'') <ces' ces''>16[-. <ces' ces''>~]} { as'4 s8 } { es'4 s8 } }
  \tag #'left { \clef bass as8 as,) r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <ces' ces''>16 <bes bes'>8 <bes bes'>16 <as' as''>[ <as' as''>~] }
  \tag #'left { \clef bass d,8 <d f> <d bes> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as' as''>16 <ges' ges''>8 <ges' ges''>16 <f' f''>[ <f' f''>~] }
  \tag #'left { \clef bass es,8 <es bes> <as, as> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <f' f''>16 <es' es''>8 <es' es''>16 <d' d''>[ <d' d''>~] }
  \tag #'left { \clef bass bes,,8 <bes, ges> <bes,, bes,> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <d' d''>16 <es' es''>8 <es' es''>16 <f' f''>[ <f' f''>~] }
  \tag #'left { \clef bass <ces, ces>8 <ces ges> <a,, a,> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <f' f''>16 <es' es''>8 <es' es''>16 <d' d''>[ <d' d''>~] }
  \tag #'left { \clef bass <bes,, bes,>8 <bes, es ges> <bes,, bes,> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <d' d''>16 <es' es''>8 <es es'>16 <es es'>[ <es es'>~] }
  \tag #'left { \clef bass <es, es>8( <des, des> <bes,, bes,>) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <es es'>16 <as as'>8 <as as'> <as as'>16~ }
  \tag #'left { \clef bass as,,8 <as, ces> <as, ces> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as as'>16 <g g'>8 <g g'> <g g'>16~ }
  \tag #'left { \clef bass bes,,8 <bes, des> <bes, des> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <g g'>16 <as as'>8 <as as'> <as~ as'>16~ }
  \tag #'left { \clef bass ces,8 <ces es> <ces es> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as as'>16 <beses beses'>8 <beses beses'> <beses beses'>16~ }
  \tag #'left { \clef bass des,8 <des fes> <des fes> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <beses beses'>16 <c' c''>8 <c' c''> <c' c''>16~ }
  \tag #'left { \clef bass es,8 <es ges beses> <es ges beses> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <c' c''>16 <des' des''>8 <des' des''> <d' d''>16~ }
  \tag #'left { \clef bass fes,8 <fes as> <f as ces'> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <d' d''>16 <es' es''>8 <es' es''> <es' es''>16 }
  \tag #'left { \clef bass <es as ces'>8 <es, as, ces es> <es, g, bes, es> }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble as'8 r }
  \tag #'left { \clef bass <as, as>8-.[ as,,-.] }
  \tag #'dynamics { s4 }

  \bar "||"

  \break

  \mark \markup { \bold "Variation IV" }
  \key as \major
  \partial 8

  \tag #'right { \clef treble es'8~ }
  \tag #'left { \clef bass r8 }
  \tag #'dynamics { s8 }
  |

  \tag #'right { \clef treble es'8[( as']-.) as''~ }
  \tag #'left { \clef bass <as, c>8-. r <as c'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble as''8[( g'']-.) g'~ }
  \tag #'left { \clef bass <bes des'>8-. r <bes, des>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble g'8[( as']-.) <as'' c'''>~ }
  \tag #'left { \clef bass <c es>8-. r \clef treble <c' es'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as'' c'''>8[( <g'' bes''>]-.) <f' des''^~>( }
  \tag #'left { \clef treble <d' f'>8[-. <es' g'>]-. \clef bass <f as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <fes' des''>8[ <es' c''>]-.) <f'' f'''>~ }
  \tag #'left { \clef bass <g bes>8[-. <as c'>]-. \clef treble <d' as'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <f'' f'''>8[( <es'' es'''>]-.) \clef bass <as ces' d'> }
  \tag #'left { \clef treble <des' g' bes'>8[-. <c' as' c''>]-. \clef bass f,( }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass <fes bes des'>8 <es as c'> <f as ces'>~ }
  \tag #'left { \clef bass g,8 as, d, }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass <f as ces'>8[ <g bes>] <es es'>~ }
  \tag #'left { \clef bass es,8 es) r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass <es es'>8[( <as as'>]) \clef treble <as' as''>~ }
  \tag #'left { \clef bass <as,, as,>8 r <as c'>16-. <as c'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as' as''>8[( <g' g''>]) <g g'>~ }
  \tag #'left { \clef bass <bes des'>8-. r <bes, des>16-. <bes, des>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <g g'>8[( <as as'>]) <as'' c'''>~ }
  \tag #'left { \clef bass <c es>8-. r \clef treble <c' es'>16-. <c' es'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as'' c'''>8[( <g'' bes''>]) <f' des''~>( }
  \tag #'left { \clef treble <d' f'>16[-. <d' f'>-. <es' g'>8]-. \clef bass <f as>16-. <f as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <fes' des''>8[ <es' c''>]) <f'' f'''>~ }
  \tag #'left { \clef bass <g bes>16[-. <g bes>-. <as c'>8]-. \clef treble <d' as'>16-. <d' as'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <f'' f'''>8[( <es'' es'''>])\split { as'~ } { <ces' d'>8~ } }
  \tag #'left { \clef treble <des' g' bes'>16[-. <des' g' bes'>-. <c' as' c''>8]-. \clef bass f16-. f-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4( g'8 } { <ces' d'>8 <c' es'> <bes des'> } }
  \tag #'left { \clef bass es8-. r es,16-. es,-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8) } { <as c'>8 } r8 <ges ges'>~ }
  \tag #'dynamics { s4. }
  \tag #'left { \clef bass as,8[-. as,,]-. <bes, des>-. }
  |

  \tag #'right { \clef treble <ges ges'>8[( <f f'>]) <es'' es'''>~ }
  \tag #'left { \clef bass <a, c>8-. r <a f'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <es'' es'''>8[( <des'' des'''>]) <fes fes'>~ }
  \tag #'left { \clef bass <bes f'>8-. r <as, ces>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <fes fes'>8[( <es es'>]) <des'' des'''>~ }
  \tag #'left { \clef bass <g, bes,>8-. r <g es'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <des'' des'''>8[( <c'' c'''>]) \clef bass \split { c'8~ } { <c f>8 } }
  \tag #'left { \clef bass <as es'>8-. r as,-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass \split { c'8[( b]) } { <d f>4 } \clef treble \split { bes'8~( } { \once \override NoteColumn.force-hshift = #0.5 <des' e' g'>8~ } }
  \tag #'left { \clef bass g,8[-. g,,]-. c-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { bes'8[ a']) f''~ } { \once \override NoteColumn.force-hshift = #0.5 <des' e' g'>8[ \once \override NoteColumn.force-hshift = #0.5 <c' f'>] <f' c''>] } }
  \tag #'left { \clef bass f8[-. f,]-. a-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { f''8[( es'']) } { <g' bes'>4 } \clef bass \split { d'8~ } { <f as>8~ } }
  \tag #'left { \clef bass bes8[-. bes,]-. b,-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass \split { d'8[( es']) } { <f as>8[( <es g>]) } \clef treble \split { f''8~ } { <f' c''>8 } }
  \tag #'left { \clef bass c8[-. c,]-. a8-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { f''8[( es'']) } { <g' bes'>4 } \clef bass \split { d'8 } { <f as>8 } }
  \tag #'left { \clef bass bes8[-. bes,]-. bes,,-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass \split { es'8 es' es'~ } { <es g>8 <f as> <g bes> } }
  \tag #'left { \clef bass es,16[-. des32 c] bes,[ as, g, f,] es,[ des, c, bes,,] }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef bass \split { es'8[( as']) } { <as c'>8 s8 } \clef treble <as' as''>~ }
  \tag #'left { \clef bass as,,8 r <as c'>16-. <as c'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as' as''>8[( <g' g''>]) <g g'>~ }
  \tag #'left { \clef bass <bes des'>8-. r <bes, des>16-. <bes, des>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <g g'>8[( <as as'>]) <as'' c'''>~ }
  \tag #'left { \clef bass <c es>8-. r \clef treble <c' es'>16-. <c' es'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <as'' c'''>8[( <g'' bes''>]) <f' des''^~>( }
  \tag #'left { \clef treble <d' f'>16[-. <d' f'>-. <es' g'>8]-. \clef bass <f as>16-. <f as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <fes' des''>8[ <es' c''>]) <f'' f'''>~ }
  \tag #'left { \clef bass <g bes>16[-. <g bes>-. <as c'>8]-. \clef treble <d' as'>16-. <d' as'>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble <f'' f'''>8[( <es'' es'''>]) \split { as'8~ } { <ces' d'>8~ } }
  \tag #'left { \clef treble <des' g' bes'>16[-. <des' g' bes'>-. <c' as' c''>8]-. \clef bass f16-. f-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4( g'8 } { <ces' d'>8 <c' es'> <bes des'> } }
  \tag #'left { \clef bass es8-. r es,16-. es,-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8) } { <as c'>8 } r8 }
  \tag #'left { \clef bass as,8[-. as,,]-. }
  \tag #'dynamics { s4 }

  \bar "||"

  \break

  \mark \markup { \bold "Variation V" }
  \partial 8
  
  \set Timing.beamExceptions = \beamExceptions {
    \tuplet 3/2 { 16[ 16 16] }
    \tuplet 3/2 { 16[ 16 16] }
    \tuplet 3/2 { 16[ 16 16] } |
  }

  \tag #'right { \clef treble \tuplet 3/2 { c'16( f' es' } }
  \tag #'left { \clef bass r8 }
  \tag #'dynamics { s8\p }
  |

  \tag #'right { \clef treble \tuplet 3/2 { c'16 f' es' } \tuplet 3/2 { c'16 bes' as' } \tuplet 3/2 { c'16 bes' as') } }
  \tag #'left { \clef bass \tuplet 3/2 { as,16( es as } \tuplet 3/2 { as,16 es as } \tuplet 3/2 { as,16 es as) } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { des'16( as' g' } \tuplet 3/2 { des'16 g' f' } \tuplet 3/2 { des'16 g' es') } }
  \tag #'left { \clef bass \tuplet 3/2 { bes,16( es bes } \tuplet 3/2 { bes,16 es bes } \tuplet 3/2 { bes,16 es bes) } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { es'16( bes' as' } \tuplet 3/2 { es'16 bes' as' } \tuplet 3/2 { es'16 c'' bes') } }
  \tag #'left { \clef bass \tuplet 3/2 { c16 es c' } \tuplet 3/2 { c16 es c' } \tuplet 3/2 { g,16 es g } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { es'16( <bes' des''> <as' c''> } \tuplet 3/2 { es'16 <as' c''> <g' bes'>) } \acciaccatura { c''8 } bes'32( a' bes' c'') }
  \tag #'left { \clef bass \tuplet 3/2 { as,16 es as } \tuplet 3/2 { es,16 es es } \tuplet 3/2 { ges,16 es ges } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { as'16( es'' des'' } \tuplet 3/2 { as'16 es'' des'' } \tuplet 3/2 { as'16 des'' c'') } }
  \tag #'left { \clef bass \tuplet 3/2 { f,16 f as } \tuplet 3/2 { f16( as des' } \tuplet 3/2 { es16 as c' } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { as'16( g'' f'' } \tuplet 3/2 { g'16 c'' bes' } \tuplet 3/2 { as'16 f'' es'') } }
  \tag #'left { \clef bass \tuplet 3/2 { d16 f bes } \tuplet 3/2 { des16 es bes } \tuplet 3/2 { c16 es as) } }
  \tag #'dynamics { s8 s4\cresc }
  |

  \tag #'right { \clef treble \tuplet 3/2 { as'16( es'' d'' } \tuplet 3/2 { fes'16 <c'' es''> <bes' des''> } \tuplet 3/2 { es'16 <bes' des''> <as' c''>) } }
  \tag #'left { \clef bass \tuplet 3/2 { f,16 f as } \tuplet 3/2 { g,16 g bes } \tuplet 3/2 { as,16 as c' } }
  \tag #'dynamics { s4 s16. s32\! }
  |

  \tag #'right { \clef treble <fis' a'>8( <g' bes'>) es'32( es'') es'( es'') }
  \tag #'left { \clef bass \tuplet 3/2 { es,16 es es } \tuplet 3/2 { es16 f es } \tuplet 3/2 { des16 c bes, } }
  \tag #'dynamics { s4.\p }
  |

  \tag #'right { \clef treble \split { es'32( es'' f'' es'' as' es'' f'' es'' as' es'' f'' es'') } { es'8 as' as' } }
  \tag #'left { \clef bass as,32( es as es c es as es c es as es) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { f''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'') } { as'16( g') g'( f' g' es') } }
  \tag #'left { \clef bass bes,32( es g es des es bes es des es bes es) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'32( es'' f'' es'' as' es'' f'' es'' bes' es'' f'' es'') } { as'8 as'( bes') } }
  \tag #'left { \clef bass c32 es as es c es as es g, es g es }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { c''32( es'' f'' es'' bes' es'' f'' es'') \acciaccatura { c''8 } bes'32( a' bes' c'') } { <as' c''>8( <g' bes'>) s } }
  \tag #'left { \clef bass as,32 es as es es, es g es ges, es ges es }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { des''32( as'' bes'' as'' des'' as'' bes'' as'' c'' as'' bes'' as'' } { des''8 des''( c'' } }
  \tag #'left { \clef bass f,32 f as des' f( as des' as es as c' as) }
  \tag #'dynamics { s4.\cresc }
  |

  \tag #'right { \clef treble \split { f''32 as'' bes'' as'' bes' g'' as'' g'' es'' as'' bes'' as'') } { f''8 bes' es'') } }
  \tag #'left { \clef bass d32( f bes f des es bes es c es as es) }
  \tag #'dynamics { s4 s16. s32\! }
  |

  \tag #'right { \clef treble \split { as'32 es'' f'' es'' c'' es'' f'' es'' bes' es'' f'' es'' } { as'8 <as' c''> <g' bes'> } }
  \tag #'left { \clef bass es,32 c es as es, c es as es, des es g }
  \tag #'dynamics { s4.\p }
  |

  \tag #'right { \clef treble as'8 r e''32( f'') e''( f'') }
  \tag #'left { \clef bass as,32 c es as as,8 r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble f''16 f'''8-> e'''-> es'''16->~ }
  \tag #'left { \clef bass a32 f' c' f' g f' bes f' a f' c' f' }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble es'''32( des''' c''' bes'' a'' bes'' ges'' f'' es'' des'' c'' bes') }
  \tag #'left { \clef bass bes32 f' des' f' bes,8 r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble es''16 es'''8-> d'''-> des'''16->~ }
  \tag #'left { \clef bass g32 es' bes es' f es' as es' g es' bes es' }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble des'''32( c''' bes'' as'' g'' as'' d'' es'' b' c'' cis'' d'') }
  \tag #'left { \clef bass as32 es' c' es' as,8 r }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { es''8( d'' e'' } { r32 es'( as' es') r f'( as' f') r g'( des'' g') } }
  \tag #'left { \clef bass c16( c' b, b bes, bes) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { f''8 g'' as'') } { r32 as'( c'' as') r bes'( e'' bes') r c''( f'' c'') } }
  \tag #'left { \clef bass as,16( as g, g f, f) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { es''4 d''8 } { g'32( fis' g' fis' g' bes' as' g' f' as' g' f') } }
  \tag #'left { \clef bass bes,16( bes bes, bes b, b) }
  \tag #'dynamics { s4 s8\sf }
  |

  \tag #'right { \clef treble \split { es''4 f''8 } { es'32( f' g' as' bes' b' c'' b') c''( b' d'' c'') } }
  \tag #'left { \clef bass c16( c' as, as a, a) }
  \tag #'dynamics { s4 s8\sf }
  |

  \tag #'right { \clef treble \split { es''4 d''8 } { g'32 fis' g' fis' g' bes' as' g' f'( as' g' f') } }
  \tag #'left { \clef bass bes,16( bes bes, bes bes,, bes,) }
  \tag #'dynamics { s4 s8\sf }
  |

  \tag #'right { \clef treble \split { es''8( d'' des'') } { r32 es'( g' es') r es'( as' es') r es'( bes' es') } }
  \tag #'left { \clef bass es,16( es f, f g, g) }
  \tag #'dynamics { s4\cresc s16. s32\! }
  |

  \tag #'right { \clef treble \split { c''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'') } { es'16( as') as' as' as' as' } }
  \tag #'left { \clef bass as,32( es as es c es as es c es as es) }
  \tag #'dynamics { s4.\p }
  |

  \tag #'right { \clef treble \split { f''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'') } { as'16( g') g'( f' g' es') } }
  \tag #'left { \clef bass bes,32( es g es des es bes es des es bes es) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { f''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'' } { as'8 as'( bes' } }
  \tag #'left { \clef bass c32 es as es c es as es g, es g es }
  \tag #'dynamics { s4.\cresc }
  |

  \tag #'right { \clef treble \split { f''32 es'' f'' es'' f'' es'' f'' es'') \acciaccatura { c''8 } bes'32 a' bes' c'' } { <as' c''>8 <g' bes'>) s } }
  \tag #'left { \clef bass as,32 es as es es, es g es ges, es ges es }
  \tag #'dynamics { s4 s16 s16\! }
  |

  \tag #'right { \clef treble \split { des''32( as'' bes'' as'' bes'' as'' bes'' as'' bes'' as'' bes'' as'' } { des''8 des''( c'') } }
  \tag #'left { \clef bass f,32 f as des' f as des' as es as c' as }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { bes''32 as'' bes'' as'' as'' g'' as'' g'' bes'' as'' bes'' as'' } { f''8( bes' es'') } }
  \tag #'left { \clef bass d32 f bes f des es bes es c es as es }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { f''32 es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'' } { as'8 <as' c''> <g' bes'> } }
  \tag #'left { \clef bass es,32 c es as es, c es as es, des es g }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble as'16) es' es' es' es' es' }
  \tag #'left { \clef bass <as, c es as>8 r4 }
  \tag #'dynamics { s16 s16\p s4 }
  |

  \tag #'right { \clef treble \split { c''4( bes'16 as') } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <as, as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8[( g']) g'16.( as'32) } { <des' es'>16 <des' es'> <des' es'> <des' es'> <des' es'> <des' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <bes, bes>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { bes'8[ bes'] bes'16.( c''32) } { <des' es'>16 <des' es'> <des' es'> <des' es'> <des' es'> <des' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <g, g>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r r } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <as, as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { c''16-.( b'-. des''-. c''-. bes'-. as'-.) } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <as, as>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'16-.( g'-. g'-. fis'-. g'-. as'-.) } { <des' es'>16 <des' es'> <des' es'> <des' es'> <des' es'> <des' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <bes, bes>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { bes'16-.( a'-. bes' a'-. bes'-. c'') } { <des' es'>16 <des' es'> <des' es'> <des' es'> <des' es'> <des' es'> } }
  \tag #'left { \clef bass r8 <es, es>-. <g, g>-. }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r r16 a' } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass r8 es( as) }
  \tag #'dynamics { s4 s8\decresc }
  |

  \tag #'right { \clef treble \split { bes'8 r r16 c'' } { <des' es'>16 <des' es'> <des' es'> <des' es'> <des' es'> <des' es'> } }
  \tag #'left { \clef bass r8 es,( g,) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r r16 a' } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass r8 es( as) }
  \tag #'dynamics { s8 s4\!\calando }
  |

  \tag #'right { \clef treble \split { bes'8 r r16 c'' } { <des' es'>16 <des' es'> <des' es'> <des' es'> <des' es'> <des' es'> } }
  \tag #'left { \clef bass r8 es,( g,) }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4.~ } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass \split { s8 as,4~ } { r8 as,( es, } }
  \tag #'dynamics { s4.\!\pp }
  |

  \tag #'right { \clef treble \split { as'8 as' as' } { <c' es'>16 <c' es'> <c' es'> <c' es'> <c' es'> <c' es'> } }
  \tag #'left { \clef bass \split { as,8 as, as, } { c,8 es, c,) } }
  \tag #'dynamics { s4. }
  |

  \tag #'right { \clef treble \split { as'4.~ } { <c' es'>4.~ } }
  \tag #'left { \clef bass \split { as,4.~ } { as,,4.~ } }
  \tag #'dynamics { s4.\p }
  |

  \tag #'right { \clef treble \split { as'4 } { <c' es'>4 } }
  \tag #'left { \clef bass \split { as,4 } { as,,4 } }
  \tag #'dynamics { s4 }
  
  \set Timing.beamExceptions = #'()
  
  \bar "|."
}


secondMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t

  \mark \markup { \bold "Scherzo. Allegro molto" }
  \tempo 4 = 280

  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(3)

  \key as \major
  \accidentalStyle modern

  \tag #'right { \textMark \markup { \italic "La prima parte senza repetizione." } }

  \partial 4
  \tag #'right { \clef treble as'8[^( bes')] }
  \tag #'left { \clef bass r4 }
  \tag #'dynamics { s4\p }
  |

  \tag #'right { \clef treble \split { c''2( d''4) } { as'2. } }
  \tag #'left { \clef bass f'2.( }
  \tag #'dynamics { s2.\sf }
  |

  \tag #'right { \clef treble \split { es''2.~ } { g'2 bes'4 } }
  \tag #'left { \clef bass es'4) r g-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { es''4( f'') d''-. } { c''4( as') as'-. } }
  \tag #'left { \clef bass as4-. f-. bes-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { es''4 r des''8([ es'')] } { g'4 r r } }
  \tag #'left { \clef bass es4 r r }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { f''2( g''4) } { des''2. } }
  \tag #'left { \clef treble bes'2.( }
  \tag #'dynamics { s2.\sf }
  |

  \tag #'right { \clef treble \split { as''2.~ } { c''2 es''4 } }
  \tag #'left { \clef treble as'4) r c'-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { as''4( bes'') g''-. } { f''4( des'') des''-. } }
  \tag #'left { \clef treble des'4-. bes-. es'-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { as''4 r as'8([ bes')] } { c''4 r r } }
  \tag #'left { \clef treble as4 r r }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { c''4-. des''-. d''-. } { as'2. } }
  \tag #'left { \clef bass f'2. }
  \tag #'dynamics { s2.\sf }
  |

  \tag #'right { \clef treble \split { es''2.~ } { g'4-. as'-. bes'-. } }
  \tag #'left { \clef bass es'4-. f'-. g'-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { es''4 f''-. d''-. } { c''4-. as'-. as'-. } }
  \tag #'left { \clef bass as4-. f-. bes-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { es''4-. r des''8([ es'')] } { g'4-. r r } }
  \tag #'left { \clef bass es4-. r r }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { f''4-. ges''-. g''-. } { des''2. } }
  \tag #'left { \clef treble bes'2. }
  \tag #'dynamics { s2.\sf }
  |

  \tag #'right { \clef treble \split { as''2.~ } { c''4-. des''-. es''-. } }
  \tag #'left { \clef treble as'4-. bes'-. c''-. }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble \split { as''4 bes''-. g''-. } { f''4-. des''-. des''-. } }
  \tag #'left { \clef treble des'4-. bes-. es'-. }
  \tag #'dynamics { s2. }
  |

  \partial 2
  \tag #'right { \clef treble \split { as''4-. r } { c''4-. r } }
  \tag #'left { \clef treble as4-. r }
  \tag #'dynamics { s2 }
  |

  \repeat volta 2 {
    \partial 4
    \tag #'right { \clef treble <as c'>8([ <bes des'>)] }
    \tag #'left { \clef treble r4 }
    \tag #'dynamics { s4\p }
    |

    \tag #'right { \clef treble <c' es'>2( <des' f'>4 }
    \tag #'left { \clef bass as,,4-. as,-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <es' ges'>4)-. r <es' ges'>-. }
    \tag #'left { \clef bass as,,4-. as,-. r }
    \tag #'dynamics { s2 s4\f }
    |

    \tag #'right { \clef treble <ges' c''>4-. <c'' es''>-. <es'' ges''>~ }
    \tag #'left { \clef bass as,,4 as, as,, }
    \tag #'dynamics { s2 s4\sf }
    |

    \tag #'right { \clef treble <es'' ges''>4( <d'' f''>) <bes d'>8([ <c' es'>)] }
    \tag #'left { \clef bass a,,4 bes,, r }
    \tag #'dynamics { s2 s4\p }
    |

    \tag #'right { \clef treble <d' f'>2( <e' g'>4 }
    \tag #'left { \clef bass bes,,4-. bes,-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <f' as'>4)-. r <f' as'>-. }
    \tag #'left { \clef bass bes,,4-. bes,-. r }
    \tag #'dynamics { s2 s4\f }
    |

    \tag #'right { \clef treble <as' d''>4-. <d'' f''>-. <f'' as''>~ }
    \tag #'left { \clef bass bes,,4 bes, bes,, }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <f'' as''>4( <e'' g''>) <c' e'>8([ <d' f'>)] }
    \tag #'left { \clef bass b,,4 c, r }
    \tag #'dynamics { s2 s4\p }
    |

    \tag #'right { \clef treble <e' g'>2( <f' as'>4 }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <g' bes'>4-.) r <c' e'>8([ <d' f'>)] }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'dynamics { s2 s4\f }
    |

    \tag #'right { \clef treble <e' g'>4-. <c' e'>8([ <d' f'> <e' g'> <f' as'>)] }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'dynamics { s2.\sf }
    |

    \tag #'right { \clef treble <g' bes'>4-. <e' g'>8([ <f' as'> <g' bes'> <as' c''>)] }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'dynamics { s2.\sf }
    |

    \tag #'right { \clef treble <bes' des''>4-. r <g' bes'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'dynamics { s2.\p }
    |

    \tag #'right { \clef treble <e' g'>4-. r <g' bes'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <bes' des''>4-. r <g' bes'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' g'>4-. r <g' bes'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <g' bes' des''>2 <g' bes' c''>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'dynamics { s2.\decresc }
    |

    \tag #'right { \clef treble <g' bes' des''>2 <g' bes' c''>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <g' bes' des''>2 <g' bes' c''>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <g' bes' des''>2 <g' bes' c''>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' des''>2 <e' bes' c''>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' des''>2 <e' bes' c''>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' des''>2 <e' bes' c''>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' des''>2 <e' bes' c''>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' des''>4 r r }
    \tag #'left { \clef bass r4 g( g') }
    \tag #'dynamics { s2.\!\pp }
    |

    \tag #'right { \clef treble <e' bes' c''>4 r r }
    \tag #'left { \clef bass r4 g( g') }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' c''>4 r r }
    \tag #'left { \clef bass r4 g( g') }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' bes' c''>4 r r }
    \tag #'left { \clef bass r4 g-. as8([ bes)] }
    \tag #'dynamics { s2.\< }
    |

    \tag #'right { \clef treble as''8[ g'' as'' c''' bes'' as''] }
    \tag #'left { \clef bass \split { c'2( d'4 } { f2. } }
    \tag #'dynamics { s2.\sf }
    |

    \tag #'right { \clef treble g''8[ f'' es'' d'' c'' bes'] }
    \tag #'left { \clef bass \split { es'4) } { es4 } r <e e'>~_\sf }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble as'8[ g' as' c'' bes' as'] }
    \tag #'left { \clef bass <e e'>4( <f f'>) <d d'>-. }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble g'8[ es' g' as' bes' c''] }
    \tag #'left { \clef bass <es es'>4-. r des8([ es)] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble des''8[ c'' des'' f'' es'' des''] }
    \tag #'left { \clef bass \split { f2( g4 } { bes,2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble c''8[ bes' as' g' f' es'] }
    \tag #'left { \clef bass \split{ as4) } { as,4 } r <a, a>~_\sf }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble des'8[ c' des' f' es' des'] }
    \tag #'left { \clef bass <a, a>4( <bes, bes>) <g, g>-. }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble c'4 r as'8([ bes')] }
    \tag #'left { \clef bass as,8[ c des es f g] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <c' c''>2( <d' d''>4 }
    \tag #'left { \clef bass as8[ g as f bes as] }
    \tag #'dynamics { s2.\f }
    |

    \tag #'right { \clef treble <es' es''>4-.) r <e' e''>~-\sf }
    \tag #'left { \clef bass g8[ f es d c bes,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <e' e''>4( <f' f''>) <d' d''>-. }
    \tag #'left { \clef bass as,8[ g, as, c bes, as,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <es' es''>4 r des''8([ es'')] }
    \tag #'left { \clef bass g,8[ es, g, as, bes, c] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <f' f''>2( <g' g''>4 }
    \tag #'left { \clef bass des8[ c des bes, es des] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <as' as''>4)-. r <a' a''>~-\sf }
    \tag #'left { \clef bass c8[ bes, as, g, f, es,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <a' a''>4( <bes' bes''>) <g' g''>-. }
    \tag #'left { \clef bass des,8[ c, des, f, es, des,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <as' as''>4 r <c'' a'' c'''>~-\sf }
    \tag #'left { \clef bass c,8[ es, as, g, f, es,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <c'' a'' c'''>4( <des'' bes'' des'''>) <bes' g'' bes''>-. }
    \tag #'left { \clef bass des,8[ bes,, des, bes,, es, des,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <c'' as'' c'''>4 r <a' c'' a''>~-\sf }
    \tag #'left { \clef bass c,8[ es, as, g, f, es,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <a' c'' a''>4( <bes' des'' bes''>) <g' bes' g''>-. }
    \tag #'left { \clef bass des,8[ bes,, des, bes,, es, es,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <as' c'' as''>4-. r <bes' g'' bes''>-. }
    \tag #'left { \clef bass as,,8([ c, es, des, c, bes,,] }
    \tag #'dynamics { s2 s4-\cresc }
    |

    \tag #'right { \clef treble <c'' as'' c'''>4-. r <g' bes' g''>-. }
    \tag #'left { \clef bass as,,8[ c, es, des, c, bes,,] }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <as' c'' as''>4-. r <g bes g'>-. }
    \tag #'left { \clef bass as,,8[ c, es, des, c, bes,,] }
    \tag #'dynamics { s2 s4\!\ff }
    |

    \partial 2
    \tag #'right { \clef treble <as c' as'>4-. r }
    \tag #'left { \clef bass as,,4-.) r }
    \tag #'dynamics { s2 }
    |
  }
  \tag #'right { \textEndMark \markup { \italic "Fin" } }

  \key des \major
  \tag #'right {
    \textMark \markup {
      \column {
        \bold "Trio"
        \italic "sempre legato"
      }
    }
  }

  \repeat volta 2 {
    \partial 4
    \tag #'right { \clef treble as4( }
    \tag #'left { \clef bass r4 }
    \tag #'dynamics { s4\p }
    |

    \tag #'right { \clef treble <f' f>2 as4 }
    \tag #'left { \clef bass \split { des2( as,4 } { des,2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <es' es>2 as4 }
    \tag #'left { \clef bass \split { c2 as,4 } { c,2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <c' ges' ges>2 as4~ }
    \tag #'left { \clef bass \split { es2 as,4 } { es,2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <f' as f>2 des'4 }
    \tag #'left { \clef bass \split { des2 as,4 } { des,2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <as' as>2 des'4~ }
    \tag #'left { \clef bass \split { f2 des4~ } { f,2. } }
    \tag #'dynamics { s2 s4\< }
    |

    \tag #'right { \clef treble <des' bes' bes>2 <bes des' es'>4 }
    \tag #'left { \clef bass <ges, des ges>2 <f, f>4 }
    \tag #'dynamics { s2.\!\sf\> }
    |

    \tag #'right { \clef treble <bes des' es'>2) <bes des' es'>4 }
    \tag #'left { \clef bass <ges, ges>2) <g, g>4 }
    \tag #'dynamics { s2.\p }
    |

    \partial 2
    \tag #'right { \clef treble <c' es'>4 r }
    \tag #'left { \clef bass <as, as>4 r }
    \tag #'dynamics { s2 }
    |
  }

  \repeat volta 2 {
    \partial 4
    \tag #'right { \clef treble as'4( }
    \tag #'left { \clef bass r4 }
    \tag #'dynamics { s4 }
    |

    \tag #'right { \clef treble <c' c''>2 as'4 }
    \tag #'left { \clef bass \split { as2( es4 } { as,2.( } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <des' des''>2 g'4 }
    \tag #'left { \clef bass \split { bes2 es4 } { bes,2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <es' ges' es''>2 as'4 }
    \tag #'left { \clef bass \split { c'2 as4 } { c2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <f' f''>2 as'4 }
    \tag #'left { \clef bass \split { des'2 as4 } { des2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <f' f''>2 des''4 }
    \tag #'left { \clef bass \split { des'2 as4 } { des2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <ges' ges''>2 c''4 }
    \tag #'left { \clef bass \split { es'2 as4 } { es2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <as' ces'' as''>2 des''4 }
    \tag #'left { \clef bass \split { f'2 des'4 } { f2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble <bes' bes''>2 des''4 }
    \tag #'left { \clef bass \split { ges'2 des'4 } { ges2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble \split { bes''2 des''4 } { bes'2. } }
    \tag #'left { \clef bass \split { ges'2 des'4 } { ges2. } }
    \tag #'dynamics { s2.\< }
    |

    \tag #'right { \clef treble \split { ces'''2 des''4 } { ces''2. } }
    \tag #'left { \clef bass \split { f'2 des'4 } { f2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble \split { a''2 des''4 } { a'2. } }
    \tag #'left { \clef bass \split { f'2 des'4 } { f2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble \split { bes''2 des''4 } { bes'2. } }
    \tag #'left { \clef bass \split { ges'2 des'4 } { ges2. } }
    \tag #'dynamics { s2. }
    |

    \tag #'right { \clef treble \split { fes''2. } { bes'2~ <bes' des''>4 } }
    \tag #'left { \clef bass \split { fes'2~ <des' fes'>4 } { g2. } }
    \tag #'dynamics { s2.\!\sf\> }
    |

    \tag #'right { \clef treble \split { f''2.~ } { as'2~ <as' des''>4 } }
    \tag #'left { \clef bass \split { f'2 des'4 } { as2. } }
    \tag #'dynamics { s2.\p }
    |

    \tag #'right { \clef treble \split { f''4 ges'' es'' } { <ges' c''>2 <ges' c''>4 } }
    \tag #'left { \clef bass \split { as,2) as4 } { as,2.) } }
    \tag #'dynamics { s2. }
    |
  }
  \alternative {
    {
      \partial 2
      \tag #'right { \clef treble \split { des''4) } { f'4 } r }
      \tag #'left { \clef bass \split { des4 } { des4 } r }
      \tag #'dynamics { s2 }
    }
    {
      \tag #'right { \clef treble \split { des''4 } { f'4 } r r }
      \tag #'left { \clef bass \split { des4 } { des4 } r \split { des8([ es)] } { s } }
      \tag #'dynamics { s2. }
      |
    }
  }

  \tag #'right { \clef treble r4 <des' des''>2~-\sf }
  \tag #'left { \clef bass \split { f2( g4 } { bes,2. } }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble <des' des''>4( <c' c''>) r }
  \tag #'left { \clef bass \split { as4) } { as,4 } r \split { as8([ bes)] } { s } }
  \tag #'dynamics { s2. }
  |

  \tag #'right { \clef treble r4 <as' as''>2~-\sf }
  \tag #'left { \clef bass \split { c'2( d'4 } { f2. } }
  \tag #'dynamics { s2. }
  |

  \partial 2
  \tag #'right { \clef treble <as' as''>4( <g' g''>) }
  \tag #'left { \clef bass \split { es'4) } { es4 } r }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \textEndMark \markup { \italic "D.C. Scherzo senza repetizione" } }
  \bar "||"
}


thirdMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t

  \mark \markup {
    \column {
      \bold "Marcia funebre sulla morte d’un Eroe"
      \italic "Maestoso andante"
    }
  }
  \tempo 4 = 60

  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(4)

  \key as \minor
  \accidentalStyle modern

  \partial 4
  \tag #'right { \clef bass <es es'>8.[ <es es'>16] }
  \tag #'left { \clef bass r4 }
  \tag #'dynamics { s4\p }
  |

  \tag #'right { \clef bass <es as ces' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] <es as ces' es'>8.[ <es as ces' es'>16 <es g bes es'>8. <es as ces' es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es bes des' es'>2. <g bes es'>8.[ <g bes es'>16] }
  \tag #'left { \clef bass es,8.[ es,16 g,8. bes,16] es4 <des es>8.[ <des es>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <as ces' es'>4 <as ces' es'>8.[ <as ces' es'>16] <bes des' es'>4 <as ces' es'>8.[ <as ces' es'>16] }
  \tag #'left { \clef bass <ces es>4 <as, es>8.[ <as, es>16] <g, es>4 <as, es>8.[ <as, es>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <g bes es'>4-. <g bes es'>-. <g bes es'>-. <es es'>8.[ <es es'>16] }
  \tag #'left { \clef bass <es, es>4-. <es, es>-. <es, es>-. r }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es as ces' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] <es as ces' es'>8.[ <es as ces' es'>16 <es ges bes es'>8. <es f as es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s4 s2.\< }
  |

  \tag #'right { \clef bass <es ges bes es'>2. <ges ces' es'>8.[ <ges ces' es'>16] }
  \tag #'left { \clef bass es,8.[ es,16 ges,8. bes,16] es4 ces8.[ ces16] }
  \tag #'dynamics { s1\p }
  |

  \tag #'right { \clef bass <as ces' es'>4 <as ces' des'>8.[ <as ces' des'>16] <ges ces' des'>4 <fes ges bes des'>8.[ <fes ges bes des'>16] }
  \tag #'left { \clef bass as,4 fes,8.[ fes,16] ges,4 <ges,, ges,>8.[ <ges,, ges,>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es ges ces'>4-. <es ges ces'>-. <es ges ces'>-. <fis fis'>8.[ <fis fis'>16] }
  \tag #'left { \clef bass <ces, ces>4-. <ces, ces>-. <ces, ces>-. r }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <fis b d' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] <fis b d' fis'>8.[ <fis b d' fis'>16 <fis ais cis' fis'>8. <fis b d' fis'>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'dynamics { s1\< }
  |

  \tag #'right { \clef bass <fis cis' e' fis'>2. <fis ais cis' fis'>8.[ <fis ais cis' fis'>16] }
  \tag #'left { \clef bass <fis,, fis,>8.[ <fis,, fis,>16 <ais,, ais,>8. <cis, cis>16] <fis, fis>4 <e, e>8.[ <e, e>16] }
  \tag #'dynamics { s1\f }
  |

  \tag #'right { \clef bass <fis b d' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] <fis cis' e' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] }
  \tag #'left { \clef bass <d, d>4 <b,, b,>8.[ <b,, b,>16] <ais,, ais,>4 <b,, b,>8.[ <b,, b,>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <fis ais cis' fis'>4-. <fis ais cis' fis'>-. <fis ais cis' fis'>-. <fis fis'>8.[ <fis fis'>16] }
  \tag #'left { \clef bass <fis,, fis,>4-. <fis,, fis,>-. <fis,, fis,>-. r }
  \tag #'dynamics { s2. s4\p }
  |

  \tag #'right { \clef bass <fis b d' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] <fis b d' fis'>8.[ <fis b d' fis'>16 <e b cis' e'>8. <fis b d' fis'>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <g b e' g'>2. <g b e' g'>8.[ <g b e' g'>16] }
  \tag #'left { \clef bass e,8.[ e,16 g,8. b,16] e4 <g, e>8.[ <g, e>16-.] }
  \tag #'dynamics { s2. s4\cresc }
  |

  \tag #'right { \clef treble <a d' fis'>4 <a d' fis'>8.[ <a d' fis'>16] <a cis' e'>4 <a cis' e' a'>8.[ <a cis' e' a'>16] }
  \tag #'left { \clef bass <a, d fis>4 <a, d fis>8.[ <a, d fis>16] <a, cis e>4 <a, cis e>8.[ <a, cis e>16] }
  \tag #'dynamics { s2... s16\! }
  |

  \tag #'right { \clef treble d'4-. d'-. d'-. <f' ces''>8.[ <f' ces''>16] }
  \tag #'left { \clef bass <d, d>4-. <d, d>-. <d, d>-. <d as>8.[ <d as>16] }
  \tag #'dynamics { s2.\p s4\pp }
  |

  \tag #'right { \clef treble <f' ces''>2( <f' bes'>4 <f' as'>) }
  \tag #'left { \clef bass \split { as2( bes4 ces') } { d4 d d d } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <es' g'>8.-.[ <f' ces''>16-.] <f' ces''>2 <f' bes'>8.[ <f' as'>16] }
  \tag #'left { \clef bass \split { bes8.-.[ as16-.] as2 } { es8.-.[ d16-.] d4 d } <d bes>8.[ <d ces'>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <es' g'>8.-.[ <f' ces''>16-. <f' ces''>8.-. <f' ces''>16-.] <f' ces''>8.-.[ <f' ces''>16-. <f' bes'>8.-. <f' as'>16-.] }
  \tag #'left { \clef bass <es bes>8.-.[ <d as>16-. <d as>8.-. <d as>16-.] <d as>8.-.[ <d as>16-. <d bes>8.-. <d ces'>16-.] }
  \tag #'dynamics { s8. s2.\ff s16 }
  |

  \tag #'right { \clef treble <es' g'>4-. fes'2 es'16([ des' ces' bes)] }
  \tag #'left { \clef bass <es bes>4-. fes2 es16([ des ces bes,)] }
  \tag #'dynamics { s4 s4\sf s2 }
  |

  \tag #'right { \clef treble as4 \clef bass <es as ces' es'>8.[ <es as ces' es'>16] <es as ces' es'>8.[ <es as ces' es'>16 <es g bes es'>8. <es as ces' es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s4\fp s2. }
  |

  \tag #'right { \clef bass <es bes des' es'>2. <es g bes es'>8.[ <es g bes es'>16] }
  \tag #'left { \clef bass es,8.-.[ es,16-. g,8.-. bes,16-.] es4 des8.[ des16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es as ces' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] <es bes des' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] }
  \tag #'left { \clef bass ces4.\sf\trill bes,16[ as,] g,4 as,8.[ as,16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es g bes es'>4-. <es g bes es'>-. <es g bes es'>-. <es es'>8.[ <es es'>16] }
  \tag #'left { \clef bass es,4-. es,-. es,-. r }
  \tag #'dynamics { s2. s4\p }
  |

  \tag #'right { \clef bass <es as c' es'>4 <es as c' es'>8.[ <es as c' es'>16] <es as c' es'>8.[ <es as c' es'>16 <des as bes des'>8. <es as c' es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <fes as des' fes'>2. <fes as des' fes'>4-. }
  \tag #'left { \clef bass des,8.-.[ des,16-. fes,8.-. as,16-.] des4-. r }
  \tag #'dynamics { s1\< }
  |

  \tag #'right { \clef treble <des' fes' beses' des''>2. <des' fes' beses' des''>4-. }
  \tag #'left { \clef bass r8. <beses,, beses,>16-.[ <des, des>8.-. <fes, fes>16-.] <beses, beses>4-. r }
  \tag #'dynamics { s1\f }
  |

  \tag #'right { \clef treble <bes' des'' es'' bes''>2. <bes' des'' es'' bes''>4-.}
  \tag #'left { \clef bass r8. <g, g>16-.[ <bes, bes>8.-. <es es'>16-.] <g g'>4-. <g, g>-. }
  \tag #'dynamics { s1\ff }
  |

  \tag #'right { \clef treble <ces'' es'' ces'''>4-. r <bes' des'' fes'' bes''>-. <g' bes' des'' g''>-. }
  \tag #'left { \clef bass <as, as>4-. r <des, des>-. <es, es>-. }
  \tag #'dynamics { s1\ff }
  |

  \tag #'right { \clef treble <as' ces'' as''>4-. \clef bass <ces es as>-. as,-. r }
  \tag #'left { \clef bass <as,, as,>4-. <as,, as,>-. as,,-. r }
  \tag #'dynamics { s1 }
  |

  \key as \major
  \repeat volta 2 {
    \tag #'right { \clef treble r4 r r8 r16 <as' c''>-! <c'' es''>8-! r }
    \tag #'left { \clef bass \split { c'32[ es c' es c' es c' es] c'[ es c' es c' es c' es] <c as>8 r16 <as c'>-! <c' es'>8-! r } { as,,32[ as, as,, as, as,, as, as,, as,] as,,[ as, as,, as, as,, as, as,, as,] as,,8 r r4 } }
    \tag #'dynamics { s2\p s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble r4 r r8 r16 <as'' c'''>-! <c''' es'''>8-! r }
    \tag #'left { \clef bass \split { c'32[ es c' es c' es c' es] c'[ es c' es c' es c' es] <c as>8 \clef treble r16 <as' c''>-! <c'' es''>8-! r } { as,,32[ as, as,, as, as,, as, as,, as,] as,,[ as, as,, as, as,, as, as,, as,] as,,8 r r4 } }
    \tag #'dynamics { s2\p s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble bes8-! r16 <es'' g''>-! bes''8-! r bes-! r16 <d'' f''>-! bes''8-! r16 bes'-. }
    \tag #'left { \clef bass bes,8-! \clef treble r16 <es' g'>-! bes'8-! r \clef bass bes,-! \clef treble r16 <d' f'>-! bes'8-! \clef bass r16 <bes, bes>-! }
    \tag #'dynamics { s1 }
    |

    \tag #'right { \clef treble es''8-! r16 bes-! es'8-! r16 \clef bass bes, es8 r r4 }
    \tag #'left { \clef bass <es es'>8-! r <es, g, bes, es>-! r <es, g,> r r4 }
    \tag #'dynamics { s1 }
    |
  }

  \repeat volta 2 {
    \tag #'right { \clef treble des'32[ bes des' bes des' bes des' bes] des'[ bes des' bes des' bes des' bes] <g bes>8 r16 <g' bes'>-! <bes' des''>8-! r }
    \tag #'left { \clef bass es,32[ es es, es es, es es, es] es,[ es es, es es, es es, es] es,8-. r16 <g bes>-! <bes des'>8-! r }
    \tag #'dynamics { s2\p s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble des'32[ bes des' bes des' bes des' bes] des'[ bes des' bes des' bes des' bes] <g bes>8 r16 <g'' bes''>-! <bes'' des'''>8-! r }
    \tag #'left { \clef bass es,32[ es es, es es, es es, es] es,[ es es, es es, es es, es] es,8 \clef treble r16 <g' bes'>-! <bes' des''>8-! r }
    \tag #'dynamics { s2\< s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble as'8-! r16 <as'' c'''>-! es'''8-! r es'-! r16 <g'' bes''>-! es'''8-! r16 es''-! }
    \tag #'left { \clef bass <as, as>8-! \clef treble r16 <as' c''>-! es''8-! r \clef bass <es, es>-! \clef treble r16 <g' bes'>-! es''8-! \clef bass r16 <es es'>-! }
    \tag #'dynamics { s1 }
    |
  }
  \alternative {
    {
      \tag #'right { \clef treble as''8-! r16 es'-! as'8-! r16 es as8 r r4 }
      \tag #'left { \clef bass <as as'>8-! r <as, c es as> r <c, es, as,> r r4 }
      \tag #'dynamics { s1 }
      |
    }
    {
      \tag #'right { \clef treble as''8-! r16 es'-! as'8-! r16 es-! as8-! r \clef bass <es es'>8.[ <es es'>16] }
      \tag #'left { \clef bass <as as'>8-! r <as, c es as> r <as,, c, es, as,> r r4 }
      \tag #'dynamics { s2. s4\p }
      |
    }
  }

  \bar "||"
  \key as \minor
  \tag #'right { \clef bass <es as ces' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] <es as ces' es'>8.[ <es as ces' es'>16 <es g bes es'>8. <es as ces' es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es bes des' es'>2. <g bes es'>8.[ <g bes es'>16] }
  \tag #'left { \clef bass es,8.[ es,16 g,8. bes,16] es4 <des es>8.[ <des es>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <as ces' es'>4 <as ces' es'>8.[ <as ces' es'>16] <bes des' es'>4 <as ces' es'>8.[ <as ces' es'>16] }
  \tag #'left { \clef bass <ces es>4 <as, es>8.[ <as, es>16] <g, es>4 <as, es>8.[ <as, es>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <g bes es'>4-. <g bes es'>-. <g bes es'>-. <es es'>8.[ <es es'>16] }
  \tag #'left { \clef bass <es, es>4-. <es, es>-. <es, es>-. r }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es as ces' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] <es as ces' es'>8.[ <es as ces' es'>16 <es ges bes es'>8. <es f as es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s4 s2.\< }
  |

  \tag #'right { \clef bass <es ges bes es'>2. <ges ces' es'>8.[ <ges ces' es'>16] }
  \tag #'left { \clef bass es,8.[ es,16 ges,8. bes,16] es4 ces8.[ ces16] }
  \tag #'dynamics { s1\p }
  |

  \tag #'right { \clef bass <as ces' es'>4 <as ces' des'>8.[ <as ces' des'>16] <ges ces' des'>4 <fes ges bes des'>8.[ <fes ges bes des'>16] }
  \tag #'left { \clef bass as,4 fes,8.[ fes,16] ges,4 <ges,, ges,>8.[ <ges,, ges,>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es ges ces'>4-. <es ges ces'>-. <es ges ces'>-. <fis fis'>8.[ <fis fis'>16] }
  \tag #'left { \clef bass <ces, ces>4-. <ces, ces>-. <ces, ces>-. r }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <fis b d' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] <fis b d' fis'>8.[ <fis b d' fis'>16 <fis ais cis' fis'>8. <fis b d' fis'>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'dynamics { s1\< }
  |

  \tag #'right { \clef bass <fis cis' e' fis'>2. <fis ais cis' fis'>8.[ <fis ais cis' fis'>16] }
  \tag #'left { \clef bass <fis,, fis,>8.[ <fis,, fis,>16 <ais,, ais,>8. <cis, cis>16] <fis, fis>4 <e, e>8.[ <e, e>16] }
  \tag #'dynamics { s1\f }
  |

  \tag #'right { \clef bass <fis b d' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] <fis cis' e' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] }
  \tag #'left { \clef bass <d, d>4 <b,, b,>8.[ <b,, b,>16] <ais,, ais,>4 <b,, b,>8.[ <b,, b,>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <fis ais cis' fis'>4-. <fis ais cis' fis'>-. <fis ais cis' fis'>-. <fis fis'>8.[ <fis fis'>16] }
  \tag #'left { \clef bass <fis,, fis,>4-. <fis,, fis,>-. <fis,, fis,>-. r }
  \tag #'dynamics { s2. s4\p }
  |

  \tag #'right { \clef bass <fis b d' fis'>4 <fis b d' fis'>8.[ <fis b d' fis'>16] <fis b d' fis'>8.[ <fis b d' fis'>16 <e b cis' e'>8. <fis b d' fis'>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <g b e' g'>2. <g b e' g'>8.[ <g b e' g'>16] }
  \tag #'left { \clef bass e,8.[ e,16 g,8. b,16] e4 <g, e>8.[ <g, e>16-.] }
  \tag #'dynamics { s2. s4\cresc }
  |

  \tag #'right { \clef treble <a d' fis'>4 <a d' fis'>8.[ <a d' fis'>16] <a cis' e'>4 <a cis' e' a'>8.[ <a cis' e' a'>16] }
  \tag #'left { \clef bass <a, d fis>4 <a, d fis>8.[ <a, d fis>16] <a, cis e>4 <a, cis e>8.[ <a, cis e>16] }
  \tag #'dynamics { s2... s16\! }
  |

  \tag #'right { \clef treble d'4-. d'-. d'-. <f' ces''>8.[ <f' ces''>16] }
  \tag #'left { \clef bass <d, d>4-. <d, d>-. <d, d>-. <d as>8.[ <d as>16] }
  \tag #'dynamics { s2.\p s4\pp }
  |

  \tag #'right { \clef treble <f' ces''>2( <f' bes'>4 <f' as'>) }
  \tag #'left { \clef bass \split { as2( bes4 ces') } { d4 d d d } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <es' g'>8.-.[ <f' ces''>16-.] <f' ces''>2 <f' bes'>8.[ <f' as'>16] }
  \tag #'left { \clef bass \split { bes8.-.[ as16-.] as2 } { es8.-.[ d16-.] d4 d } <d bes>8.[ <d ces'>16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <es' g'>8.-.[ <f' ces''>16-. <f' ces''>8.-. <f' ces''>16-.] <f' ces''>8.-.[ <f' ces''>16-. <f' bes'>8.-. <f' as'>16-.] }
  \tag #'left { \clef bass <es bes>8.-.[ <d as>16-. <d as>8.-. <d as>16-.] <d as>8.-.[ <d as>16-. <d bes>8.-. <d ces'>16-.] }
  \tag #'dynamics { s8. s2.\ff s16 }
  |

  \tag #'right { \clef treble <es' g'>4-. fes'2 es'16([ des' ces' bes)] }
  \tag #'left { \clef bass <es bes>4-. fes2 es16([ des ces bes,)] }
  \tag #'dynamics { s4 s4\sf s2 }
  |

  \tag #'right { \clef treble as4 \clef bass <es as ces' es'>8.[ <es as ces' es'>16] <es as ces' es'>8.[ <es as ces' es'>16 <es g bes es'>8. <es as ces' es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s4\fp s2. }
  |

  \tag #'right { \clef bass <es bes des' es'>2. <es g bes es'>8.[ <es g bes es'>16] }
  \tag #'left { \clef bass es,8.-.[ es,16-. g,8.-. bes,16-.] es4 des8.[ des16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es as ces' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] <es bes des' es'>4 <es as ces' es'>8.[ <es as ces' es'>16] }
  \tag #'left { \clef bass ces4.\sf\trill bes,16[ as,] g,4 as,8.[ as,16] }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <es g bes es'>4-. <es g bes es'>-. <es g bes es'>-. <es es'>8.[ <es es'>16] }
  \tag #'left { \clef bass es,4-. es,-. es,-. r }
  \tag #'dynamics { s2. s4\p }
  |

  \tag #'right { \clef bass <es as c' es'>4 <es as c' es'>8.[ <es as c' es'>16] <es as c' es'>8.[ <es as c' es'>16 <des as bes des'>8. <es as c' es'>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef bass <fes as des' fes'>2. <fes as des' fes'>4-. }
  \tag #'left { \clef bass des,8.-.[ des,16-. fes,8.-. as,16-.] des4-. r }
  \tag #'dynamics { s1\< }
  |

  \tag #'right { \clef treble <des' fes' beses' des''>2. <des' fes' beses' des''>4-. }
  \tag #'left { \clef bass r8. <beses,, beses,>16-.[ <des, des>8.-. <fes, fes>16-.] <beses, beses>4-. r }
  \tag #'dynamics { s1\f }
  |

  \tag #'right { \clef treble <bes' des'' es'' bes''>2. <bes' des'' es'' bes''>4-.}
  \tag #'left { \clef bass r8. <g, g>16-.[ <bes, bes>8.-. <es es'>16-.] <g g'>4-. <g, g>-. }
  \tag #'dynamics { s1\ff }
  |

  \tag #'right { \clef treble <ces'' es'' ces'''>4-. r <bes' des'' fes'' bes''>-. <g' bes' des'' g''>-. }
  \tag #'left { \clef bass <as, as>4-. r <des, des>-. <es, es>-. }
  \tag #'dynamics { s1\ff }
  |

  \tag #'right { \clef treble <as' ces'' as''>4-. \clef bass <ces es as>-. as,-. r }
  \tag #'left { \clef bass <as,, as,>4-. <as,, as,>-. as,,-. r }
  \tag #'dynamics { s1 }
  |
  
  \tag #'right { \clef treble <as' ces'' as''>4-. r r <ges' beses'>8.([ <fes' as'>16)] }
  \tag #'left { \clef bass \split { s2. c8.[ des16] } { <as,, as,>4-. as,8.[ as,16] as,4 as,4 } }
  \tag #'dynamics { s4 s2\p s4 }
  |

  \tag #'right { \clef treble <es' ges'>4..( <des' fes'>16) <des' es'>4(-. <des' es'>)-. }
  \tag #'left { \clef bass \split { es4..( fes16 ges4 g) } { as,4 as, as, as, } }
  \tag #'dynamics { s4\< s2. }
  |

  \tag #'right { \clef treble <c' es'>4 r r <es' ges' c''>8.([ <fes' as' des''>16] }
  \tag #'left { \clef bass \split { as4 r r beses8.[ as16] } { as,4 as,8.[ as,16] as,4 as, } }
  \tag #'dynamics { s1\p }
  |

  \tag #'right { \clef treble <ges' beses' es''>4.. <as' des'' fes''>16 <beses' c'' ges''>4 <bes' fes'' g''> }
  \tag #'left { \clef bass \split { ges4.. fes16 es4 des } { as,4 as, as, as, } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <c'' es'' as''>2) <beses' beses''>4..( <g' g''>16) }
  \tag #'left { \clef bass \split { c2 <des fes> } { as,4 as,8.[ as,16] as,4 as,8.[ as,16] } }
  \tag #'dynamics { s2\p s4..\sf\> s16\! }
  |

  \tag #'right { \clef treble <as' as''>4 r \split { beses'4..( g'16) } { <des' fes'>2 } }
  \tag #'left { \clef bass \splitThree { <c es>4 s2. } { as,1 } { as,4 as,,8.[ as,,16] as,,4 as,,8.[ as,,16] } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <c' es' as'>4 r <c' es'>(-. <c' es'>)-. }
  \tag #'left { \clef bass \split { as,1 } { as,,4 as,,8.[ as,,16] as,,4 as,,8.[ as,,16] } }
  \tag #'dynamics { s1 }
  |

  \tag #'right { \clef treble <as c' es'>2.\fermata r4 }
  \tag #'left { \clef bass <as,, as,>2.\fermata r4 }
  \tag #'dynamics { s1\pp }
  |

  \bar "|."
}


fourthMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t

  \mark \markup { \bold "Allegro" }
  \tempo 4 = 144

  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(2)

  \key as \major
  \accidentalStyle modern

  \partial 4
  \tag #'right { \clef treble es''16([ c'' f'' a'] }
  \tag #'left { \clef bass r4 }
  \tag #'dynamics { s4\p }
  |

  \tag #'right { \clef treble des''16[ bes' es'' g'] c''[ as' des'' f'] }
  \tag #'left { \clef bass r2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ g' c'' e'] as'[ f' bes' d')] }
  \tag #'left { \clef bass r2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ es' d' es'] g'[ es' as' es'] }
  \tag #'left { \clef bass \split { r4 des'8([ c'] } { es2~ } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ es' c'' es'] des''[ es' d'' es'] }
  \tag #'left { \clef bass \split { bes8[ as g f] } { es2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''16[ es' <g' es''> es'] <as' es''>[ es' <as' c'' es''> es'] }
  \tag #'left { \clef bass es8[ des c as,)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <g' bes' es''>16[ es' <g' bes' es''> es'] c''([ es'' a' f''] }
  \tag #'left { \clef bass es8-.[ es,-.] es'16([ c' f' a] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ des'' g' es''] as'[ c'' f' des''] }
  \tag #'left { \clef bass des'16[ bes es' g] c'[ as des' f] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes'] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es'8) r <des'' des'''>([ <c'' c'''>] }
  \tag #'left { \clef bass g16)[ es d es] g[ es as es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <bes' bes''>8[ <as' as''> <g' g''> <f' f''>)] }
  \tag #'left { \clef bass bes16[ es c' es] des'[ es d' es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''8-.[ <as' c'' es''>-. <bes' des'' es''>-. <g' bes' es''>-.] }
  \tag #'left { \clef bass es'16[ es es' es] es'[ es es' es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' c'' es''>8-. r c'16[ c'' e' c''] }
  \tag #'left { \clef bass as8-.[ as,-.] bes([ g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ c'' b' c''] bes'[ c'' g' c''] }
  \tag #'left { \clef bass e8[ c d e] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as'16[ c'' f' c''] as''8([ f''] }
  \tag #'left { \clef bass f8[ as)] bes,16[ bes d bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble d''8[ bes' c'' d''] }
  \tag #'left { \clef bass f16[ bes a bes] as[ bes f bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''8[ g'')] es'16[ es'' g' es''] }
  \tag #'left { \clef bass g16[ bes es bes] des'8([ bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ es'' d'' es''] des''[ es'' bes' es''] }
  \tag #'left { \clef bass g8[ es f g)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble c''16[ es'' <es' c''> es''] <g' des''>[ es'' <as' c''> es''] }
  \tag #'left { \clef bass as8([ as, bes, c] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <f' c''>16[ es'' <f' bes'> des''] <es' as'>[ c'' <des' g'> bes'] }
  \tag #'left { \clef bass des8[ bes, es es,)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <c' as'>8-. r <bes' bes''>([ <g' g''>] }
  \tag #'left { \clef bass as,8[ as,,] c16[ c' e c'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <e' e''>8[ c''] <d' d''>[ <e' e''>] }
  \tag #'left { \clef bass g16[ c' b c'] bes[ c' g c'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <f' f''>8[ <as' as''>)] bes'16[ bes'' d'' bes''] }
  \tag #'left { \clef bass as16[ c' f c'] as'8([ f'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble f''16[ bes'' a'' bes''] as''[ bes'' f'' bes''] }
  \tag #'left { \clef bass d'8[ bes c' d'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g''16[ bes'' es'' bes''] <des'' des'''>8([ <bes' bes''>] }
  \tag #'left { \clef bass es'8[ g')] es,16[ es g, es] }
  \tag #'dynamics { s4 s4\< }
  |

  \tag #'right { \clef treble <g' g''>8[ <es' es''>] <f' f''>[ <g' g''>] }
  \tag #'left { \clef bass bes,16[ es d es] des[ es bes, es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' as''>8) <es'' as'' c'''>16[ es'''] <es'' bes'' des'''>[ es''' <es'' as'' c'''> es'''] }
  \tag #'left { \clef bass c16[ es as, as] g,[ g as, as] }
  \tag #'dynamics { s8 s4.\f }
  |

  \tag #'right { \clef treble <es'' c'''>16[ es''' <des'' bes''> des'''] <c'' as''>[ c''' <bes' g''> bes''] }
  \tag #'left { \clef bass f,16[ f des, des] es,[ es es, es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' as''>8 r r4 }
  \tag #'left { \clef bass as,,8-.[ as,-.] c'16([ as des' f] }
  \tag #'dynamics { s4 s4\p }
  |

  \tag #'right { \clef treble r2 }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble r8 <g' bes' es'' g''>-. g''16([ es'' as'' c''] }
  \tag #'left { \clef bass <es g>8-. r es'16([ g' c' as'] }
  \tag #'dynamics { s8 s4.\sf }
  |

  \tag #'right { \clef treble f''16[ d'' g'' b'] es''[ c'' f'' a')] }
  \tag #'left { \clef bass d'16[ f' b g'] c'[ es' a f')] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble d''8-.[ <bes' d'' f'' bes''>-.] r <bes' bes''>-. }
  \tag #'left { \clef bass bes8-.[ <bes, bes>-.] as16[ bes f d'] }
  \tag #'dynamics { s8 s4.\p }
  |

  \tag #'right { \clef treble r8 <d'' d'''>-. r <f'' f'''>-. }
  \tag #'left { \clef bass as16[ bes f d'] as[ bes f d'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <d'' d'''>8-.[ <bes' bes''>-.] r <bes' bes''>-. }
  \tag #'left { \clef bass as16[ bes f d'] as[ bes f d'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble r8 <d'' d'''>-. r <f'' f'''>-. }
  \tag #'left { \clef bass as16[ bes f d'] as[ bes f d'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <d'' d'''>8-.[ <bes' bes''>-.] as''16([ f'' bes'' d''] }
  \tag #'left { \clef bass as16[ bes f d'] r8 <bes, bes>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass r8 <d d'>-. r <f f'>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass <d d'>8-.[ <bes, bes>-.] r <bes,, bes,> }
  \tag #'dynamics { s4 s4\cresc }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass r8 <d, d>-. r <f, f>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass <d, d>8-.[ <bes,, bes,>-.] r <f f'>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d'')] }
  \tag #'left { \clef bass <d d'>8-.[ <bes, bes>-.] r <bes,, bes,>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g''8-.[\! es''16( d''] c''[ bes' as' g'] }
  \tag #'left { \clef bass <es, es>8-. <g,, g,>4.( }
  \tag #'dynamics { s8 s4.\sf }
  |

  \tag #'right { \clef treble f'16[ es' d' c'] bes[ as g f] }
  \tag #'left { \clef bass <as,, as,>4 <bes,, bes,>) }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es8)-. g''16([ f''] \tuplet 6/4 { es''16[ d'' c'' bes'16 as' g'] } }
  \tag #'left { \clef bass <c, c>8-. <g,, g,>4.( }
  \tag #'dynamics { s8 s4.\sf }
  |

  \tag #'right { \clef treble f'16[ es' d' c'] bes[ as g f] }
  \tag #'left { \clef bass <as,, as,>4 <bes,, bes,>) }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es8)-. bes''16([ as''] g''32[ f'' es'' d'' c'' bes' as' g'] }
  \tag #'left { \clef bass <c, c>8-. <g,, g,>4.( }
  \tag #'dynamics { s8\sf s4.\ff }
  |

  \tag #'right { \clef treble f'16[ es' d' c'] bes[ as g f] }
  \tag #'left { \clef bass <as,, as,>4 <bes,, bes,>) }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es8) r g'16([ es' as' f')] }
  \tag #'left { \clef bass \split { es,8( es4.) } { es,2 } }
  \tag #'dynamics { s4 s4\p }
  |

  \tag #'right { \clef treble r4 bes'16([ g' c'' as')] }
  \tag #'left { \clef bass \split { es,8( es4.) } { es,2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble r4 des''16([ bes' d'' b'] }
  \tag #'left { \clef bass \split { es,8( es4.~) } { es,2~ } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''16[ c'' d'' b'] es''[ c'' d'' b'] }
  \tag #'left { \clef bass \split { <es,_~ es~>2 } { \once \omit Stem es,2 } }
  \tag #'dynamics { s4 s4\< }
  |

  \tag #'right { \clef treble es''16[ c'' d'' b'] es''[ c'' f'' a'] }
  \tag #'left { \clef bass <es,~ es~>2 }
  \tag #'dynamics { s4 s4\p }
  |

  \tag #'right { \clef treble des''16[ bes' es'' g'] c''[ as' des'' f'] }
  \tag #'left { \clef bass <es,~ es~>2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ g' c'' e'] as'[ f' bes' d')] }
  \tag #'left { \clef bass <es, es>2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ es' d' es'] g'[ es' as' es'] }
  \tag #'left { \clef bass \split { r4 des'8([ c'] } { es2~ } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ es' c'' es'] des''[ es' d'' es'] }
  \tag #'left { \clef bass \split { bes8[ as g f] } { es2 } }
  \tag #'dynamics { s2\< }
  |

  \tag #'right { \clef treble es''16[ es' <g' es''> es'] <as' es''>[ es' <as' c'' es''> es'] }
  \tag #'left { \clef bass es8[ des c as,)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <g' bes' es''>16[ es' <g' bes' es''> es'] c''([ es'' a' f''] }
  \tag #'left { \clef bass es8-.[ es,-.] es'16([ c' f' a] }
  \tag #'dynamics { s4 s4\p }
  |

  \tag #'right { \clef treble bes'16[ des'' g' es''] as'[ c'' f' des''] }
  \tag #'left { \clef bass des'16[ bes es' g] c'[ as des' f] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes'] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es'8) r <des'' des'''>([ <c'' c'''>] }
  \tag #'left { \clef bass g16)[ es d es] g[ es as es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <bes' bes''>8[ <as' as''> <g' g''> <f' f''>)] }
  \tag #'left { \clef bass bes16[ es c' es] des'[ es d' es] }
  \tag #'dynamics { s2\< }
  |

  \tag #'right { \clef treble es''8-.[ <as' c'' es''>-. <bes' des'' es''>-. <g' bes' es''>-.] }
  \tag #'left { \clef bass es'16[ es es' es] es'[ es es' es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' c'' es''>8 r c'16[ c'' e' c''] }
  \tag #'left { \clef bass as8-.[ as,-.] bes([ g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ c'' b' c''] bes'[ c'' g' c''] }
  \tag #'left { \clef bass e8[ c d e] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as'16[ c'' f' c''] as''8([ f''] }
  \tag #'left { \clef bass f8[ as)] bes,16[ bes d bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble d''8[ bes' c'' d''] }
  \tag #'left { \clef bass f16[ bes a bes] as[ bes f bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''8[ g'')] es'16[ es'' g' es''] }
  \tag #'left { \clef bass g16[ bes es bes] des'8([ bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ es'' d'' es''] des''[ es'' bes' es''] }
  \tag #'left { \clef bass g8[ es f g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble c''16[ es'' <es' c''> es''] <g' des''>[ es'' <as' c''> es''] }
  \tag #'left { \clef bass as8[ as, bes, c] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <f' c''>16[ es'' <f' bes'> des''] <es' as'>[ c'' <des' g'> bes'] }
  \tag #'left { \clef bass des8[ bes, es es,)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <c' as'>8 r <bes' bes''>([ <g' g''>] }
  \tag #'left { \clef bass as,8-.[ as,,-.] c16[ c' e c'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <e' e''>8[ c'' <d' d''> <e' e''>] }
  \tag #'left { \clef bass g16[ c' b c'] bes[ c' g c'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <f' f''>8[ <as' as''>)] bes'16[ bes'' d'' bes''] }
  \tag #'left { \clef bass as16[ c' f c'] \clef treble as'8(->[ f'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble f''16[ bes'' a'' bes''] as''[ bes'' f'' bes''] }
  \tag #'left { \clef treble d'8[ bes c' d'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g''16[ bes'' es'' bes''] <des'' des'''>8([ <bes' bes''>] }
  \tag #'left { \clef treble es'8[ g')] \clef bass es,16[ es g, es] }
  \tag #'dynamics { s4 s4\< }
  |

  \tag #'right { \clef treble <g' g''>8[ <es' es''> <f' f''> <g' g''>] }
  \tag #'left { \clef bass bes,16[ es d es] des[ es bes, es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' as''>8) <es'' as'' c'''>16[ es'''] <es'' bes'' des'''>[ es''' <es'' as'' c'''> es'''] }
  \tag #'left { \clef bass c16[ es as, as] g,[ g as, as] }
  \tag #'dynamics { s8 s4.\f }
  |

  \tag #'right { \clef treble <es'' c'''>16[ es''' <des'' bes''> des'''] <c'' as''>[ c''' <bes' g''> bes''] }
  \tag #'left { \clef bass f,16[ f des, des] es,[ es es, es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' as''>8 r c'16[ g c' g] }
  \tag #'left { \clef bass as,,8-.[ as,-.] c,16[ g, c, g,] }
  \tag #'dynamics { s4 s4\p }
  |

  \repeat volta 2 {
    \tag #'right { \clef treble c'16[ g d' b] es'[ c' f' d'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'dynamics { s4 s4\< }
    |

    \tag #'right { \clef treble g'16[ es' b' g'] c''[ a' d'' b'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'dynamics { s2 }
    |

    \tag #'right { \clef treble es''16[ c'' f'' d''] <es'' g''>8-. <b' d'' b''>-. }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, g,, g,] }
    \tag #'dynamics { s4. s8\f }
    |

    \tag #'right { \clef treble <c'' es'' c'''>8-. r c'16[ g c' g] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'dynamics { s4\f s4\p }
    |

    \tag #'right { \clef treble c'16[ g d' b] es'[ c' f' d'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'dynamics { s8. s4\< s16 }
    |

    \tag #'right { \clef treble g'16[ es' b' g'] c''[ a' d'' b'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'dynamics { s2 }
    |

    \tag #'right { \clef treble es''16[ c'' es'' c''] <bes' d''>8-.[ <fis' a' fis''>-.] }
    \tag #'left { \clef bass c,16[ g, c, g,] d,[ g, d, d] }
    \tag #'dynamics { s4. s8\f }
    |
  }
  \alternative {
    {
      \tag #'right { \clef treble <g' bes' g''>8 r c'16[ g c' g] }
      \tag #'left { \clef bass g,,16[ g, g,, g,] c,[ g, c, g,] }
      \tag #'dynamics { s4\f s4\p }
      |
    }
    {
      \tag #'right { \clef treble <g' bes' g''>8-. r bes'16[ g' bes' g'] }
      \tag #'left { \clef bass g,,16[ g, g,, g,] g,[ d g, d] }
      \tag #'dynamics { s4\f s4\p }
      |
    }
  }

  \tag #'right { \clef treble bes'16[ g' c'' a'] d''[ bes'] <fis' a' fis''>8-. }
  \tag #'left { \clef bass g,16[ d g, d] g,[ d d, d] }
  \tag #'dynamics { s4 s16 s8.\f }
  |

  \tag #'right { \clef treble <g' bes' g''>8-. r bes'16[ g' bes' g'] }
  \tag #'left { \clef bass g,16[ d g, d] g,[ d f, des] }
  \tag #'dynamics { s4\f s4\p }
  |

  \tag #'right { \clef treble bes'16[ g' bes' g'] bes'[ g'] <g' bes' e''>8-. }
  \tag #'left { \clef bass e,16[ c f, des] e,[ c c, c] }
  \tag #'dynamics { s4. s8\f }
  |

  \tag #'right { \clef treble <f' as' f''>8-. r as'16[ f' as' f'] }
  \tag #'left { \clef bass f,16[ c f, c] f,[ c f, c] }
  \tag #'dynamics { s4\f s4\p }
  |

  \tag #'right { \clef treble as'16[ f' bes' g'] c''[ as'] <g' bes' e''>8-. }
  \tag #'left { \clef bass f,16[ c f, c] f,[ c c, c] }
  \tag #'dynamics { s4. s8\f }
  |

  \tag #'right { \clef treble <f' as' f''>8-. r as'16[ f' as' f'] }
  \tag #'left { \clef bass f,16[ c f, c] f,[ c es, ces] }
  \tag #'dynamics { s4\f s4\p }
  |

  \tag #'right { \clef treble as'16[ f' as' f'] as'[ f'] <f' as' d''>8 }
  \tag #'left { \clef bass d,16[ bes, es, ces] d,[ bes, bes,, bes,] }
  \tag #'dynamics { s4. s8\f }
  |

  \tag #'right { \clef treble <es' g' es''>8 r g'16[ es' g' es'] }
  \tag #'left { \clef bass es,16[ bes, es, bes,] r4 }
  \tag #'dynamics { s4\f s4\p }
  |

  \tag #'right { \clef treble g'16[ es' as' f'] a'[ fis' bes' g'] }
  \tag #'left { \clef bass R2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble ces''16[ as' c'' a'] des''[ bes' d'' b'] }
  \tag #'left { \clef bass R2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''16([ c'' d'' b'] es''[ c'' d'' b'] }
  \tag #'left { \clef bass R2 }
  \tag #'dynamics { s4 s4\< }
  |

  \tag #'right { \clef treble es''16[ c'' d'' b'] es''[ c'' f'' a'] }
  \tag #'left { \clef bass R2 }
  \tag #'dynamics { s4 s4\p }
  |

  \tag #'right { \clef treble des''16[ bes' es'' g'] c''[ as' des'' f'] }
  \tag #'left { \clef bass R2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ g' c'' e'] as'[ f' bes' d')] }
  \tag #'left { \clef bass R2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ es' d' es'] g'[ es' as' es'] }
  \tag #'left { \clef bass \split { r4 des'8([ c'] } { es2~ } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ es' c'' es'] des''[ es' d'' es'] }
  \tag #'left { \clef bass \split { bes8[ as g f] } { es2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''16[ es' <g' es''> es'] <as' es''>[ es' <as' c'' es''> es'] }
  \tag #'left { \clef bass es8[ des c as,)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <g' bes' es''>16[ es' <g' bes' es''> es'] c''([ es'' a' f''] }
  \tag #'left { \clef bass es8-.[ es,-.] es'16([ c' f' a] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ des'' g' es''] as'[ c'' f' des''] }
  \tag #'left { \clef bass des'16[ bes es' g] c'[ as des' f] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes')] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es'8 r <des'' des'''>([ <c'' c'''>] }
  \tag #'left { \clef bass g16[ es d es] g[ es as es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <bes' bes''>8[ <as' as''>) <g' g''> <f' f''>] }
  \tag #'left { \clef bass bes16[ es c' es] des'[ es d' es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''8-.[ <as' c'' es''>-. <bes' des'' es''>-. <g' bes' es''>-.] }
  \tag #'left { \clef bass es'16[ es es' es] es'[ es es' es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' c'' es''>8-. r c'16[ c'' e' c''] }
  \tag #'left { \clef bass as8-.[ as,-.] bes([ g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ c'' b' c''] bes'[ c'' g' c''] }
  \tag #'left { \clef bass e8[ c d e] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as'16[ c'' f' c''] as''8([ f''] }
  \tag #'left { \clef bass f8[ as)] bes,16([ bes d bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble d''8[ bes' c'' d''] }
  \tag #'left { \clef bass f16[ bes a bes] as[ bes f bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''8[ g'')] es'16[ es'' g' es''] }
  \tag #'left { \clef bass g16[ bes es bes)] des'8([ bes] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ es'' d'' es''] des''[ es'' bes' es''] }
  \tag #'left { \clef bass g8[ es f g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble c''16[ es'' <es' c''> es''] <g' des''>[ es'' <as' c''> es''] }
  \tag #'left { \clef bass as8[ as, bes, c] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <f' c''>16[ es'' <f' bes'> des''] <es' as'>[ c'' <des' g'> bes'] }
  \tag #'left { \clef bass des8[ bes, es es,)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <c' as'>8 r <bes' bes''>([ <g' g''>] }
  \tag #'left { \clef bass as,8-.[ as,,-.] c16[ c' e c'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <e' e''>8[ c''] <d' d''>[ <e' e''>] }
  \tag #'left { \clef bass g16[ c' b c'] bes[ c' g c'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <f' f''>8[ <as' as''>)] bes'16[ bes'' d'' bes''] }
  \tag #'left { \clef bass as16[ c' f c'] \clef treble as'8([ f'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble f''16[ bes'' a'' bes''] as''[ bes'' f'' bes''] }
  \tag #'left { \clef treble d'8[ bes c' d'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g''16[ bes'' es'' bes''] <des'' des'''>8([ <bes' bes''>] }
  \tag #'left { \clef treble es'8[ g')] \clef bass es,16[ es g, es] }
  \tag #'dynamics { s4 s4\< }
  |

  \tag #'right { \clef treble <g' g''>8[ <es' es''> <f' f''> <g' g''>] }
  \tag #'left { \clef bass bes,16[ es d es] des[ es bes, es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' as''>8) <es'' as'' c'''>16[ es'''] <es'' bes'' des'''>[ es''' <es'' as'' c'''> es'''] }
  \tag #'left { \clef bass c16[ es as, as] g,[ g as, as] }
  \tag #'dynamics { s8 s4.\f }
  |

  \tag #'right { \clef treble <es'' c'''>16[ es''' <des'' bes''> des'''] <c'' as''>[ c''' <bes' g''> bes''] }
  \tag #'left { \clef bass f,16[ f des, des] es,[ es es, es] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <as' as''>8 r as'16([ c'' f' des''] }
  \tag #'left { \clef bass as,,8-.[ as,-.] c'16([ as des' f] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes')] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble g'8-. <g' bes' es'' g''>-. g''16([ es'' as'' c''] }
  \tag #'left { \clef bass es8-. <es, es>-. \clef treble es'16([ g' c' as'] }
  \tag #'dynamics { s8 s4.\sf }
  |

  \tag #'right { \clef treble f''16[ d'' g'' b'] es''[ c'' f'' a')] }
  \tag #'left { \clef treble d'16[ f' b g'] c'[ es' a f')] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble des''8-. <bes' des'' f'' bes''>-. bes'16([ des'' g' es''] }
  \tag #'left { \clef treble bes8-. \clef bass <bes, bes>-. des'16([ bes es' g] }
  \tag #'dynamics { s8 s4.\sf }
  |

  \tag #'right { \clef treble as'16[ c'' f' des''] g'[ bes' e' c'')] }
  \tag #'left { \clef bass c'16[ as des' f] bes[ g c' e)] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as'8-. <as' c'' f'' as''>-. as''16([ f'' bes'' d''] }
  \tag #'left { \clef bass f8-. <f, f>-. \clef treble f'16[ as' d' bes'] }
  \tag #'dynamics { s8 s4.\sf }
  |

  \tag #'right { \clef treble g''16[ es'' as'' c''] f''[ d'' g'' b')] }
  \tag #'left { \clef treble es'16[ g' c' as'] d'[ f' b g'] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble es''8-.[ <c'' es'' f'' c'''>-.] des''-.[ <bes' des'' f'' bes''>-.] }
  \tag #'left { \clef treble c'8-. \clef bass a,-. bes,-.[ bes-.] }
  \tag #'dynamics { s8 s8\sf s8 s8\sf }
  |

  \tag #'right { \clef treble des''8-.[ <bes' des'' es'' bes''>-.] c''-.[ <as' c'' es'' as''>-.] }
  \tag #'left { \clef bass g,8-.[ g-. as,-. as-.] }
  \tag #'dynamics { s8 s4\sf s8\sf }
  |

  \tag #'right { \clef treble bes'8-.[ <g' bes' es'' g''>-.] r <es' es''>-. }
  \tag #'left { \clef bass es,8-.[ es-.] des16[ es bes, g] }
  \tag #'dynamics { s8 s8\sf s4\p }
  |

  \tag #'right { \clef treble r8 <g' g''>-. r <bes' bes''>-. }
  \tag #'left { \clef bass des16[ es bes, g] des[ es bes, g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <g' g''>8-.[ <es' es''>-.] r <es' es''>-. }
  \tag #'left { \clef bass des16[ es bes, g] des[ es bes, g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble r8 <g' g''>-. r <bes' bes''>-. }
  \tag #'left { \clef bass des16[ es bes, g] des[ es bes, g] }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble <g' g''>8-.[ <es' es''>-.] bes''16[ des''' g'' es'''] }
  \tag #'left { \clef bass des16[ es bes, g] r8 <es, es>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass r8 <g, g>-. r <bes, bes>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass <g, g>8-.[ <es, es>-.] r <es es'>-. }
  \tag #'dynamics { s4 s4\cresc }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef treble r8 <g g'>-. r <bes bes'>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass <g g'>8-.[ <es es'>-.] r <bes, bes>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass <g, g>8-.[ <es, es>-.] r <es, es>-. }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble c'''8-. as''16([ g''] f''[ es'' des'' c''] }
  \tag #'left { \clef bass <as, as>8-. <c, c>4.( }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ as' g' f'] es'[ des' c' bes] }
  \tag #'left { \clef bass <des, des>4 <es, es> }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as8) c'''16([ bes''] \tuplet 6/4 { as''16[ g'' f'' es''16 des'' c''] } }
  \tag #'left { \clef bass <f, f>8)-. <c, c>4.( }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble bes'16[ as' g' f'] es'[ des' c' bes] }
  \tag #'left { \clef bass <des, des>4 <es, es> }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as8)-. es'''32([ des''' c''' bes''] \tuplet 6/4 { as''16[ g'' f'' es''16 des'' c''] } }
  \tag #'left { \clef bass <f, f>8)-. <c, c>4.( }
  \tag #'dynamics { s8 s4.\!\ff }
  |

  \tag #'right { \clef treble bes'16[ as' g' f'] es'[ des' c' bes] }
  \tag #'left { \clef bass <des, des>4 <es, es>) }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as8)-. r as''16([ f'' bes'' d'']) }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'dynamics { s4 s4\p }
  |

  \tag #'right { \clef treble \split { s4. ges''8~ } { ges''16[ es'' as'' c''] f''[ des'' ges'' bes'] } }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'dynamics { s4.\< s8\sf\> }
  |

  \tag #'right { \clef treble \split { ges''8([ f'')] } { es''16[ a' des'' bes'] } des''([ bes' fes'' g'] }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'dynamics { s8. s16\! s4\p }
  |

  \tag #'right { \clef treble bes'16[ g' des'' fes'] g'[ fes' bes' des'] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef treble as'16[ es' c'' c')] as'([ f' bes' d']) }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'dynamics { s4 s4\< }
  |

  \tag #'right { \clef treble \split { s4. ges'8~ } { ges'16[ es' as' c'] f'[ des' ges' bes] } }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'dynamics { s4. s8\> }
  |

  \tag #'right { \clef treble \split { ges'8[ f'] s4 } { es'16[ a des' bes] \clef bass des'[ bes fes' g] } }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'dynamics { s8. s16\! s4\p }
  |

  \tag #'right { \clef bass bes16[ g des' fes] g[ fes bes des] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef bass as16[ es c' c(] des'[ bes fes' g] }
  \tag #'left { \clef bass \split { as,,8 as,4.~ } { as,,2~ } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef bass bes16[ g des' fes] g[ fes bes des)] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef bass as16([ es c' c] des'[ bes fes' g] }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'dynamics { s8\decresc s4. }
  |

  \tag #'right { \clef bass bes16[ g des' fes] g[ fes bes des)] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef bass as16([ es c' c] es[ c as as,]) }
  \tag #'left { \clef bass as,,2~ }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef bass c16[ as, es es,] as,[ es, c c,] }
  \tag #'left { \clef bass as,,2 }
  \tag #'dynamics { s2 }
  |

  \tag #'right { \clef bass r2 }
  \tag #'left { \clef bass as,,2~ }
  \tag #'dynamics { s2\!\pp }
  |

  \partial 4
  \tag #'right { \clef bass r4 }
  \tag #'left { \clef bass as,,4 }
  \tag #'dynamics { s4 }
  |

  \bar "|."
}
