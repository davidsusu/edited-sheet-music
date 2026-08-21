\version "2.24.1"

\include "../../shared/lib.ly"

workTitle = "Piano Sonata No. 12"
workComposer = "Ludwig van Beethoven"
workOpus = "Op. 26"
workDate = "1800–1801"
workEditor = "Dávid Horváth"

firstMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers

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
  \tag #'common { s8-\p }
  |

  \tag #'right { \clef treble \split { es'8-2\altFinger "3)"( as'-3) as'^. } { c'4. } }
  \tag #'left { \clef bass \split { es8( as) as^. } { <es as,>4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'16( g') g'16.( f'32 g'16. es'32) } { <es' des'>4. } }
  \tag #'left { \clef bass \split { as16( g) g16.( f32 g16. es32) } { <es bes,>4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4( bes'8) } { r8 es' <es' bes>\altFinger "(1 5;2 5)"\tag #'extended \altFinger "(1 4;2)" } }
  \tag #'left { \clef bass \split { as4 es8 } { r8 c g, } }
  \tag #'common { s4.-\cresc }
  |

  \tag #'right { \clef treble \split { des''16.[( c''32) bes'8-.] \acciaccatura { c''8 } bes'32( a' bes' c'') } { <as' es' c'>8 <g' es' bes> s } }
  \tag #'left { \clef bass <es as,>8 <es es,> r }
  \tag #'common { s8\!-\sf\> s8\! s8-\p }
  |

  \tag #'right { \clef treble <des'' as'>4( <c'' as'>8 }
  \tag #'left { \clef bass f8( f' es' }
  \tag #'common { s4.-\cresc }
  |

  \tag #'right { \clef treble <f'' bes' as'>8 <bes' g'> <es'' as'>) }
  \tag #'left { \clef bass d'8 des' c') }
  \tag #'common { s4 s16 s\! }
  |

  \tag #'right { \clef treble <as' f'>8^( <des'' bes' fes'> <c'' as' es'> }
  \tag #'left { \clef bass f8( g as) }
  \tag #'common { s4-\p\tweak extra-offset #'(0 . -0.5) -\cresc s16 s\! }
  |

  \tag #'right { \clef treble \split { <a' fis'>8 <bes' g'>16) r  es'16. es'32-. } { es'4 s8 } }
  \tag #'left { \clef bass \split { s4 es16. es32-. } { es4 r8 } }
  \tag #'common { s4. \tweak extra-offset #'(0 . -1) -\p }
  |

  \tag #'right { \clef treble \split { es'16( as') as'-. as'-. as'-. as'-. } { c'4. } }
  \tag #'left { \clef bass \split { es16( as) as-. as-. as-. as-. } { <es as,>4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'16( g') g'16.( f'32 g'16. es'32) } { <es' des'>4. } }
  \tag #'left { \clef bass \split { as16( g) g16.( f32 g16. es32) } { <es bes,>4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4( bes'8) } { r8 es' <es' bes> } }
  \tag #'left { \clef bass \split { as4 es8 } { r8 c g, } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { des''16.[( c''32) bes'8]-. \acciaccatura { c''8 } bes'32( a' bes' c'') } { <as' es' c'>8 <g' es' bes> s } }
  \tag #'left { \clef bass <es as,>8 <es es,> r }
  \tag #'common { s8 \tweak extra-offset #'(0 . -0.6) -\sf s8 s8 }
  |

  \tag #'right { \clef treble <des'' as'>4( <c'' as'>8 }
  \tag #'left { \clef bass f8( f' es' }
  \tag #'common { s4. \tweak extra-offset #'(0 . 1) -\cresc }
  |

  \tag #'right { \clef treble <f'' bes' as'>8 <bes' g'> <es'' as'>) }
  \tag #'left { \clef bass d'8 des' c') }
  \tag #'common { s4 s16 s\! }
  |

  \tag #'right { \clef treble \acciaccatura { bes'8 } as'32[( g' as' bes']) <c'' as' es'>8( <bes' g' des'> }
  \tag #'left { \clef bass r8 es( es,) }
  \tag #'common { s4. \tweak extra-offset #'(0 . -1) \p }
  |

  \tag #'right { \clef treble <as' c'>8) r8 r }
  \tag #'left { \clef bass as,8[_. as,,]_. f'~ }
  \tag #'common { s4 s8-\sf }
  |

  \tag #'right { \clef treble <c'' a'>8( <bes' g'> <c'' a'> }
  \tag #'left { \clef bass f'4 es'8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <des'' bes'>8 <f'' des''>) r }
  \tag #'left { \clef bass es'16[( des' c' bes]) es'8~ }
  \tag #'common { s4 s8-\sf }
  |

  \tag #'right { \clef treble <bes' g'>8( <as' f'> <bes' g'> }
  \tag #'left { \clef bass es'4 des'8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c'' as'>8[ <es'' c''>]) <es'' es'>~-> }
  \tag #'left { \clef bass des'16( c' bes as) r8 }
  \tag #'common { s4.}
  |

  \tag #'right { \clef treble <es'' es'>8( <d'' d'> <e'' e'> }
  \tag #'left { \clef bass \split { c'8( b <des' bes> } { as4( g8 } }
  \tag #'common { s4.-\cresc }
  |

  \tag #'right { \clef treble \split { <f'' f'>8[ <g'' g'>]) as''16.( f''32) } { s4 as'8 } }
  \tag #'left { \clef bass \split { c'8) c' c' } { as8 e f16 as) } }
  \tag #'common { s4 s16. s32\! }
  |

  \tag #'right { \clef treble
    \splitThree
      { es''4( d''8)\trill }
      { \once \override NoteColumn.force-hshift = #0.5 g'8 bes' s }
      { \once \override NoteColumn.force-hshift = #0.5 g'4( <as' f'>8) }
  }
  \tag #'left { \clef bass <bes bes,>4( <b b,>8 }
  \tag #'common { s4.-\p }
  |

  \tag #'right { \clef treble \split { es''4( g''16. f''32) } { <g' es'>8 c'' <c'' f'> } }
  \tag #'left { \clef bass <c' c>8 <as as,> <a a,>) }
  \tag #'common { s4 \tweak extra-offset #'(0 . -1.2) -\cresc s8\! \tweak extra-offset #'(0 . -1.2) -\sf }
  |

  \tag #'right { \clef treble
    \splitThree
      { es''4( \afterGrace d''8)\trill { c''16 d'' } }
      { \once \override NoteColumn.force-hshift = #0.5 g'8 bes' s }
      { \once \override NoteColumn.force-hshift = #0.5 g'4( <as' f'>8) }
  }
  \tag #'left { \clef bass <bes bes,>4 <bes, bes,,>8 }
  \tag #'common { s4.-\p }
  |

  \tag #'right { \clef treble \split { es''8-.( es''-. es''-.) } { <g' es'>8( <as' d'> <bes' des'>) } }
  \tag #'left { \clef bass \split { es8 es es } { es,8( f, g,) } }
  \tag #'common { s4-\cresc s16 s16\! }
  |

  \tag #'right { \clef treble \split { es'16( as') as'-. as'-. as'-. as'-. }  { <es' c'>4. } }
  \tag #'left { \clef bass \split { es16( as) as-. as-. as-. as-. } { <es as,>4. } }
  \tag #'common { s4.-\p }
  |

  \tag #'right { \clef treble \split { as'16( g') g'16.( f'32 g'16. es'32) } { <es' des'>4. } }
  \tag #'left { \clef bass \split { as16( g) g16.( f32 g16. es32) } { <es bes,>4. } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4( bes'8) } { r8 es' <es' bes> } }
  \tag #'left { \clef bass \split { as4 es8 } { r8 c g, } }
  \tag #'common { s4.-\cresc }
  |

  \tag #'right { \clef treble \split { des''16.( c''32) bes'8-. \acciaccatura { c''8 } bes'32[( a' bes' c'']) } { <as' es' c'>8 <g' es' bes> s } }
  \tag #'left { \clef bass <es as,>8 <es es,> r }
  \tag #'common { s4\!-\sf s8-\p }
  |

  \tag #'right { \clef treble <des'' des'>4( <c'' c'>8 }
  \tag #'left { \clef bass f,8( <as f> <as es> }
  \tag #'common { s4.-\cresc }
  |

  \tag #'right { \clef treble <f'' f'>8 <bes' bes> <es'' es'>) }
  \tag #'left { \clef bass <as d>8 <g des> <as c>) }
  \tag #'common { s4 s16 s16\! }
  |

  \tag #'right { \clef treble \acciaccatura { bes'8 } as'32[( g' as' bes']) <c'' as' es'>8( <bes' g' des'> }
  \tag #'left { \clef bass r8 es( es,) }
  \tag #'common { s4.-\p }
  |

  \tag #'right { \clef treble <as' c'>8) r }
  \tag #'left { \clef bass as,8[_. as,,]_. }
  \tag #'common { s4 }

  \bar "||"
  
  \breakLine

  \mark \markup { \bold "Variation I" }
  \partial 8

  \tag #'right { \clef bass es8~ }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef bass es32[( c es as] c'8-> as }
  \tag #'left { \clef bass <as, es, as,,>4.}
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass g32-.[) \clef treble des'( es' g'] des''8-> g' }
  \tag #'left { \clef bass <bes, es, bes,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble as'32-.[) es( as c']) es'8 <es' bes> }
  \tag #'left { \clef bass <c es, c,>4 <es g,>8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { <es' as>8 <es' bes g> \acciaccatura { c'8 } bes32[( a bes c']) } { des'16 c' s4 } }
  \tag #'left { \clef bass <es as,>8 <es es,> r }
  \tag #'common { s8\sf s4 }
  |

  \tag #'right { \clef treble des'32-.[( des' f' as'] des''8-> c''16) r }
  \tag #'left { \clef bass \once \override Stem.direction = #down f,8-. <as f>( <as es> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 f'[( as' bes'] f''8 es''16) r }
  \tag #'left { \clef bass <as d>8 <g des> <as c>) }
  \tag #'common { s8 s\sf s }
  |

  \tag #'right { \clef bass r32 des[( f as] <des' bes fes>8 <c' as es> }
  \tag #'left { \clef bass f,8( g, as, }
  \tag #'common { s8 s\< s16 s\! }
  |

  \tag #'right { \clef bass \split { <a fis>8 <bes g>16) r } { es4 } es8~ }
  \tag #'left { \clef bass es,4) r8 }
  \tag #'common { s4 s8\p }
  |

  \tag #'right { \clef bass es32[( c es as] c'8-> as }
  \tag #'left { \clef bass <as, es, as,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass g32[-.) \clef treble des'( es' g'] des''8-> g' }
  \tag #'left { \clef bass <bes, es, bes,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'32-.[) es( as c']) es'16-. es'-. es'-. es'-. } { s4 bes8( } }
  \tag #'left { \clef bass \split { \once \override NoteColumn.force-hshift = #0.5 \once \override Stem.length = #6 c,8 es16[-. es-. es-. es]-. } { c4 g,8 } }
  \tag #'common { s8 s\cresc s }
  |

  \tag #'right { \clef treble \split { <es' as>8 <es' bes g> \acciaccatura { c'8 } bes32[( a bes c']) } { des'16 c') s4 } }
  \tag #'left { \clef bass <es as,>8 <es es,> r }
  \tag #'common { s8\!\sf s s\p }
  |

  \tag #'right { \clef treble des'32[-. des'( f' as'] des''8-> c''16) r }
  \tag #'left { \clef bass f,8-. <as f>( <as es> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 f''[( as'' bes''] f'''8 es'''16) r }
  \tag #'left { \clef bass <as d>8 <g des> <as c>) }
  \tag #'common { s8 s\sf s }
  |

  \tag #'right { \clef treble 
    <<
      { \voiceOne r32 c'32[( es' as'] c''8.^\sf bes'16 }
      \new Voice { \voiceTwo
        s16.
        \once \override Stem.direction = #down as'32_~
        <as' es'>8[ <g' des'>8]
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
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as' c'>8) r4 }
  \tag #'left { \clef bass as,8[-.) as,,]-. f'~ }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c'' a'>8( <bes' g'> <c'' a'> }
  \tag #'left { \clef bass f'32[ f a c'] f'8.(_\sf es'16) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <des'' bes'>8 <f'' des''>) r16 <des'' bes'>32( <c'' as'>) }
  \tag #'left { \clef bass es'32[( des' c' bes] a[ bes des' bes]) bes,8 }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <bes' g'>8( <as' f'> <bes' g'> }
  \tag #'left { \clef bass es'32[ es g bes] es'8.(_\sf des'16) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c'' as'>8 <es'' c''>) r16 <es'' es'>~ }
  \tag #'left { \clef bass des'32[( c' bes as] g[ as c' as]) as,8 }
  \tag #'common { s4 s16 s\sf }
  |

  \tag #'right { \clef treble <es'' es'>32 es'[( es'' es']) r d'( d'' d') r e'( e'' e') }
  \tag #'left { \clef bass <c' as>8( <b as> <des' bes g> }
  \tag #'common { s16\p s\cresc s4 }
  |

  \tag #'right { \clef treble r32 f'( f'' f') r g'( g'' g') r as'( as'' as') }
  \tag #'left { \clef bass <c' as>8 <c' e> <c' f>) }
  \tag #'common { s4 s16. s32\! }
  |

  \tag #'right { \clef treble <es'' bes' g'>4 <d'' as' f'>8 }
  \tag #'left { \clef bass r32 bes,,[-. es,-. g,]-. bes,[-. es-. g-. a]-. b8 }
  \tag #'common { s4\p s8\sf }
  |

  \tag #'right { \clef treble <es'' g' es'>4 <f'' c'' f'>8 }
  \tag #'left { \clef bass r32 c,[-. es,-. g,]-. c[-. es-. g-. c']-. a8 }
  \tag #'common { s4 s8\sf }
  |

  \tag #'right { \clef treble <es'' bes' g'>4  \afterGrace <d'' as' f'>8\trill { c''16 d'' } }
  \tag #'left { \clef bass r32 bes,,[-. es,-. g,]-. bes,[-. es-. g-. a]-. bes16( bes,) }
  \tag #'common { s4 s8\sf }
  |

  \tag #'right { \clef treble <es'' g' es'>32-. es'[( g' es'']) r d'( as' es'') r des'( bes' es'') }
  \tag #'left { \clef bass es16( es, f, es, g, es,) }
  \tag #'common { s4\cresc s16. s32\! }
  |

  \tag #'right { \clef bass c'32[ c( es as] c'8-> as }
  \tag #'left { \clef bass <as, es, as,,>4. }
  \tag #'common { s4.\p }
  |

  \tag #'right { \clef bass g32[-.) \clef treble des'( es' g'] des''8-> g' }
  \tag #'left { \clef bass <bes, es, bes,,>4. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'32-.[) es( as c']) es'16-. es'-. es'-. es'-. } { s4 bes8( } }
  \tag #'left { \clef bass \split { \once \override NoteColumn.force-hshift = #0.5 \once \override Stem.length = #6 c,8 es16[-. es-. es-. es]-. } { c4 g,8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { <es' as>8 <es' bes g> \acciaccatura { c'8 } bes32[( a bes c']) } { des'16^\sf c') s4 } }
  \tag #'left { \clef bass <es as,>8 <es es,> r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble des'32[-.( des' f' as'] des''8-> c''16) r }
  \tag #'left { \clef bass \once \override Stem.direction = #down f,8-. <as f>( <as es> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 f''[( as'' bes''] f'''8 es'''16) r }
  \tag #'left { \clef bass <as d>8 <bes g des> <c' as c>) }
  \tag #'common { s8 s4-\sf }
  |

  \tag #'right { \clef treble 
    <<
      { \voiceOne r32 c'32[( es' as'] c''8.^\sf bes'16 }
      \new Voice { \voiceTwo
        s16.
        \once \override Stem.direction = #down as'32_~
        <as' es'>8[ <g' des'>8]
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
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as' c'>8) r }
  \tag #'left { \clef bass as,8[ as,,] }
  \tag #'common { s4 }

  \bar "||"

  \breakLine

  \mark \markup { \bold "Variation II" }
  \partial 8

  \tag #'right { \clef treble r32 <es' c'>[ r <es' c'>] }
  \tag #'left { \clef bass <es es,>16 <es es,> }
  \tag #'common { s8 \tweak extra-offset #'(0 . -1) \p }
  |

  \tag #'right { \clef treble r32 <es' c'>[ r <es' c'> r <es' c'> r <es' c'> r <es' c'> r <es' c'>] }
  \tag #'left { \clef bass <es es,>16( <as as,>) <as as,>-. <as as,>-. <as as,>-. <as as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es' des' bes>[ r <es' des' bes> r <es' des' bes> r <es' des' bes> r <es' des' bes> r <es' des' bes>] }
  \tag #'left { \clef bass <as as,>16( <g g,>) <g g,>-. <f f,>-. <g g,>-. <es es,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es' c'>[ r <es' c'> r <as' es' c'> r <as' es' c'> r <g' es' des'> r <g' es' des'>] }
  \tag #'left { \clef bass <es es,>16-. <as as,>-. <es es,>-. <as as,>-. <es es,>-. <bes bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as' es'>[ r <as' es'> r <g' es'> r <g' es'>] r <as' ges' es'>[ r <as' ges' es'>] }
  \tag #'left { \clef bass <es es,>16-. <c' c>-. <es es,>-. <bes bes,>-. \acciaccatura { c'8 } bes32[( a bes c']) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as' f'>[ r <as' f'> r <as'' as'> r <as'' as'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass des16-. des'-. f-. des'-. es-. c'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as'' as'>[ r <as'' as'> r <g'' g'> r <g'' g'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass d16-. f'-. des-. bes-. c-. es'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <des''' des''>[ r <f'' f'> r <fes'' fes'> r <es'' es'> r <es'' es'> r <es'' es'>] }
  \tag #'left { \clef bass f,16-. as-. g,-. des'-. as,-. c'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' fis' es'>[ r <es'' fis' es'> r <es'' g' es'> r <es'' g' es'>] r <es'' es'>[ r <es'' es'>] }
  \tag #'left { \clef bass es,16-. a-. es,-. bes-. <es es,>[ <es es,>] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' c'' es'>[ r <es'' c'' es'> r <es'' c'' es'> r <es'' c'' es'> r <es'' c'' es'> r <es'' c'' es'>] }
  \tag #'left { \clef bass <es es,>16( <as as,>) <as as,>-. <as as,>-. <as as,>-. <as as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' des'' es'>[ r <es'' des'' es'> r <es'' des'' es'> r <es'' des'' es'> r <es'' des'' es'> r <es'' g' es'>] }
  \tag #'left { \clef bass <as bes,>16( <g bes,>) <g bes,>-. <f bes,>-. <g bes,>-. <es bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' as' es'>[ r <es'' c'' es'> r <es'' as' es'> r <es'' c'' es'> r <es'' bes' es'> r <es'' des'' es'>] }
  \tag #'left { \clef bass <es c>16-. as-. <es c>-. as-. <es g,>-. bes-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' c'' as' es'>[ r <es'' c'' as' es'> r <es'' bes' g' es'> r <es'' bes' g' es'>] r <es'' as' ges' es'>[ r <es'' as' ges' es'>] }
  \tag #'left { \clef bass <es as,>16-. c'-. <es es,>-. bes-. \acciaccatura { c'8 } bes32[( a bes c']) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <f'' as' f'>[ r <f'' as' f'> r <as'' as'> r <as'' as'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass des16-. des'-. f-. des'-. es-. c'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as'' as'>[ r <as'' as'> r <g'' g'> r <g'' g'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass d16-. f'-. des-. bes-. c-. es'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' c'' es'>[ r <es'' c'' es'> r <es'' c'' as' es'> r <es'' c'' as' es'> r <g' es' des'> r <g' es' des'>] }
  \tag #'left { \clef bass es16-. as-. es,-. c'-. es,-. bes-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as' es' c'>[ r <as' es' c'>] r8 r32 <f'' f'>[ r <f'' f'>] }
  \tag #'left { \clef bass as,16[-. as]-. as,,8 a,16[-. c']-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <f'' f'>[ r <f''' f''> r <e''' e''> r <e''' e''> r <es''' es''> r <es''' es''>] }
  \tag #'left { \clef bass a,16-. c'-. g,-. bes-. a,-. c'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <des''' des''>[ r <des''' des''> r <bes'' bes'> r <bes'' bes'>] r <f'' des'' f'>[ r <fes'' des'' fes'>] }
  \tag #'left { \clef bass bes,16[-. des'-. des-. f']-. <bes, bes,,>[( <as, as,,>] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' des'' es'>[ r <es''' es''> r <d''' d''> r <d''' d''> r <des''' des''> r <des''' des''>] }
  \tag #'left { \clef bass <g, g,,>16) bes-. f,-. as-. g,-. bes-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <c''' c''>[ r <c''' c''> r <as'' as'> r <as'' as'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass as,16-. c'-. c-. es'-. c[-. es]-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as'' as'>[ r <as'' as'> r <as'' as'> r <as'' as'> r <g'' g'> r <g'' g'>] }
  \tag #'left { \clef bass c16-. es-. b,-. d-. bes,-. e-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <c''' c''>[ r <c''' c''> r <e'' c'' bes'> r <e'' c'' bes'> r <f'' c'' as'> r <f'' c'' as'>] }
  \tag #'left { \clef bass as,16-. f g,-. g-. f,[ as32( f]) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <g'' g'>[ r <g'' g'> r <g'' g'> r <g'' g'> r <as'' f'' as'> r <as'' f'' as'>] }
  \tag #'left { \clef bass bes,16-. es-. bes,-. es-. b,-. d-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <g'' es'' g'>[ r <g'' es'' g'> r <g'' es'' g'> r <g'' es'' g'> r <c''' es'' c''> r <c''' es'' c''>] }
  \tag #'left { \clef bass c16-. es-. c-. es-. a,[ g32( f]) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <bes'' g'' es'' bes'>[ r <bes'' g'' es'' bes'> r <es'' bes' g'> r <es'' bes' g'> r <f'' bes' as'> r <f'' bes' as'>] }
  \tag #'left { \clef bass bes,16-. es-. bes,-. es-. bes,,-. d-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' bes' g'>[ r <es'' bes' g'> r <d'' as' es'> r <d'' as' es'> r <des'' bes' es'> r <des'' bes' es'>] }
  \tag #'left { \clef bass es,16-. es-. f,-. es-. g,-. es-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <c'' as' es'>[ r <es'' c'' as' es'> r <es'' c'' as' es'> r <es'' c'' as' es'> r <es'' c'' as' es'> r <es'' c'' as' es'>] }
  \tag #'left { \clef bass <es as,>16( <as as,>) <as as,>-. <as as,>-. <as as,>-. <as as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' des'' bes' es'>[ r <es'' des'' bes' es'> r <es'' des'' bes' es'> r <es'' des'' bes' es'> r <es'' des'' bes' es'> r <es'' des'' bes' es'>] }
  \tag #'left { \clef bass <as as,>16( <g g,>) <g g,>-. <f f,>-. <g g,>-. <es es,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' c'' as' es'>[ r <es'' c'' as' es'> r <es'' c'' as' es'> r <es'' c'' as' es'> r <es'' des'' g' es'> r <es'' g' es'>] }
  \tag #'left { \clef bass <es es,>16-. <as as,>-. <es es,>-. <as as,>-. <es es,>-. <bes bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' as' es'>[ r <es'' as' es'> r <es'' g' es'> r <es'' g' es'> r <es'' as' ges' es'> r <es'' as' ges' es'>] }
  \tag #'left { \clef bass <es es,>16-. <c' c>-. <es es,>-. <bes bes,>-. \acciaccatura { c'8 } bes32[( a bes c']) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <f'' as' f'>[ r <f'' as' f'> r <as'' as'> r <as'' as'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass des16-. des'-. f-. des'-. es-. c'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as'' as'>[ r <as'' as'> r <g'' g'> r <g'' g'> r <as'' as'> r <as'' as'>] }
  \tag #'left { \clef bass d16-. f'-. des-. bes-. c-. es'-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <es'' c'' es'>[ r <es'' c'' es'> r <es'' c'' as' es'> r <es'' c'' as' es'> r <g' es' des'> r <g' es' des'>] }
  \tag #'left { \clef bass es16-. as-. es,-. c'-. es,-. bes-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble r32 <as' es' c'>[ r <as' es' c'>] r8 }
  \tag #'left { \clef bass as,16[-. as]-. as,,8 }
  \tag #'common { s4 }

  \bar "||"

  \breakLine

  \mark \markup { \bold "Variation III" }
  \key as \minor
  \partial 8

  \tag #'right { \clef bass
    es16 es~ }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef bass es16 as8 as as16~ }
  \tag #'left { \clef bass <ces as,>8 <ces as,> <ces as,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass as16 g8 g g16~ }
  \tag #'left { \clef bass <des bes,>8 <des bes,> <des bes,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass g16 as8 as as16~ }
  \tag #'left { \clef bass <es ces>8 <es ces> <es ces> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass as16 beses8 beses beses16~ }
  \tag #'left { \clef bass <fes des>8 <fes des> <fes des> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass beses16 c'8 c' c'16~ }
  \tag #'left { \clef bass <ges es>8 <beses ges es> <beses ges es> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass c'16 des'8 des' des'16~ }
  \tag #'left { \clef bass <as fes>8 <as fes> <as fes> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass des'16 d'8 d' d'16~ }
  \tag #'left { \clef bass <ces' f>8( <bes f> <as f>) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass d'8( es') \clef treble <es' es>16[ <es' es>~] }
  \tag #'left { \clef bass \split { as8 g s } { es4 s8 } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <es' es>16 <as' as>8 <as' as> <as' as>16~ }
  \tag #'left { \clef bass as,,8 <ces as,> <ces as,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as' as>16 <g' g>8 <g' g> <g' g>16~ }
  \tag #'left { \clef bass bes,,8 <des bes,> <des bes,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g' g>16 <as' as>8 <as' as> <as' as>16~ }
  \tag #'left { \clef bass ces,8 <es ces> <es ces> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as' as>16 <beses' beses>8 <beses' beses> <beses' beses>16~ }
  \tag #'left { \clef bass des,8 <fes des> <fes des> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <beses' beses>16 <c'' c'>8 <c'' c'> <c'' c'>16~ }
  \tag #'left { \clef bass es,8 <beses ges es> <beses ges es> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c'' c'>16 <des'' des'>8 <des'' des'> <d'' d'>16~ }
  \tag #'left { \clef bass fes,8 <as fes> <ces' as f> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' d'>16 <es'' es'>8 <es'' es'> <es'' es'>16 }
  \tag #'left { \clef bass <ces' as es>8 <es ces as, es,> <es bes, g, es,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r s } { s4 beses'8~ } }
  \tag #'left { \clef bass <as as,>8-. as,,-. r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \splitThree { <ges''~ es''>4. } { s8 as' c'' } { beses'8 as'4~ } }
  \tag #'left { \clef bass r8 c'( as }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \splitThree { ges''8 fes'' r } { des''4 s8 } { as'4 fes'8~ } }
  \tag #'left { \clef bass des'8 des) r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \splitThree { <des''~ bes'>4. } { s8 es' g' } { fes'8 es'4~ } }
  \tag #'left { \clef bass r8 g( es }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \splitThree { des''8( ces'') <ces'' ces'>16[-. <ces'' ces'>~]} { as'4 s8 } { es'4 s8 } }
  \tag #'left { \clef bass as8 as,) r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <ces'' ces'>16 <bes' bes>8 <bes' bes>16 <as'' as'>[ <as'' as'>~] }
  \tag #'left { \clef bass d,8 <f d> <bes d> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as'' as'>16 <ges'' ges'>8 <ges'' ges'>16 <f'' f'>[ <f'' f'>~] }
  \tag #'left { \clef bass es,8 <bes es> <as as,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <f'' f'>16 <es'' es'>8 <es'' es'>16 <d'' d'>[ <d'' d'>~] }
  \tag #'left { \clef bass bes,,8 <ges bes,> <bes, bes,,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' d'>16 <es'' es'>8 <es'' es'>16 <f'' f'>[ <f'' f'>~] }
  \tag #'left { \clef bass <ces ces,>8 <ges ces> <a, a,,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <f'' f'>16 <es'' es'>8 <es'' es'>16 <d'' d'>[ <d'' d'>~] }
  \tag #'left { \clef bass <bes, bes,,>8 <ges es bes,> <bes, bes,,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' d'>16 <es'' es'>8 <es' es>16 <es' es>[ <es' es>~] }
  \tag #'left { \clef bass <es es,>8( <des des,> <bes, bes,,>) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <es' es>16 <as' as>8 <as' as> <as' as>16~ }
  \tag #'left { \clef bass as,,8 <ces as,> <ces as,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as' as>16 <g' g>8 <g' g> <g' g>16~ }
  \tag #'left { \clef bass bes,,8 <des bes,> <des bes,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g' g>16 <as' as>8 <as' as> <as' as>16~ }
  \tag #'left { \clef bass ces,8 <es ces> <es ces> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as' as>16 <beses' beses>8 <beses' beses> <beses' beses>16~ }
  \tag #'left { \clef bass des,8 <fes des> <fes des> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <beses' beses>16 <c'' c'>8 <c'' c'> <c'' c'>16~ }
  \tag #'left { \clef bass es,8 <beses ges es> <beses ges es> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c'' c'>16 <des'' des'>8 <des'' des'> <d'' d'>16~ }
  \tag #'left { \clef bass fes,8 <as fes> <ces' as f> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <d'' d'>16 <es'' es'>8 <es'' es'> <es'' es'>16 }
  \tag #'left { \clef bass <ces' as es>8 <es ces as, es,> <es bes, g, es,> }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble as'8 r }
  \tag #'left { \clef bass <as as,>8-.[ as,,-.] }
  \tag #'common { s4 }

  \bar "||"

  \breakLine

  \mark \markup { \bold "Variation IV" }
  \key as \major
  \partial 8

  \tag #'right { \clef treble es'8~ }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8 }
  |

  \tag #'right { \clef treble es'8[( as']-.) as''~ }
  \tag #'left { \clef bass <c as,>8-. r <c' as>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble as''8[( g'']-.) g'~ }
  \tag #'left { \clef bass <des' bes>8-. r <des bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble g'8[( as']-.) <c''' as''>~ }
  \tag #'left { \clef bass <es c>8-. r \clef treble <es' c'>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c''' as''>8[( <bes'' g''>]-.) <des''^~ f'>( }
  \tag #'left { \clef treble <f' d'>8[-. <g' es'>]-. \clef bass <as f>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <des'' fes'>8[ <c'' es'>]-.) <f''' f''>~ }
  \tag #'left { \clef bass <bes g>8[-. <c' as>]-. \clef treble <as' d'>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <f''' f''>8[( <es''' es''>]-.) \clef bass <d' ces' as> }
  \tag #'left { \clef treble <bes' g' des'>8[-. <c'' as' c'>]-. \clef bass f,( }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass <des' bes fes>8 <c' as es> <ces' as f>~ }
  \tag #'left { \clef bass g,8 as, d, }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass <ces' as f>8[ <bes g>] <es' es>~ }
  \tag #'left { \clef bass es,8 es) r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass <es' es>8[( <as' as>]) \clef treble <as'' as'>~ }
  \tag #'left { \clef bass <as, as,,>8 r <c' as>16-. <c' as>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as'' as'>8[( <g'' g'>]) <g' g>~ }
  \tag #'left { \clef bass <des' bes>8-. r <des bes,>16-. <des bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g' g>8[( <as' as>]) <c''' as''>~ }
  \tag #'left { \clef bass <es c>8-. r \clef treble <es' c'>16-. <es' c'>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c''' as''>8[( <bes'' g''>]) <des''~ f'>( }
  \tag #'left { \clef treble <f' d'>16[-. <f' d'>-. <g' es'>8]-. \clef bass <as f>16-. <as f>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <des'' fes'>8[ <c'' es'>]) <f''' f''>~ }
  \tag #'left { \clef bass <bes g>16[-. <bes g>-. <c' as>8]-. \clef treble <as' d'>16-. <as' d'>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <f''' f''>8[( <es''' es''>])\split { as'~ } { <d' ces'>8~ } }
  \tag #'left { \clef treble <bes' g' des'>16[-. <bes' g' des'>-. <c'' as' c'>8]-. \clef bass f16-. f-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4( g'8 } { <d' ces'>8 <es' c'> <des' bes> } }
  \tag #'left { \clef bass es8-. r es,16-. es,-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8) } { <c' as>8 } r8 <ges' ges>~ }
  \tag #'common { s4. }
  \tag #'left { \clef bass as,8[-. as,,]-. <des bes,>-. }
  |

  \tag #'right { \clef treble <ges' ges>8[( <f' f>]) <es''' es''>~ }
  \tag #'left { \clef bass <c a,>8-. r <f' a>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <es''' es''>8[( <des''' des''>]) <fes' fes>~ }
  \tag #'left { \clef bass <f' bes>8-. r <ces as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <fes' fes>8[( <es' es>]) <des''' des''>~ }
  \tag #'left { \clef bass <bes, g,>8-. r <es' g>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <des''' des''>8[( <c''' c''>]) \clef bass \split { c'8~ } { <f c>8 } }
  \tag #'left { \clef bass <es' as>8-. r as,-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass \split { c'8[( b]) } { <f d>4 } \clef treble \split { bes'8~( } { \once \override NoteColumn.force-hshift = #0.5 <g' e' des'>8~ } }
  \tag #'left { \clef bass g,8[-. g,,]-. c-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { bes'8[ a']) f''~ } { \once \override NoteColumn.force-hshift = #0.5 <g' e' des'>8[ \once \override NoteColumn.force-hshift = #0.5 <f' c'>] <c'' f'>] } }
  \tag #'left { \clef bass f8[-. f,]-. a-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { f''8[( es'']) } { <bes' g'>4 } \clef bass \split { d'8~ } { <as f>8~ } }
  \tag #'left { \clef bass bes8[-. bes,]-. b,-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass \split { d'8[( es']) } { <as f>8[( <g es>]) } \clef treble \split { f''8~ } { <c'' f'>8 } }
  \tag #'left { \clef bass c8[-. c,]-. a8-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { f''8[( es'']) } { <bes' g'>4 } \clef bass \split { d'8 } { <as f>8 } }
  \tag #'left { \clef bass bes8[-. bes,]-. bes,,-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass \split { es'8 es' es'~ } { <g es>8 <as f> <bes g> } }
  \tag #'left { \clef bass es,16[-. des32 c] bes,[ as, g, f,] es,[ des, c, bes,,] }
  \tag #'common { s4. }
  |

  \tag #'right { \clef bass \split { es'8[( as']) } { <c' as>8 s8 } \clef treble <as'' as'>~ }
  \tag #'left { \clef bass as,,8 r <c' as>16-. <c' as>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <as'' as'>8[( <g'' g'>]) <g' g>~ }
  \tag #'left { \clef bass <des' bes>8-. r <des bes,>16-. <des bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <g' g>8[( <as' as>]) <c''' as''>~ }
  \tag #'left { \clef bass <es c>8-. r \clef treble <es' c'>16-. <es' c'>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <c''' as''>8[( <bes'' g''>]) <des''^~ f'>( }
  \tag #'left { \clef treble <f' d'>16[-. <f' d'>-. <g' es'>8]-. \clef bass <as f>16-. <as f>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <des'' fes'>8[ <c'' es'>]) <f''' f''>~ }
  \tag #'left { \clef bass <bes g>16[-. <bes g>-. <c' as>8]-. \clef treble <as' d'>16-. <as' d'>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble <f''' f''>8[( <es''' es''>]) \split { as'8~ } { <d' ces'>8~ } }
  \tag #'left { \clef treble <bes' g' des'>16[-. <bes' g' des'>-. <c'' as' c'>8]-. \clef bass f16-. f-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4( g'8 } { <d' ces'>8 <es' c'> <des' bes> } }
  \tag #'left { \clef bass es8-. r es,16-. es,-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8) } { <c' as>8 } r8 }
  \tag #'left { \clef bass as,8[-. as,,]-. }
  \tag #'common { s4 }

  \bar "||"

  \breakLine

  \mark \markup { \bold "Variation V" }
  \partial 8
  
  \set Timing.beamExceptions = \beamExceptions {
    \tuplet 3/2 { 16[ 16 16] }
    \tuplet 3/2 { 16[ 16 16] }
    \tuplet 3/2 { 16[ 16 16] } |
  }

  \tag #'right { \clef treble \tuplet 3/2 { c'16( f' es' } }
  \tag #'left { \clef bass r8 }
  \tag #'common { s8\p }
  |

  \tag #'right { \clef treble \tuplet 3/2 { c'16 f' es' } \tuplet 3/2 { c'16 bes' as' } \tuplet 3/2 { c'16 bes' as') } }
  \tag #'left { \clef bass \tuplet 3/2 { as,16( es as } \tuplet 3/2 { as,16 es as } \tuplet 3/2 { as,16 es as) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { des'16( as' g' } \tuplet 3/2 { des'16 g' f' } \tuplet 3/2 { des'16 g' es') } }
  \tag #'left { \clef bass \tuplet 3/2 { bes,16( es bes } \tuplet 3/2 { bes,16 es bes } \tuplet 3/2 { bes,16 es bes) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { es'16( bes' as' } \tuplet 3/2 { es'16 bes' as' } \tuplet 3/2 { es'16 c'' bes') } }
  \tag #'left { \clef bass \tuplet 3/2 { c16 es c' } \tuplet 3/2 { c16 es c' } \tuplet 3/2 { g,16 es g } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { es'16( <des'' bes'> <c'' as'> } \tuplet 3/2 { es'16 <c'' as'> <bes' g'>) } \acciaccatura { c''8 } bes'32( a' bes' c'') }
  \tag #'left { \clef bass \tuplet 3/2 { as,16 es as } \tuplet 3/2 { es,16 es es } \tuplet 3/2 { ges,16 es ges } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { as'16( es'' des'' } \tuplet 3/2 { as'16 es'' des'' } \tuplet 3/2 { as'16 des'' c'') } }
  \tag #'left { \clef bass \tuplet 3/2 { f,16 f as } \tuplet 3/2 { f16( as des' } \tuplet 3/2 { es16 as c' } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \tuplet 3/2 { as'16( g'' f'' } \tuplet 3/2 { g'16 c'' bes' } \tuplet 3/2 { as'16 f'' es'') } }
  \tag #'left { \clef bass \tuplet 3/2 { d16 f bes } \tuplet 3/2 { des16 es bes } \tuplet 3/2 { c16 es as) } }
  \tag #'common { s8 s4\cresc }
  |

  \tag #'right { \clef treble \tuplet 3/2 { as'16( es'' d'' } \tuplet 3/2 { fes'16 <es'' c''> <des'' bes'> } \tuplet 3/2 { es'16 <des'' bes'> <c'' as'>) } }
  \tag #'left { \clef bass \tuplet 3/2 { f,16 f as } \tuplet 3/2 { g,16 g bes } \tuplet 3/2 { as,16 as c' } }
  \tag #'common { s4 s16. s32\! }
  |

  \tag #'right { \clef treble <a' fis'>8( <bes' g'>) es'32( es'') es'( es'') }
  \tag #'left { \clef bass \tuplet 3/2 { es,16 es es } \tuplet 3/2 { es16 f es } \tuplet 3/2 { des16 c bes, } }
  \tag #'common { s4.\p }
  |

  \tag #'right { \clef treble \split { es'32( es'' f'' es'' as' es'' f'' es'' as' es'' f'' es'') } { es'8 as' as' } }
  \tag #'left { \clef bass as,32( es as es c es as es c es as es) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { f''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'') } { as'16( g') g'( f' g' es') } }
  \tag #'left { \clef bass bes,32( es g es des es bes es des es bes es) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'32( es'' f'' es'' as' es'' f'' es'' bes' es'' f'' es'') } { as'8 as'( bes') } }
  \tag #'left { \clef bass c32 es as es c es as es g, es g es }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { c''32( es'' f'' es'' bes' es'' f'' es'') \acciaccatura { c''8 } bes'32( a' bes' c'') } { <c'' as'>8( <bes' g'>) s } }
  \tag #'left { \clef bass as,32 es as es es, es g es ges, es ges es }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { des''32( as'' bes'' as'' des'' as'' bes'' as'' c'' as'' bes'' as'' } { des''8 des''( c'' } }
  \tag #'left { \clef bass f,32 f as des' f( as des' as es as c' as) }
  \tag #'common { s4.\cresc }
  |

  \tag #'right { \clef treble \split { f''32 as'' bes'' as'' bes' g'' as'' g'' es'' as'' bes'' as'') } { f''8 bes' es'') } }
  \tag #'left { \clef bass d32( f bes f des es bes es c es as es) }
  \tag #'common { s4 s16. s32\! }
  |

  \tag #'right { \clef treble \split { as'32 es'' f'' es'' c'' es'' f'' es'' bes' es'' f'' es'' } { as'8 <c'' as'> <bes' g'> } }
  \tag #'left { \clef bass es,32 c es as es, c es as es, des es g }
  \tag #'common { s4.\p }
  |

  \tag #'right { \clef treble as'8 r e''32( f'') e''( f'') }
  \tag #'left { \clef bass as,32 c es as as,8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble f''16 f'''8-> e'''-> es'''16->~ }
  \tag #'left { \clef bass a32 f' c' f' g f' bes f' a f' c' f' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble es'''32( des''' c''' bes'' a'' bes'' ges'' f'' es'' des'' c'' bes') }
  \tag #'left { \clef bass bes32 f' des' f' bes,8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble es''16 es'''8-> d'''-> des'''16->~ }
  \tag #'left { \clef bass g32 es' bes es' f es' as es' g es' bes es' }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble des'''32( c''' bes'' as'' g'' as'' d'' es'' b' c'' cis'' d'') }
  \tag #'left { \clef bass as32 es' c' es' as,8 r }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { es''8( d'' e'' } { r32 es'( as' es') r f'( as' f') r g'( des'' g') } }
  \tag #'left { \clef bass c16( c' b, b bes, bes) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { f''8 g'' as'') } { r32 as'( c'' as') r bes'( e'' bes') r c''( f'' c'') } }
  \tag #'left { \clef bass as,16( as g, g f, f) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { es''4 d''8 } { g'32( fis' g' fis' g' bes' as' g' f' as' g' f') } }
  \tag #'left { \clef bass bes,16( bes bes, bes b, b) }
  \tag #'common { s4 s8\sf }
  |

  \tag #'right { \clef treble \split { es''4 f''8 } { es'32( f' g' as' bes' b' c'' b') c''( b' d'' c'') } }
  \tag #'left { \clef bass c16( c' as, as a, a) }
  \tag #'common { s4 s8\sf }
  |

  \tag #'right { \clef treble \split { es''4 d''8 } { g'32 fis' g' fis' g' bes' as' g' f'( as' g' f') } }
  \tag #'left { \clef bass bes,16( bes bes, bes bes,, bes,) }
  \tag #'common { s4 s8\sf }
  |

  \tag #'right { \clef treble \split { es''8( d'' des'') } { r32 es'( g' es') r es'( as' es') r es'( bes' es') } }
  \tag #'left { \clef bass es,16( es f, f g, g) }
  \tag #'common { s4\cresc s16. s32\! }
  |

  \tag #'right { \clef treble \split { c''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'') } { es'16( as') as' as' as' as' } }
  \tag #'left { \clef bass as,32( es as es c es as es c es as es) }
  \tag #'common { s4.\p }
  |

  \tag #'right { \clef treble \split { f''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'') } { as'16( g') g'( f' g' es') } }
  \tag #'left { \clef bass bes,32( es g es des es bes es des es bes es) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { f''32( es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'' } { as'8 as'( bes' } }
  \tag #'left { \clef bass c32 es as es c es as es g, es g es }
  \tag #'common { s4.\cresc }
  |

  \tag #'right { \clef treble \split { f''32 es'' f'' es'' f'' es'' f'' es'') \acciaccatura { c''8 } bes'32 a' bes' c'' } { <c'' as'>8 <bes' g'>) s } }
  \tag #'left { \clef bass as,32 es as es es, es g es ges, es ges es }
  \tag #'common { s4 s16 s16\! }
  |

  \tag #'right { \clef treble \split { des''32( as'' bes'' as'' bes'' as'' bes'' as'' bes'' as'' bes'' as'' } { des''8 des''( c'') } }
  \tag #'left { \clef bass f,32 f as des' f as des' as es as c' as }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { bes''32 as'' bes'' as'' as'' g'' as'' g'' bes'' as'' bes'' as'' } { f''8( bes' es'') } }
  \tag #'left { \clef bass d32 f bes f des es bes es c es as es }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { f''32 es'' f'' es'' f'' es'' f'' es'' f'' es'' f'' es'' } { as'8 <c'' as'> <bes' g'> } }
  \tag #'left { \clef bass es,32 c es as es, c es as es, des es g }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble as'16) es' es' es' es' es' }
  \tag #'left { \clef bass <as es c as,>8 r4 }
  \tag #'common { s16 s16\p s4 }
  |

  \tag #'right { \clef treble \split { c''4( bes'16 as') } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass r8 <es es,>-. <as as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8[( g']) g'16.( as'32) } { <es' des'>16 <es' des'> <es' des'> <es' des'> <es' des'> <es' des'> } }
  \tag #'left { \clef bass r8 <es es,>-. <bes bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { bes'8[ bes'] bes'16.( c''32) } { <es' des'>16 <es' des'> <es' des'> <es' des'> <es' des'> <es' des'> } }
  \tag #'left { \clef bass r8 <es es,>-. <g g,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r r } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass r8 <es es,>-. <as as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { c''16-.( b'-. des''-. c''-. bes'-. as'-.) } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass r8 <es es,>-. <as as,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'16-.( g'-. g'-. fis'-. g'-. as'-.) } { <es' des'>16 <es' des'> <es' des'> <es' des'> <es' des'> <es' des'> } }
  \tag #'left { \clef bass r8 <es es,>-. <bes bes,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { bes'16-.( a'-. bes' a'-. bes'-. c'') } { <es' des'>16 <es' des'> <es' des'> <es' des'> <es' des'> <es' des'> } }
  \tag #'left { \clef bass r8 <es es,>-. <g g,>-. }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r r16 a' } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass r8 es( as) }
  \tag #'common {
    s4
    \once \override DynamicTextSpanner.bound-details.left.text = \markup \whiteout \italic "decresc."
    \once \override DynamicTextSpanner.bound-details.left-broken.text = ##f
    s8\decresc
  }
  |

  \tag #'right { \clef treble \split { bes'8 r r16 c'' } { <es' des'>16 <es' des'> <es' des'> <es' des'> <es' des'> <es' des'> } }
  \tag #'left { \clef bass r8 es,( g,) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'8 r r16 a' } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass r8 es( as) }
  \tag #'common { s8 s4\!\calando }
  |

  \tag #'right { \clef treble \split { bes'8 r r16 c'' } { <es' des'>16 <es' des'> <es' des'> <es' des'> <es' des'> <es' des'> } }
  \tag #'left { \clef bass r8 es,( g,) }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4.~ } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass \split { s8 as,4~ } { r8 as,( es, } }
  \tag #'common { s4.\! \tweak extra-offset #'(0.7 . 0) \pp }
  |

  \tag #'right { \clef treble \split { as'8 as' as' } { <es' c'>16 <es' c'> <es' c'> <es' c'> <es' c'> <es' c'> } }
  \tag #'left { \clef bass \split { as,8 as, as, } { c,8 es, c,) } }
  \tag #'common { s4. }
  |

  \tag #'right { \clef treble \split { as'4.~ } { <es' c'>4.~ } }
  \tag #'left { \clef bass \split { as,4.~ } { as,,4.~ } }
  \tag #'common { s4.\p }
  |

  \tag #'right { \clef treble \split { as'4 } { <es' c'>4 } }
  \tag #'left { \clef bass \split { as,4 } { as,,4 } }
  \tag #'common { s4 }
  
  \set Timing.beamExceptions = #'()
  
  \bar "|."
}


secondMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers

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
  \tag #'common { s4\p }
  |

  \tag #'right { \clef treble \split { c''2( d''4) } { as'2. } }
  \tag #'left { \clef bass f'2.( }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble \split { es''2.~ } { g'2 bes'4 } }
  \tag #'left { \clef bass es'4) r g-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { es''4( f'') d''-. } { c''4( as') as'-. } }
  \tag #'left { \clef bass as4-. f-. bes-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { es''4 r des''8([ es'')] } { g'4 r r } }
  \tag #'left { \clef bass es4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''2( g''4) } { des''2. } }
  \tag #'left { \clef treble bes'2.( }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble \split { as''2.~ } { c''2 es''4 } }
  \tag #'left { \clef treble as'4) r c'-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { as''4( bes'') g''-. } { f''4( des'') des''-. } }
  \tag #'left { \clef treble des'4-. bes-. es'-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { as''4 r as'8([ bes')] } { c''4 r r } }
  \tag #'left { \clef treble as4 r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { c''4-. des''-. d''-. } { as'2. } }
  \tag #'left { \clef bass f'2. }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble \split { es''2.~ } { g'4-. as'-. bes'-. } }
  \tag #'left { \clef bass es'4-. f'-. g'-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { es''4 f''-. d''-. } { c''4-. as'-. as'-. } }
  \tag #'left { \clef bass as4-. f-. bes-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { es''4-. r des''8([ es'')] } { g'4-. r r } }
  \tag #'left { \clef bass es4-. r r }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { f''4-. ges''-. g''-. } { des''2. } }
  \tag #'left { \clef treble bes'2. }
  \tag #'common { s2.\sf }
  |

  \tag #'right { \clef treble \split { as''2.~ } { c''4-. des''-. es''-. } }
  \tag #'left { \clef treble as'4-. bes'-. c''-. }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble \split { as''4 bes''-. g''-. } { f''4-. des''-. des''-. } }
  \tag #'left { \clef treble des'4-. bes-. es'-. }
  \tag #'common { s2. }
  |

  \partial 2
  \tag #'right { \clef treble \split { as''4-. r } { c''4-. r } }
  \tag #'left { \clef treble as4-. r }
  \tag #'common { s2 }
  |

  \repeat volta 2 {
    \partial 4
    \tag #'right { \clef treble <c' as>8([ <des' bes>)] }
    \tag #'left { \clef treble r4 }
    \tag #'common { s4\p }
    |

    \tag #'right { \clef treble <es' c'>2( <f' des'>4 }
    \tag #'left { \clef bass as,,4-. as,-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <ges' es'>4)-. r <ges' es'>-. }
    \tag #'left { \clef bass as,,4-. as,-. r }
    \tag #'common { s2 s4\f }
    |

    \tag #'right { \clef treble <c'' ges'>4-. <es'' c''>-. <ges'' es''>~\sf }
    \tag #'left { \clef bass as,,4 as, as,, }
    \tag #'common { s2 s4 }
    |

    \tag #'right { \clef treble <ges'' es''>4( <f'' d''>) <d' bes>8([ <es' c'>)] }
    \tag #'left { \clef bass a,,4 bes,, r }
    \tag #'common { s2 s4\p }
    |

    \tag #'right { \clef treble <f' d'>2( <g' e'>4 }
    \tag #'left { \clef bass bes,,4-. bes,-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as' f'>4)-. r <as' f'>-. }
    \tag #'left { \clef bass bes,,4-. bes,-. r }
    \tag #'common { s2 s4\f }
    |

    \tag #'right { \clef treble <d'' as'>4-. <f'' d''>-. <as'' f''>~\sf }
    \tag #'left { \clef bass bes,,4 bes, bes,, }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as'' f''>4( <g'' e''>) <e' c'>8([ <f' d'>)] }
    \tag #'left { \clef bass b,,4 c, r }
    \tag #'common { s2 s4\p }
    |

    \tag #'right { \clef treble <g' e'>2( <as' f'>4 }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <bes' g'>4-.) r <e' c'>8([ <f' d'>)] }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'common { s2 s4\f }
    |

    \tag #'right { \clef treble <g' e'>4-. <e' c'>8([ <f' d'> <g' e'> <as' f'>)] }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'common { s2.\sf }
    |

    \tag #'right { \clef treble <bes' g'>4-. <g' e'>8([ <as' f'> <bes' g'> <c'' as'>)] }
    \tag #'left { \clef bass c,4-. c-. r }
    \tag #'common { s2.\sf }
    |

    \tag #'right { \clef treble <des'' bes'>4-. r <bes' g'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'common { s2.\p }
    |

    \tag #'right { \clef treble <g' e'>4-. r <bes' g'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes'>4-. r <bes' g'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <g' e'>4-. r <bes' g'>-. }
    \tag #'left { \clef bass c4-. c'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' g'>2 <c'' bes' g'>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'common { s2.\decresc }
    |

    \tag #'right { \clef treble <des'' bes' g'>2 <c'' bes' g'>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' g'>2 <c'' bes' g'>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' g'>2 <c'' bes' g'>4 }
    \tag #'left { \clef bass e4-. e'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' e'>2 <c'' bes' e'>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' e'>2 <c'' bes' e'>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' e'>2 <c'' bes' e'>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' e'>2 <c'' bes' e'>4 }
    \tag #'left { \clef bass g4-. g'-. r }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' bes' e'>4 r r }
    \tag #'left { \clef bass r4 g( g') }
    \tag #'common { s2.\!\pp }
    |

    \tag #'right { \clef treble <c'' bes' e'>4 r r }
    \tag #'left { \clef bass r4 g( g') }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <c'' bes' e'>4 r r }
    \tag #'left { \clef bass r4 g( g') }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <c'' bes' e'>4 r r }
    \tag #'left { \clef bass r4 g-. as8([ bes)] }
    \tag #'common { s2.\< }
    |

    \tag #'right { \clef treble as''8[ g'' as'' c''' bes'' as''] }
    \tag #'left { \clef bass \split { c'2( d'4 } { f2. } }
    \tag #'common { s2.\sf }
    |

    \tag #'right { \clef treble g''8[ f'' es'' d'' c'' bes'] }
    \tag #'left { \clef bass \split { es'4) } { es4 } r <e' e>~_\sf }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble as'8[ g' as' c'' bes' as'] }
    \tag #'left { \clef bass <e' e>4( <f' f>) <d' d>-. }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble g'8[ es' g' as' bes' c''] }
    \tag #'left { \clef bass <es' es>4-. r des8([ es)] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble des''8[ c'' des'' f'' es'' des''] }
    \tag #'left { \clef bass \split { f2( g4 } { bes,2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble c''8[ bes' as' g' f' es'] }
    \tag #'left { \clef bass \split{ as4) } { as,4 } r <a a,>~_\sf }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble des'8[ c' des' f' es' des'] }
    \tag #'left { \clef bass <a a,>4( <bes bes,>) <g g,>-. }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble c'4 r as'8([ bes')] }
    \tag #'left { \clef bass as,8[ c des es f g] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <c'' c'>2( <d'' d'>4 }
    \tag #'left { \clef bass as8[ g as f bes as] }
    \tag #'common { s2.\f }
    |

    \tag #'right { \clef treble <es'' es'>4-.) r <e'' e'>~-\sf }
    \tag #'left { \clef bass g8[ f es d c bes,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <e'' e'>4( <f'' f'>) <d'' d'>-. }
    \tag #'left { \clef bass as,8[ g, as, c bes, as,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <es'' es'>4 r des''8([ es'')] }
    \tag #'left { \clef bass g,8[ es, g, as, bes, c] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <f'' f'>2( <g'' g'>4 }
    \tag #'left { \clef bass des8[ c des bes, es des] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as'' as'>4)-. r <a'' a'>~-\sf }
    \tag #'left { \clef bass c8[ bes, as, g, f, es,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <a'' a'>4( <bes'' bes'>) <g'' g'>-. }
    \tag #'left { \clef bass des,8[ c, des, f, es, des,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as'' as'>4 r <c''' a'' c''>~-\sf }
    \tag #'left { \clef bass c,8[ es, as, g, f, es,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <c''' a'' c''>4( <des''' bes'' des''>) <bes'' g'' bes'>-. }
    \tag #'left { \clef bass des,8[ bes,, des, bes,, es, des,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <c''' as'' c''>4 r <a'' c'' a'>~-\sf }
    \tag #'left { \clef bass c,8[ es, as, g, f, es,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <a'' c'' a'>4( <bes'' des'' bes'>) <g'' bes' g'>-. }
    \tag #'left { \clef bass des,8[ bes,, des, bes,, es, es,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as'' c'' as'>4-. r <bes'' g'' bes'>-. }
    \tag #'left { \clef bass as,,8([ c, es, des, c, bes,,] }
    \tag #'common {
      s2
      \once \override DynamicTextSpanner.bound-details.left.text = \markup \whiteout \italic "cresc."
      \once \override DynamicTextSpanner.bound-details.left-broken.text = ##f
      s4-\cresc }
    |

    \tag #'right { \clef treble <c''' as'' c''>4-. r <g'' bes' g'>-. }
    \tag #'left { \clef bass as,,8[ c, es, des, c, bes,,] }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as'' c'' as'>4-. r <g' bes g>-. }
    \tag #'left { \clef bass as,,8[ c, es, des, c, bes,,] }
    \tag #'common { s2 s4\!\ff }
    |

    \partial 2
    \tag #'right { \clef treble <as' c' as>4-. r }
    \tag #'left { \clef bass as,,4-.) r }
    \tag #'common { s2 }
    |
  }
  \tag #'common { \textEndMark \markup { \italic "Fin" } }

  \key des \major
  \tag #'common { \tweak after-line-breaking ##f \tweak Y-offset #0 \tweak extra-offset #'(7 . 0.5) \textMark \markup { \column { \bold "Trio" \italic "sempre legato" } } }

  \repeat volta 2 {
    \partial 4
    \tag #'right { \clef treble as4( }
    \tag #'left { \clef bass r4 }
    \tag #'common { s4\p }
    |

    \tag #'right { \clef treble <f' f>2 as4 }
    \tag #'left { \clef bass \split { des2( as,4 } { des,2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <es' es>2 as4 }
    \tag #'left { \clef bass \split { c2 as,4 } { c,2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <ges' c' ges>2 as4~ }
    \tag #'left { \clef bass \split { es2 as,4 } { es,2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <f' as f>2 des'4 }
    \tag #'left { \clef bass \split { des2 as,4 } { des,2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as' as>2 des'4~ }
    \tag #'left { \clef bass \split { f2 des4~ } { f,2. } }
    \tag #'common { s2 s4\< }
    |

    \tag #'right { \clef treble <bes' des' bes>2 <es' des' bes>4 }
    \tag #'left { \clef bass <ges des ges,>2 <f f,>4 }
    \tag #'common { s2.\!\sf\> }
    |

    \tag #'right { \clef treble <es' des' bes>2) <es' des' bes>4 }
    \tag #'left { \clef bass <ges ges,>2) <g g,>4 }
    \tag #'common { s2.\p }
    |

    \partial 2
    \tag #'right { \clef treble <es' c'>4 r }
    \tag #'left { \clef bass <as as,>4 r }
    \tag #'common { s2 }
    |
  }

  \repeat volta 2 {
    \partial 4
    \tag #'right { \clef treble as'4( }
    \tag #'left { \clef bass r4 }
    \tag #'common { s4 }
    |

    \tag #'right { \clef treble <c'' c'>2 as'4 }
    \tag #'left { \clef bass \split { as2( es4 } { as,2.( } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <des'' des'>2 g'4 }
    \tag #'left { \clef bass \split { bes2 es4 } { bes,2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <es'' ges' es'>2 as'4 }
    \tag #'left { \clef bass \split { c'2 as4 } { c2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <f'' f'>2 as'4 }
    \tag #'left { \clef bass \split { des'2 as4 } { des2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <f'' f'>2 des''4 }
    \tag #'left { \clef bass \split { des'2 as4 } { des2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <ges'' ges'>2 c''4 }
    \tag #'left { \clef bass \split { es'2 as4 } { es2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <as'' ces'' as'>2 des''4 }
    \tag #'left { \clef bass \split { f'2 des'4 } { f2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble <bes'' bes'>2 des''4 }
    \tag #'left { \clef bass \split { ges'2 des'4 } { ges2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble \split { bes''2 des''4 } { bes'2. } }
    \tag #'left { \clef bass \split { ges'2 des'4 } { ges2. } }
    \tag #'common { s2.\< }
    |

    \tag #'right { \clef treble \split { ces'''2 des''4 } { ces''2. } }
    \tag #'left { \clef bass \split { f'2 des'4 } { f2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble \split { a''2 des''4 } { a'2. } }
    \tag #'left { \clef bass \split { f'2 des'4 } { f2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble \split { bes''2 des''4 } { bes'2. } }
    \tag #'left { \clef bass \split { ges'2 des'4 } { ges2. } }
    \tag #'common { s2. }
    |

    \tag #'right { \clef treble \split { fes''2. } { bes'2~ <des'' bes'>4 } }
    \tag #'left { \clef bass \split { fes'2~ <fes' des'>4 } { g2. } }
    \tag #'common { s2.\!\sf\> }
    |

    \tag #'right { \clef treble \split { f''2.~ } { as'2~ <des'' as'>4 } }
    \tag #'left { \clef bass \split { f'2 des'4 } { as2. } }
    \tag #'common { s2.\p }
    |

    \tag #'right { \clef treble \split { f''4 ges'' es'' } { <c'' ges'>2 <c'' ges'>4 } }
    \tag #'left { \clef bass \split { as,2) as4 } { as,2.) } }
    \tag #'common { s2. }
    |
  }
  \alternative {
    {
      \partial 2
      \tag #'right { \clef treble \split { des''4) } { f'4 } r }
      \tag #'left { \clef bass \split { des4 } { des4 } r }
      \tag #'common { s2 }
    }
    {
      \tag #'right { \clef treble \split { des''4 } { f'4 } r r }
      \tag #'left { \clef bass \split { des4 } { des4 } r \split { des8([ es)] } { s } }
      \tag #'common { s2. }
      |
    }
  }

  \tag #'right { \clef treble r4 <des'' des'>2~-\sf }
  \tag #'left { \clef bass \split { f2( g4 } { bes,2. } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble <des'' des'>4( <c'' c'>) r }
  \tag #'left { \clef bass \split { as4) } { as,4 } r \split { as8([ bes)] } { s } }
  \tag #'common { s2. }
  |

  \tag #'right { \clef treble r4 <as'' as'>2~-\sf }
  \tag #'left { \clef bass \split { c'2( d'4 } { f2. } }
  \tag #'common { s2. }
  |

  \partial 2
  \tag #'right { \clef treble <as'' as'>4( <g'' g'>) }
  \tag #'left { \clef bass \split { es'4) } { es4 } r }
  \tag #'common { s2 }
  |

  \tag #'right { \textEndMark \markup { \italic "D.C. Scherzo senza repetizione" } }
  \bar "||"
}


thirdMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers

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
  \tag #'right { \clef bass <es' es>8.[ <es' es>16] }
  \tag #'left { \clef bass r4 }
  \tag #'common { s4\p }
  |

  \tag #'right { \clef bass <es' ces' as es>4 <es' ces' as es>8.[ <es' ces' as es>16] <es' ces' as es>8.[ <es' ces' as es>16 <es' bes g es>8. <es' ces' as es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' des' bes es>2. <es' bes g>8.[ <es' bes g>16] }
  \tag #'left { \clef bass es,8.[ es,16 g,8. bes,16] es4 <es des>8.[ <es des>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' ces' as>4 <es' ces' as>8.[ <es' ces' as>16] <es' des' bes>4 <es' ces' as>8.[ <es' ces' as>16] }
  \tag #'left { \clef bass <es ces>4 <es as,>8.[ <es as,>16] <es g,>4 <es as,>8.[ <es as,>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' bes g>4-. <es' bes g>-. <es' bes g>-. <es' es>8.[ <es' es>16] }
  \tag #'left { \clef bass <es es,>4-. <es es,>-. <es es,>-. r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' ces' as es>4 <es' ces' as es>8.[ <es' ces' as es>16] <es' ces' as es>8.[ <es' ces' as es>16 <es' bes ges es>8. <es' as f es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s4 s2.\< }
  |

  \tag #'right { \clef bass <es' bes ges es>2. <es' ces' ges>8.[ <es' ces' ges>16] }
  \tag #'left { \clef bass es,8.[ es,16 ges,8. bes,16] es4 ces8.[ ces16] }
  \tag #'common { s1\p }
  |

  \tag #'right { \clef bass <es' ces' as>4 <des' ces' as>8.[ <des' ces' as>16] <des' ces' ges>4 <des' bes ges fes>8.[ <des' bes ges fes>16] }
  \tag #'left { \clef bass as,4 fes,8.[ fes,16] ges,4 <ges, ges,,>8.[ <ges, ges,,>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <ces' ges es>4-. <ces' ges es>-. <ces' ges es>-. <fis' fis>8.[ <fis' fis>16] }
  \tag #'left { \clef bass <ces ces,>4-. <ces ces,>-. <ces ces,>-. r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <fis' d' b fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] <fis' d' b fis>8.[ <fis' d' b fis>16 <fis' cis' ais fis>8. <fis' d' b fis>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'common { s1\< }
  |

  \tag #'right { \clef bass <fis' e' cis' fis>2. <fis' cis' ais fis>8.[ <fis' cis' ais fis>16] }
  \tag #'left { \clef bass <fis, fis,,>8.[ <fis, fis,,>16 <ais, ais,,>8. <cis cis,>16] <fis fis,>4 <e e,>8.[ <e e,>16] }
  \tag #'common { s1\f }
  |

  \tag #'right { \clef bass <fis' d' b fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] <fis' e' cis' fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] }
  \tag #'left { \clef bass <d d,>4 <b, b,,>8.[ <b, b,,>16] <ais, ais,,>4 <b, b,,>8.[ <b, b,,>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <fis' cis' ais fis>4-. <fis' cis' ais fis>-. <fis' cis' ais fis>-. <fis' fis>8.[ <fis' fis>16] }
  \tag #'left { \clef bass <fis, fis,,>4-. <fis, fis,,>-. <fis, fis,,>-. r }
  \tag #'common { s2. s4\p }
  |

  \tag #'right { \clef bass <fis' d' b fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] <fis' d' b fis>8.[ <fis' d' b fis>16 <e' cis' b e>8. <fis' d' b fis>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' e' b g>2. <g' e' b g>8.[ <g' e' b g>16] }
  \tag #'left { \clef bass e,8.[ e,16 g,8. b,16] e4 <e g,>8.[ <e g,>16-.] }
  \tag #'common { s2. s4\cresc }
  |

  \tag #'right { \clef treble <fis' d' a>4 <fis' d' a>8.[ <fis' d' a>16] <e' cis' a>4 <a' e' cis' a>8.[ <a' e' cis' a>16] }
  \tag #'left { \clef bass <fis d a,>4 <fis d a,>8.[ <fis d a,>16] <e cis a,>4 <e cis a,>8.[ <e cis a,>16] }
  \tag #'common { s2... s16\! }
  |

  \tag #'right { \clef treble d'4-. d'-. d'-. <ces'' f'>8.[ <ces'' f'>16] }
  \tag #'left { \clef bass <d d,>4-. <d d,>-. <d d,>-. <as d>8.[ <as d>16] }
  \tag #'common { s2.\p s4\pp }
  |

  \tag #'right { \clef treble <ces'' f'>2( <bes' f'>4 <as' f'>) }
  \tag #'left { \clef bass \split { as2( bes4 ces') } { d4 d d d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' es'>8.-.[ <ces'' f'>16-.] <ces'' f'>2 <bes' f'>8.[ <as' f'>16] }
  \tag #'left { \clef bass \split { bes8.-.[ as16-.] as2 } { es8.-.[ d16-.] d4 d } <bes d>8.[ <ces' d>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' es'>8.-.[ <ces'' f'>16-. <ces'' f'>8.-. <ces'' f'>16-.] <ces'' f'>8.-.[ <ces'' f'>16-. <bes' f'>8.-. <as' f'>16-.] }
  \tag #'left { \clef bass <bes es>8.-.[ <as d>16-. <as d>8.-. <as d>16-.] <as d>8.-.[ <as d>16-. <bes d>8.-. <ces' d>16-.] }
  \tag #'common { s8. s2.\ff s16 }
  |

  \tag #'right { \clef treble <g' es'>4-. fes'2 es'16([ des' ces' bes)] }
  \tag #'left { \clef bass <bes es>4-. fes2 es16([ des ces bes,)] }
  \tag #'common { s4 s4\sf s2 }
  |

  \tag #'right { \clef treble as4 \clef bass <es' ces' as es>8.[ <es' ces' as es>16] <es' ces' as es>8.[ <es' ces' as es>16 <es' bes g es>8. <es' ces' as es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s4\fp s2. }
  |

  \tag #'right { \clef bass <es' des' bes es>2. <es' bes g es>8.[ <es' bes g es>16] }
  \tag #'left { \clef bass es,8.-.[ es,16-. g,8.-. bes,16-.] es4 des8.[ des16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' ces' as es>4 <es' ces' as es>8.[ <es' ces' as es>16] <es' des' bes es>4 <es' ces' as es>8.[ <es' ces' as es>16] }
  \tag #'left { \clef bass ces4.\sf \tweak extra-offset #'(2.5 . -1) \trill bes,16[ as,] g,4 as,8.[ as,16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' bes g es>4-. <es' bes g es>-. <es' bes g es>-. <es' es>8.[ <es' es>16] }
  \tag #'left { \clef bass es,4-. es,-. es,-. r }
  \tag #'common { s2. s4\p }
  |

  \tag #'right { \clef bass <es' c' as es>4 <es' c' as es>8.[ <es' c' as es>16] <es' c' as es>8.[ <es' c' as es>16 <des' bes as des>8. <es' c' as es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <fes' des' as fes>2. <fes' des' as fes>4-. }
  \tag #'left { \clef bass des,8.-.[ des,16-. fes,8.-. as,16-.] des4-. r }
  \tag #'common { s1\< }
  |

  \tag #'right { \clef treble <des'' beses' fes' des'>2. <des'' beses' fes' des'>4-. }
  \tag #'left { \clef bass r8. <beses, beses,,>16-.[ <des des,>8.-. <fes fes,>16-.] <beses beses,>4-. r }
  \tag #'common { s1\f }
  |

  \tag #'right { \clef treble <bes'' es'' des'' bes'>2. <bes'' es'' des'' bes'>4-.}
  \tag #'left { \clef bass r8. <g g,>16-.[ <bes bes,>8.-. <es' es>16-.] <g' g>4-. <g g,>-. }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble <ces''' es'' ces''>4-. r <bes'' fes'' des'' bes'>-. <g'' des'' bes' g'>-. }
  \tag #'left { \clef bass <as as,>4-. r <des des,>-. <es es,>-. }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble <as'' ces'' as'>4-. \clef bass <as es ces>-. as,-. r }
  \tag #'left { \clef bass <as, as,,>4-. <as, as,,>-. as,,-. r }
  \tag #'common { s1 }
  |

  \key as \major
  \repeat volta 2 {
    \tag #'right { \clef treble r4 r r8 r16 <c'' as'>-! <es'' c''>8-! r }
    \tag #'left { \clef bass \split { c'32[ es c' es c' es c' es] c'[ es c' es c' es c' es] <as c>8 r16 <c' as>-! <es' c'>8-! r } { as,,32[ as, as,, as, as,, as, as,, as,] as,,[ as, as,, as, as,, as, as,, as,] as,,8 r r4 } }
    \tag #'common { s2\p s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble r4 r r8 r16 <c''' as''>-! <es''' c'''>8-! r }
    \tag #'left { \clef bass \split { c'32[ es c' es c' es c' es] c'[ es c' es c' es c' es] <as c>8 \clef treble r16 <c'' as'>-! <es'' c''>8-! r } { as,,32[ as, as,, as, as,, as, as,, as,] as,,[ as, as,, as, as,, as, as,, as,] as,,8 r r4 } }
    \tag #'common { s2\p s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble bes8-! r16 <g'' es''>-! bes''8-! r bes-! r16 <f'' d''>-! bes''8-! r16 bes'-. }
    \tag #'left { \clef bass bes,8-! \clef treble r16 <g' es'>-! bes'8-! r \clef bass bes,-! \clef treble r16 <f' d'>-! bes'8-! \clef bass r16 <bes bes,>-! }
    \tag #'common { s1 }
    |

    \tag #'right { \clef treble es''8-! r16 bes-! es'8-! r16 \clef bass bes, es8 r r4 }
    \tag #'left { \clef bass <es' es>8-! r <es bes, g, es,>-! r <g, es,> r r4 }
    \tag #'common { s1 }
    |
  }

  \repeat volta 2 {
    \tag #'right { \clef treble des'32[ bes des' bes des' bes des' bes] des'[ bes des' bes des' bes des' bes] <bes g>8 r16 <bes' g'>-! <des'' bes'>8-! r }
    \tag #'left { \clef bass es,32[ es es, es es, es es, es] es,[ es es, es es, es es, es] es,8-. r16 <bes g>-! <des' bes>8-! r }
    \tag #'common { s2\p s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble des'32[ bes des' bes des' bes des' bes] des'[ bes des' bes des' bes des' bes] <bes g>8 r16 <bes'' g''>-! <des''' bes''>8-! r }
    \tag #'left { \clef bass es,32[ es es, es es, es es, es] es,[ es es, es es, es es, es] es,8 \clef treble r16 <bes' g'>-! <des'' bes'>8-! r }
    \tag #'common { s2\< s8.\f s4\ff s16 }
    |

    \tag #'right { \clef treble as'8-! r16 <c''' as''>-! es'''8-! r es'-! r16 <bes'' g''>-! es'''8-! r16 es''-! }
    \tag #'left { \clef bass <as as,>8-! \clef treble r16 <c'' as'>-! es''8-! r \clef bass <es es,>-! \clef treble r16 <bes' g'>-! es''8-! \clef bass r16 <es' es>-! }
    \tag #'common { s1 }
    |
  }
  \alternative {
    {
      \tag #'right { \clef treble as''8-! r16 es'-! as'8-! r16 es as8 r r4 }
      \tag #'left { \clef bass <as' as>8-! r <as es c as,> r <as, es, c,> r r4 }
      \tag #'common { s1 }
      |
    }
    {
      \tag #'right { \clef treble as''8-! r16 es'-! as'8-! r16 es-! as8-! r \clef bass <es' es>8.[ <es' es>16] }
      \tag #'left { \clef bass <as' as>8-! r <as es c as,> r <as, es, c, as,,> r r4 }
      \tag #'common { s2. s4\p }
      |
    }
  }

  \bar "||"
  \key as \minor
  \tag #'right { \clef bass <es' ces' as es>4 <es' ces' as es>8.[ <es' ces' as es>16] <es' ces' as es>8.[ <es' ces' as es>16 <es' bes g es>8. <es' ces' as es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' des' bes es>2. <es' bes g>8.[ <es' bes g>16] }
  \tag #'left { \clef bass es,8.[ es,16 g,8. bes,16] es4 <es des>8.[ <es des>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' ces' as>4 <es' ces' as>8.[ <es' ces' as>16] <es' des' bes>4 <es' ces' as>8.[ <es' ces' as>16] }
  \tag #'left { \clef bass <es ces>4 <es as,>8.[ <es as,>16] <es g,>4 <es as,>8.[ <es as,>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' bes g>4-. <es' bes g>-. <es' bes g>-. <es' es>8.[ <es' es>16] }
  \tag #'left { \clef bass <es es,>4-. <es es,>-. <es es,>-. r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' ces' as es>4 <es' ces' as es>8.[ <es' ces' as es>16] <es' ces' as es>8.[ <es' ces' as es>16 <es' bes ges es>8. <es' as f es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s4 s2.\< }
  |

  \tag #'right { \clef bass <es' bes ges es>2. <es' ces' ges>8.[ <es' ces' ges>16] }
  \tag #'left { \clef bass es,8.[ es,16 ges,8. bes,16] es4 ces8.[ ces16] }
  \tag #'common { s1\p }
  |

  \tag #'right { \clef bass <es' ces' as>4 <des' ces' as>8.[ <des' ces' as>16] <des' ces' ges>4 <des' bes ges fes>8.[ <des' bes ges fes>16] }
  \tag #'left { \clef bass as,4 fes,8.[ fes,16] ges,4 <ges, ges,,>8.[ <ges, ges,,>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <ces' ges es>4-. <ces' ges es>-. <ces' ges es>-. <fis' fis>8.[ <fis' fis>16] }
  \tag #'left { \clef bass <ces ces,>4-. <ces ces,>-. <ces ces,>-. r }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <fis' d' b fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] <fis' d' b fis>8.[ <fis' d' b fis>16 <fis' cis' ais fis>8. <fis' d' b fis>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'common { s1\< }
  |

  \tag #'right { \clef bass <fis' e' cis' fis>2. <fis' cis' ais fis>8.[ <fis' cis' ais fis>16] }
  \tag #'left { \clef bass <fis, fis,,>8.[ <fis, fis,,>16 <ais, ais,,>8. <cis cis,>16] <fis fis,>4 <e e,>8.[ <e e,>16] }
  \tag #'common { s1\f }
  |

  \tag #'right { \clef bass <fis' d' b fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] <fis' e' cis' fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] }
  \tag #'left { \clef bass <d d,>4 <b, b,,>8.[ <b, b,,>16] <ais, ais,,>4 <b, b,,>8.[ <b, b,,>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <fis' cis' ais fis>4-. <fis' cis' ais fis>-. <fis' cis' ais fis>-. <fis' fis>8.[ <fis' fis>16] }
  \tag #'left { \clef bass <fis, fis,,>4-. <fis, fis,,>-. <fis, fis,,>-. r }
  \tag #'common { s2. s4\p }
  |

  \tag #'right { \clef bass <fis' d' b fis>4 <fis' d' b fis>8.[ <fis' d' b fis>16] <fis' d' b fis>8.[ <fis' d' b fis>16 <e' cis' b e>8. <fis' d' b fis>16] }
  \tag #'left { \clef bass \split { b,1 } { b,,2 b,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' e' b g>2. <g' e' b g>8.[ <g' e' b g>16] }
  \tag #'left { \clef bass e,8.[ e,16 g,8. b,16] e4 <e g,>8.[ <e g,>16-.] }
  \tag #'common { s2. s4\cresc }
  |

  \tag #'right { \clef treble <fis' d' a>4 <fis' d' a>8.[ <fis' d' a>16] <e' cis' a>4 <a' e' cis' a>8.[ <a' e' cis' a>16] }
  \tag #'left { \clef bass <fis d a,>4 <fis d a,>8.[ <fis d a,>16] <e cis a,>4 <e cis a,>8.[ <e cis a,>16] }
  \tag #'common { s2... s16\! }
  |

  \tag #'right { \clef treble d'4-. d'-. d'-. <ces'' f'>8.[ <ces'' f'>16] }
  \tag #'left { \clef bass <d d,>4-. <d d,>-. <d d,>-. <as d>8.[ <as d>16] }
  \tag #'common { s2.\p s4\pp }
  |

  \tag #'right { \clef treble <ces'' f'>2( <bes' f'>4 <as' f'>) }
  \tag #'left { \clef bass \split { as2( bes4 ces') } { d4 d d d } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' es'>8.-.[ <ces'' f'>16-.] <ces'' f'>2 <bes' f'>8.[ <as' f'>16] }
  \tag #'left { \clef bass \split { bes8.-.[ as16-.] as2 } { es8.-.[ d16-.] d4 d } <bes d>8.[ <ces' d>16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <g' es'>8.-.[ <ces'' f'>16-. <ces'' f'>8.-. <ces'' f'>16-.] <ces'' f'>8.-.[ <ces'' f'>16-. <bes' f'>8.-. <as' f'>16-.] }
  \tag #'left { \clef bass <bes es>8.-.[ <as d>16-. <as d>8.-. <as d>16-.] <as d>8.-.[ <as d>16-. <bes d>8.-. <ces' d>16-.] }
  \tag #'common { s8. s2.\ff s16 }
  |

  \tag #'right { \clef treble <g' es'>4-. fes'2 es'16([ des' ces' bes)] }
  \tag #'left { \clef bass <bes es>4-. fes2 es16([ des ces bes,)] }
  \tag #'common { s4 s4\sf s2 }
  |

  \tag #'right { \clef treble as4 \clef bass <es' ces' as es>8.[ <es' ces' as es>16] <es' ces' as es>8.[ <es' ces' as es>16 <es' bes g es>8. <es' ces' as es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s4\fp s2. }
  |

  \tag #'right { \clef bass <es' des' bes es>2. <es' bes g es>8.[ <es' bes g es>16] }
  \tag #'left { \clef bass es,8.-.[ es,16-. g,8.-. bes,16-.] es4 des8.[ des16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' ces' as es>4 <es' ces' as es>8.[ <es' ces' as es>16] <es' des' bes es>4 <es' ces' as es>8.[ <es' ces' as es>16] }
  \tag #'left { \clef bass ces4.\sf \tweak extra-offset #'(2.5 . -1) \trill bes,16[ as,] g,4 as,8.[ as,16] }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <es' bes g es>4-. <es' bes g es>-. <es' bes g es>-. <es' es>8.[ <es' es>16] }
  \tag #'left { \clef bass es,4-. es,-. es,-. r }
  \tag #'common { s2. s4\p }
  |

  \tag #'right { \clef bass <es' c' as es>4 <es' c' as es>8.[ <es' c' as es>16] <es' c' as es>8.[ <es' c' as es>16 <des' bes as des>8. <es' c' as es>16] }
  \tag #'left { \clef bass \split { as,1 } { as,,2 as,, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef bass <fes' des' as fes>2. <fes' des' as fes>4-. }
  \tag #'left { \clef bass des,8.-.[ des,16-. fes,8.-. as,16-.] des4-. r }
  \tag #'common { s1\< }
  |

  \tag #'right { \clef treble <des'' beses' fes' des'>2. <des'' beses' fes' des'>4-. }
  \tag #'left { \clef bass r8. <beses, beses,,>16-.[ <des des,>8.-. <fes fes,>16-.] <beses beses,>4-. r }
  \tag #'common { s1\f }
  |

  \tag #'right { \clef treble <bes'' es'' des'' bes'>2. <bes'' es'' des'' bes'>4-.}
  \tag #'left { \clef bass r8. <g g,>16-.[ <bes bes,>8.-. <es' es>16-.] <g' g>4-. <g g,>-. }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble <ces''' es'' ces''>4-. r <bes'' fes'' des'' bes'>-. <g'' des'' bes' g'>-. }
  \tag #'left { \clef bass <as as,>4-. r <des des,>-. <es es,>-. }
  \tag #'common { s1\ff }
  |

  \tag #'right { \clef treble <as'' ces'' as'>4-. r r <beses' ges'>8.([ <as' fes'>16)] }
  \tag #'left { \clef bass \split { s2. c8.[ des16] } { <as, as,,>4-. as,8.[ as,16] as,4 as,4 } }
  \tag #'common { s4 s2\p s4 }
  |

  \tag #'right { \clef treble <ges' es'>4..( <fes' des'>16) <es' des'>4(-. <es' des'>)-. }
  \tag #'left { \clef bass \split { es4..( fes16 ges4 g) } { as,4 as, as, as, } }
  \tag #'common { s4\< s2. }
  |

  \tag #'right { \clef treble <es' c'>4 r r <c'' ges' es'>8.([ <des'' as' fes'>16] }
  \tag #'left { \clef bass \split { as4 r r beses8.[ as16] } { as,4 as,8.[ as,16] as,4 as, } }
  \tag #'common { s1\p }
  |

  \tag #'right { \clef treble <es'' beses' ges'>4.. <fes'' des'' as'>16 <ges'' c'' beses'>4 <g'' fes'' bes'> }
  \tag #'left { \clef bass \split { ges4.. fes16 es4 des } { as,4 as, as, as, } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <as'' es'' c''>2) <beses'' beses'>4..( <g'' g'>16) }
  \tag #'left { \clef bass \split { c2 <fes des> } { as,4 as,8.[ as,16] as,4 as,8.[ as,16] } }
  \tag #'common { s2\p s4..\sf\> s16\! }
  |

  \tag #'right { \clef treble <as'' as'>4 r \split { beses'4..( g'16) } { <fes' des'>2 } }
  \tag #'left { \clef bass \splitThree { <es c>4 s2. } { as,1 } { as,4 as,,8.[ as,,16] as,,4 as,,8.[ as,,16] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <as' es' c'>4 r <es' c'>(-. <es' c'>)-. }
  \tag #'left { \clef bass \split { as,1 } { as,,4 as,,8.[ as,,16] as,,4 as,,8.[ as,,16] } }
  \tag #'common { s1 }
  |

  \tag #'right { \clef treble <es' c' as>2.\fermata r4 }
  \tag #'left { \clef bass <as, as,,>2.\fermata r4 }
  \tag #'common { s1\pp }
  |

  \bar "|."
}


fourthMovement = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \set Score.tempoHideNote = ##t
  \set Score.alternativeNumberingStyle = #'numbers

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
  \tag #'common { s4\p }
  |

  \tag #'right { \clef treble des''16[ bes' es'' g'] c''[ as' des'' f'] }
  \tag #'left { \clef bass r2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ g' c'' e'] as'[ f' bes' d')] }
  \tag #'left { \clef bass r2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ es' d' es'] g'[ es' as' es'] }
  \tag #'left { \clef bass \split { r4 des'8([ c'] } { es2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ es' c'' es'] des''[ es' d'' es'] }
  \tag #'left { \clef bass \split { bes8[ as g f] } { es2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''16[ es' <es'' g'> es'] <es'' as'>[ es' <es'' c'' as'> es'] }
  \tag #'left { \clef bass es8[ des c as,)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <es'' bes' g'>16[ es' <es'' bes' g'> es'] c''([ es'' a' f''] }
  \tag #'left { \clef bass es8-.[ es,-.] es'16([ c' f' a] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ des'' g' es''] as'[ c'' f' des''] }
  \tag #'left { \clef bass des'16[ bes es' g] c'[ as des' f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes'] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es'8) r <des''' des''>([ <c''' c''>] }
  \tag #'left { \clef bass g16)[ es d es] g[ es as es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' bes'>8[ <as'' as'> <g'' g'> <f'' f'>)] }
  \tag #'left { \clef bass bes16[ es c' es] des'[ es d' es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''8-.[ <es'' c'' as'>-. <es'' des'' bes'>-. <es'' bes' g'>-.] }
  \tag #'left { \clef bass es'16[ es es' es] es'[ es es' es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <es'' c'' as'>8-. r c'16[ c'' e' c''] }
  \tag #'left { \clef bass as8-.[ as,-.] bes([ g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ c'' b' c''] bes'[ c'' g' c''] }
  \tag #'left { \clef bass e8[ c d e] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as'16[ c'' f' c''] as''8([ f''] }
  \tag #'left { \clef bass f8[ as)] bes,16[ bes d bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8[ bes' c'' d''] }
  \tag #'left { \clef bass f16[ bes a bes] as[ bes f bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''8[ g'')] es'16[ es'' g' es''] }
  \tag #'left { \clef bass g16[ bes es bes] des'8([ bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ es'' d'' es''] des''[ es'' bes' es''] }
  \tag #'left { \clef bass g8[ es f g)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ es'' <c'' es'> es''] <des'' g'>[ es'' <c'' as'> es''] }
  \tag #'left { \clef bass as8([ as, bes, c] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' f'>16[ es'' <bes' f'> des''] <as' es'>[ c'' <g' des'> bes'] }
  \tag #'left { \clef bass des8[ bes, es es,)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as' c'>8-. r <bes'' bes'>([ <g'' g'>] }
  \tag #'left { \clef bass as,8[ as,,] c16[ c' e c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>8[ c''] <d'' d'>[ <e'' e'>] }
  \tag #'left { \clef bass g16[ c' b c'] bes[ c' g c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' f'>8[ <as'' as'>)] bes'16[ bes'' d'' bes''] }
  \tag #'left { \clef bass as16[ c' f c'] as'8([ f'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16[ bes'' a'' bes''] as''[ bes'' f'' bes''] }
  \tag #'left { \clef bass d'8[ bes c' d'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16[ bes'' es'' bes''] <des''' des''>8([ <bes'' bes'>] }
  \tag #'left { \clef bass es'8[ g')] es,16[ es g, es] }
  \tag #'common { s4 s4\< }
  |

  \tag #'right { \clef treble <g'' g'>8[ <es'' es'>] <f'' f'>[ <g'' g'>] }
  \tag #'left { \clef bass bes,16[ es d es] des[ es bes, es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as'' as'>8) <c''' as'' es''>16[ es'''] <des''' bes'' es''>[ es''' <c''' as'' es''> es'''] }
  \tag #'left { \clef bass c16[ es as, as] g,[ g as, as] }
  \tag #'common { s8 s4.\f }
  |

  \tag #'right { \clef treble <c''' es''>16[ es''' <bes'' des''> des'''] <as'' c''>[ c''' <g'' bes'> bes''] }
  \tag #'left { \clef bass f,16[ f des, des] es,[ es es, es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as'' as'>8 r r4 }
  \tag #'left { \clef bass as,,8-.[ as,-.] c'16([ as des' f] }
  \tag #'common { s4 s4\p }
  |

  \tag #'right { \clef treble r2 }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <g'' es'' bes' g'>-. g''16([ es'' as'' c''] }
  \tag #'left { \clef bass <g es>8-. r es'16([ g' c' as'] }
  \tag #'common { s8 s4.\sf }
  |

  \tag #'right { \clef treble f''16[ d'' g'' b'] es''[ c'' f'' a')] }
  \tag #'left { \clef bass d'16[ f' b g'] c'[ es' a f')] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8-.[ <bes'' f'' d'' bes'>-.] r <bes'' bes'>-. }
  \tag #'left { \clef bass bes8-.[ <bes bes,>-.] as16[ bes f d'] }
  \tag #'common { s8 s4.\p }
  |

  \tag #'right { \clef treble r8 <d''' d''>-. r <f''' f''>-. }
  \tag #'left { \clef bass as16[ bes f d'] as[ bes f d'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>8-.[ <bes'' bes'>-.] r <bes'' bes'>-. }
  \tag #'left { \clef bass as16[ bes f d'] as[ bes f d'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <d''' d''>-. r <f''' f''>-. }
  \tag #'left { \clef bass as16[ bes f d'] as[ bes f d'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <d''' d''>8-.[ <bes'' bes'>-.] as''16([ f'' bes'' d''] }
  \tag #'left { \clef bass as16[ bes f d'] r8 <bes bes,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass r8 <d' d>-. r <f' f>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass <d' d>8-.[ <bes bes,>-.] r <bes, bes,,> }
  \tag #'common { s4 s4\cresc }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass r8 <d d,>-. r <f f,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d''] }
  \tag #'left { \clef bass <d d,>8-.[ <bes, bes,,>-.] r <f' f>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as''16[ f'' bes'' d''] as''[ f'' bes'' d'')] }
  \tag #'left { \clef bass <d' d>8-.[ <bes bes,>-.] r <bes, bes,,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''8-.[\! es''16( d''] c''[ bes' as' g'] }
  \tag #'left { \clef bass <es es,>8-. <g, g,,>4.( }
  \tag #'common { s8 s4.\sf }
  |

  \tag #'right { \clef treble f'16[ es' d' c'] bes[ as g f] }
  \tag #'left { \clef bass <as, as,,>4 <bes, bes,,>) }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es8)-. g''16([ f''] \tuplet 6/4 { es''16[ d'' c'' bes'16 as' g'] } }
  \tag #'left { \clef bass <c c,>8-. <g, g,,>4.( }
  \tag #'common { s8 s4.\sf }
  |

  \tag #'right { \clef treble f'16[ es' d' c'] bes[ as g f] }
  \tag #'left { \clef bass <as, as,,>4 <bes, bes,,>) }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es8)-. bes''16([ as''] g''32[ f'' es'' d'' c'' bes' as' g'] }
  \tag #'left { \clef bass <c c,>8-. <g, g,,>4.( }
  \tag #'common { s8\sf s4.\ff }
  |

  \tag #'right { \clef treble f'16[ es' d' c'] bes[ as g f] }
  \tag #'left { \clef bass <as, as,,>4 <bes, bes,,>) }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es8) r g'16([ es' as' f')] }
  \tag #'left { \clef bass \split { es,8( es4.) } { es,2 } }
  \tag #'common { s4 s4\p }
  |

  \tag #'right { \clef treble r4 bes'16([ g' c'' as')] }
  \tag #'left { \clef bass \split { es,8( es4.) } { es,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r4 des''16([ bes' d'' b'] }
  \tag #'left { \clef bass \split { es,8( es4.~) } { es,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''16[ c'' d'' b'] es''[ c'' d'' b'] }
  \tag #'left { \clef bass \split { <es~ es,_~>2 } { \once \omit Stem es,2 } }
  \tag #'common { s4 s4\< }
  |

  \tag #'right { \clef treble es''16[ c'' d'' b'] es''[ c'' f'' a'] }
  \tag #'left { \clef bass <es~ es,~>2 }
  \tag #'common { s4 s4\p }
  |

  \tag #'right { \clef treble des''16[ bes' es'' g'] c''[ as' des'' f'] }
  \tag #'left { \clef bass <es~ es,~>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ g' c'' e'] as'[ f' bes' d')] }
  \tag #'left { \clef bass <es es,>2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ es' d' es'] g'[ es' as' es'] }
  \tag #'left { \clef bass \split { r4 des'8([ c'] } { es2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ es' c'' es'] des''[ es' d'' es'] }
  \tag #'left { \clef bass \split { bes8[ as g f] } { es2 } }
  \tag #'common { s2\< }
  |

  \tag #'right { \clef treble es''16[ es' <es'' g'> es'] <es'' as'>[ es' <es'' c'' as'> es'] }
  \tag #'left { \clef bass es8[ des c as,)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <es'' bes' g'>16[ es' <es'' bes' g'> es'] c''([ es'' a' f''] }
  \tag #'left { \clef bass es8-.[ es,-.] es'16([ c' f' a] }
  \tag #'common { s4 s4\p }
  |

  \tag #'right { \clef treble bes'16[ des'' g' es''] as'[ c'' f' des''] }
  \tag #'left { \clef bass des'16[ bes es' g] c'[ as des' f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes'] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es'8) r <des''' des''>([ <c''' c''>] }
  \tag #'left { \clef bass g16)[ es d es] g[ es as es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' bes'>8[ <as'' as'> <g'' g'> <f'' f'>)] }
  \tag #'left { \clef bass bes16[ es c' es] des'[ es d' es] }
  \tag #'common { s2\< }
  |

  \tag #'right { \clef treble es''8-.[ <es'' c'' as'>-. <es'' des'' bes'>-. <es'' bes' g'>-.] }
  \tag #'left { \clef bass es'16[ es es' es] es'[ es es' es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <es'' c'' as'>8 r c'16[ c'' e' c''] }
  \tag #'left { \clef bass as8-.[ as,-.] bes([ g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ c'' b' c''] bes'[ c'' g' c''] }
  \tag #'left { \clef bass e8[ c d e] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as'16[ c'' f' c''] as''8([ f''] }
  \tag #'left { \clef bass f8[ as)] bes,16[ bes d bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8[ bes' c'' d''] }
  \tag #'left { \clef bass f16[ bes a bes] as[ bes f bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''8[ g'')] es'16[ es'' g' es''] }
  \tag #'left { \clef bass g16[ bes es bes] des'8([ bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ es'' d'' es''] des''[ es'' bes' es''] }
  \tag #'left { \clef bass g8[ es f g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ es'' <c'' es'> es''] <des'' g'>[ es'' <c'' as'> es''] }
  \tag #'left { \clef bass as8[ as, bes, c] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' f'>16[ es'' <bes' f'> des''] <as' es'>[ c'' <g' des'> bes'] }
  \tag #'left { \clef bass des8[ bes, es es,)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as' c'>8 r <bes'' bes'>([ <g'' g'>] }
  \tag #'left { \clef bass as,8-.[ as,,-.] c16[ c' e c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>8[ c'' <d'' d'> <e'' e'>] }
  \tag #'left { \clef bass g16[ c' b c'] bes[ c' g c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' f'>8[ <as'' as'>)] bes'16[ bes'' d'' bes''] }
  \tag #'left { \clef bass as16[ c' f c'] \clef treble as'8(->[ f'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16[ bes'' a'' bes''] as''[ bes'' f'' bes''] }
  \tag #'left { \clef treble d'8[ bes c' d'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16[ bes'' es'' bes''] <des''' des''>8([ <bes'' bes'>] }
  \tag #'left { \clef treble es'8[ g')] \clef bass es,16[ es g, es] }
  \tag #'common { s4 s4\< }
  |

  \tag #'right { \clef treble <g'' g'>8[ <es'' es'> <f'' f'> <g'' g'>] }
  \tag #'left { \clef bass bes,16[ es d es] des[ es bes, es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as'' as'>8) <c''' as'' es''>16[ es'''] <des''' bes'' es''>[ es''' <c''' as'' es''> es'''] }
  \tag #'left { \clef bass c16[ es as, as] g,[ g as, as] }
  \tag #'common { s8 s4.\f }
  |

  \tag #'right { \clef treble <c''' es''>16[ es''' <bes'' des''> des'''] <as'' c''>[ c''' <g'' bes'> bes''] }
  \tag #'left { \clef bass f,16[ f des, des] es,[ es es, es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as'' as'>8 r c'16[ g c' g] }
  \tag #'left { \clef bass as,,8-.[ as,-.] c,16[ g, c, g,] }
  \tag #'common { s4 s4\p }
  |

  \repeat volta 2 {
    \tag #'right { \clef treble c'16[ g d' b] es'[ c' f' d'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'common { s4 s4\< }
    |

    \tag #'right { \clef treble g'16[ es' b' g'] c''[ a' d'' b'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'common { s2 }
    |

    \tag #'right { \clef treble es''16[ c'' f'' d''] <g'' es''>8-. <b'' d'' b'>-. }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, g,, g,] }
    \tag #'common { s4. s8\f }
    |

    \tag #'right { \clef treble <c''' es'' c''>8-. r c'16[ g c' g] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'common { s4\f s4\p }
    |

    \tag #'right { \clef treble c'16[ g d' b] es'[ c' f' d'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'common { s8. s4\< s16 }
    |

    \tag #'right { \clef treble g'16[ es' b' g'] c''[ a' d'' b'] }
    \tag #'left { \clef bass c,16[ g, c, g,] c,[ g, c, g,] }
    \tag #'common { s2 }
    |

    \tag #'right { \clef treble es''16[ c'' es'' c''] <d'' bes'>8-.[ <fis'' a' fis'>-.] }
    \tag #'left { \clef bass c,16[ g, c, g,] d,[ g, d, d] }
    \tag #'common { s4. s8\f }
    |
  }
  \alternative {
    {
      \tag #'right { \clef treble <g'' bes' g'>8 r c'16[ g c' g] }
      \tag #'left { \clef bass g,,16[ g, g,, g,] c,[ g, c, g,] }
      \tag #'common { s4\f s4\p }
      |
    }
    {
      \tag #'right { \clef treble <g'' bes' g'>8-. r bes'16[ g' bes' g'] }
      \tag #'left { \clef bass g,,16[ g, g,, g,] g,[ d g, d] }
      \tag #'common { s4\f s4\p }
      |
    }
  }

  \tag #'right { \clef treble bes'16[ g' c'' a'] d''[ bes'] <fis'' a' fis'>8-. }
  \tag #'left { \clef bass g,16[ d g, d] g,[ d d, d] }
  \tag #'common { s4 s16 s8.\f }
  |

  \tag #'right { \clef treble <g'' bes' g'>8-. r bes'16[ g' bes' g'] }
  \tag #'left { \clef bass g,16[ d g, d] g,[ d f, des] }
  \tag #'common { s4\f s4\p }
  |

  \tag #'right { \clef treble bes'16[ g' bes' g'] bes'[ g'] <e'' bes' g'>8-. }
  \tag #'left { \clef bass e,16[ c f, des] e,[ c c, c] }
  \tag #'common { s4. s8\f }
  |

  \tag #'right { \clef treble <f'' as' f'>8-. r as'16[ f' as' f'] }
  \tag #'left { \clef bass f,16[ c f, c] f,[ c f, c] }
  \tag #'common { s4\f s4\p }
  |

  \tag #'right { \clef treble as'16[ f' bes' g'] c''[ as'] <e'' bes' g'>8-. }
  \tag #'left { \clef bass f,16[ c f, c] f,[ c c, c] }
  \tag #'common { s4. s8\f }
  |

  \tag #'right { \clef treble <f'' as' f'>8-. r as'16[ f' as' f'] }
  \tag #'left { \clef bass f,16[ c f, c] f,[ c es, ces] }
  \tag #'common { s4\f s4\p }
  |

  \tag #'right { \clef treble as'16[ f' as' f'] as'[ f'] <d'' as' f'>8 }
  \tag #'left { \clef bass d,16[ bes, es, ces] d,[ bes, bes,, bes,] }
  \tag #'common { s4. s8\f }
  |

  \tag #'right { \clef treble <es'' g' es'>8 r g'16[ es' g' es'] }
  \tag #'left { \clef bass es,16[ bes, es, bes,] r4 }
  \tag #'common { s4\f s4\p }
  |

  \tag #'right { \clef treble g'16[ es' as' f'] a'[ fis' bes' g'] }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble ces''16[ as' c'' a'] des''[ bes' d'' b'] }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''16([ c'' d'' b'] es''[ c'' d'' b'] }
  \tag #'left { \clef bass R2 }
  \tag #'common { s4 s4\< }
  |

  \tag #'right { \clef treble es''16[ c'' d'' b'] es''[ c'' f'' a'] }
  \tag #'left { \clef bass R2 }
  \tag #'common { s4 s4\p }
  |

  \tag #'right { \clef treble des''16[ bes' es'' g'] c''[ as' des'' f'] }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ g' c'' e'] as'[ f' bes' d')] }
  \tag #'left { \clef bass R2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ es' d' es'] g'[ es' as' es'] }
  \tag #'left { \clef bass \split { r4 des'8([ c'] } { es2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ es' c'' es'] des''[ es' d'' es'] }
  \tag #'left { \clef bass \split { bes8[ as g f] } { es2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''16[ es' <es'' g'> es'] <es'' as'>[ es' <es'' c'' as'> es'] }
  \tag #'left { \clef bass es8[ des c as,)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <es'' bes' g'>16[ es' <es'' bes' g'> es'] c''([ es'' a' f''] }
  \tag #'left { \clef bass es8-.[ es,-.] es'16([ c' f' a] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ des'' g' es''] as'[ c'' f' des''] }
  \tag #'left { \clef bass des'16[ bes es' g] c'[ as des' f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes')] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es'8 r <des''' des''>([ <c''' c''>] }
  \tag #'left { \clef bass g16[ es d es] g[ es as es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <bes'' bes'>8[ <as'' as'>) <g'' g'> <f'' f'>] }
  \tag #'left { \clef bass bes16[ es c' es] des'[ es d' es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''8-.[ <es'' c'' as'>-. <es'' des'' bes'>-. <es'' bes' g'>-.] }
  \tag #'left { \clef bass es'16[ es es' es] es'[ es es' es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <es'' c'' as'>8-. r c'16[ c'' e' c''] }
  \tag #'left { \clef bass as8-.[ as,-.] bes([ g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ c'' b' c''] bes'[ c'' g' c''] }
  \tag #'left { \clef bass e8[ c d e] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as'16[ c'' f' c''] as''8([ f''] }
  \tag #'left { \clef bass f8[ as)] bes,16([ bes d bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble d''8[ bes' c'' d''] }
  \tag #'left { \clef bass f16[ bes a bes] as[ bes f bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''8[ g'')] es'16[ es'' g' es''] }
  \tag #'left { \clef bass g16[ bes es bes)] des'8([ bes] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ es'' d'' es''] des''[ es'' bes' es''] }
  \tag #'left { \clef bass g8[ es f g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c''16[ es'' <c'' es'> es''] <des'' g'>[ es'' <c'' as'> es''] }
  \tag #'left { \clef bass as8[ as, bes, c] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <c'' f'>16[ es'' <bes' f'> des''] <as' es'>[ c'' <g' des'> bes'] }
  \tag #'left { \clef bass des8[ bes, es es,)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as' c'>8 r <bes'' bes'>([ <g'' g'>] }
  \tag #'left { \clef bass as,8-.[ as,,-.] c16[ c' e c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <e'' e'>8[ c''] <d'' d'>[ <e'' e'>] }
  \tag #'left { \clef bass g16[ c' b c'] bes[ c' g c'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <f'' f'>8[ <as'' as'>)] bes'16[ bes'' d'' bes''] }
  \tag #'left { \clef bass as16[ c' f c'] \clef treble as'8([ f'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble f''16[ bes'' a'' bes''] as''[ bes'' f'' bes''] }
  \tag #'left { \clef treble d'8[ bes c' d'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g''16[ bes'' es'' bes''] <des''' des''>8([ <bes'' bes'>] }
  \tag #'left { \clef treble es'8[ g')] \clef bass es,16[ es g, es] }
  \tag #'common { s4 s4\< }
  |

  \tag #'right { \clef treble <g'' g'>8[ <es'' es'> <f'' f'> <g'' g'>] }
  \tag #'left { \clef bass bes,16[ es d es] des[ es bes, es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as'' as'>8) <c''' as'' es''>16[ es'''] <des''' bes'' es''>[ es''' <c''' as'' es''> es'''] }
  \tag #'left { \clef bass c16[ es as, as] g,[ g as, as] }
  \tag #'common { s8 s4.\f }
  |

  \tag #'right { \clef treble <c''' es''>16[ es''' <bes'' des''> des'''] <as'' c''>[ c''' <g'' bes'> bes''] }
  \tag #'left { \clef bass f,16[ f des, des] es,[ es es, es] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <as'' as'>8 r as'16([ c'' f' des''] }
  \tag #'left { \clef bass as,,8-.[ as,-.] c'16([ as des' f] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'16[ bes' e' c''] f'[ as' d' bes')] }
  \tag #'left { \clef bass bes16[ g c' e] as[ f bes d)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble g'8-. <g'' es'' bes' g'>-. g''16([ es'' as'' c''] }
  \tag #'left { \clef bass es8-. <es es,>-. \clef treble es'16([ g' c' as'] }
  \tag #'common { s8 s4.\sf }
  |

  \tag #'right { \clef treble f''16[ d'' g'' b'] es''[ c'' f'' a')] }
  \tag #'left { \clef treble d'16[ f' b g'] c'[ es' a f')] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble des''8-. <bes'' f'' des'' bes'>-. bes'16([ des'' g' es''] }
  \tag #'left { \clef treble bes8-. \clef bass <bes bes,>-. des'16([ bes es' g] }
  \tag #'common { s8 s4.\sf }
  |

  \tag #'right { \clef treble as'16[ c'' f' des''] g'[ bes' e' c'')] }
  \tag #'left { \clef bass c'16[ as des' f] bes[ g c' e)] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as'8-. <as'' f'' c'' as'>-. as''16([ f'' bes'' d''] }
  \tag #'left { \clef bass f8-. <f f,>-. \clef treble f'16[ as' d' bes'] }
  \tag #'common { s8 s4.\sf }
  |

  \tag #'right { \clef treble g''16[ es'' as'' c''] f''[ d'' g'' b')] }
  \tag #'left { \clef treble es'16[ g' c' as'] d'[ f' b g'] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble es''8-.[ <c''' f'' es'' c''>-.] des''-.[ <bes'' f'' des'' bes'>-.] }
  \tag #'left { \clef treble c'8-. \clef bass a,-. bes,-.[ bes-.] }
  \tag #'common { s8 s8\sf s8 s8\sf }
  |

  \tag #'right { \clef treble des''8-.[ <bes'' es'' des'' bes'>-.] c''-.[ <as'' es'' c'' as'>-.] }
  \tag #'left { \clef bass g,8-.[ g-. as,-. as-.] }
  \tag #'common { s8 s4\sf s8\sf }
  |

  \tag #'right { \clef treble bes'8-.[ <g'' es'' bes' g'>-.] r <es'' es'>-. }
  \tag #'left { \clef bass es,8-.[ es-.] des16[ es bes, g] }
  \tag #'common { s8 s8\sf s4\p }
  |

  \tag #'right { \clef treble r8 <g'' g'>-. r <bes'' bes'>-. }
  \tag #'left { \clef bass des16[ es bes, g] des[ es bes, g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>8-.[ <es'' es'>-.] r <es'' es'>-. }
  \tag #'left { \clef bass des16[ es bes, g] des[ es bes, g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble r8 <g'' g'>-. r <bes'' bes'>-. }
  \tag #'left { \clef bass des16[ es bes, g] des[ es bes, g] }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble <g'' g'>8-.[ <es'' es'>-.] bes''16[ des''' g'' es'''] }
  \tag #'left { \clef bass des16[ es bes, g] r8 <es es,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass r8 <g g,>-. r <bes bes,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass <g g,>8-.[ <es es,>-.] r <es' es>-. }
  \tag #'common { s4 s4\cresc }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef treble r8 <g' g>-. r <bes' bes>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass <g' g>8-.[ <es' es>-.] r <bes bes,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes''16[ des''' g'' es'''] bes''[ des''' g'' es'''] }
  \tag #'left { \clef bass <g g,>8-.[ <es es,>-.] r <es es,>-. }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble c'''8-. as''16([ g''] f''[ es'' des'' c''] }
  \tag #'left { \clef bass <as as,>8-. <c c,>4.( }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ as' g' f'] es'[ des' c' bes] }
  \tag #'left { \clef bass <des des,>4 <es es,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as8) c'''16([ bes''] \tuplet 6/4 { as''16[ g'' f'' es''16 des'' c''] } }
  \tag #'left { \clef bass <f f,>8)-. <c c,>4.( }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble bes'16[ as' g' f'] es'[ des' c' bes] }
  \tag #'left { \clef bass <des des,>4 <es es,> }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as8)-. es'''32([ des''' c''' bes''] \tuplet 6/4 { as''16[ g'' f'' es''16 des'' c''] } }
  \tag #'left { \clef bass <f f,>8)-. <c c,>4.( }
  \tag #'common { s8 s4.\!\ff }
  |

  \tag #'right { \clef treble bes'16[ as' g' f'] es'[ des' c' bes] }
  \tag #'left { \clef bass <des des,>4 <es es,>) }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as8)-. r as''16([ f'' bes'' d'']) }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'common { s4 s4\p }
  |

  \tag #'right { \clef treble \split { s4. ges''8~ } { ges''16[ es'' as'' c''] f''[ des'' ges'' bes'] } }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'common { s4.\< s8\sf\> }
  |

  \tag #'right { \clef treble \split { ges''8([ f'')] } { es''16[ a' des'' bes'] } des''([ bes' fes'' g'] }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'common { s8. s16\! s4\p }
  |

  \tag #'right { \clef treble bes'16[ g' des'' fes'] g'[ fes' bes' des'] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef treble as'16[ es' c'' c')] as'([ f' bes' d']) }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'common { s4 s4\< }
  |

  \tag #'right { \clef treble \split { s4. ges'8~ } { ges'16[ es' as' c'] f'[ des' ges' bes] } }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'common { s4. s8\> }
  |

  \tag #'right { \clef treble \split { ges'8[ f'] s4 } { es'16[ a des' bes] \clef bass des'[ bes fes' g] } }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'common { s8. s16\! s4\p }
  |

  \tag #'right { \clef bass bes16[ g des' fes] g[ fes bes des] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass as16[ es c' c(] des'[ bes fes' g] }
  \tag #'left { \clef bass \split { as,,8 as,4.~ } { as,,2~ } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass bes16[ g des' fes] g[ fes bes des)] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass as16([ es c' c] des'[ bes fes' g] }
  \tag #'left { \clef bass \split { as,,8( as,4.~) } { as,,2~ } }
  \tag #'common { s8\decresc s4. }
  |

  \tag #'right { \clef bass bes16[ g des' fes] g[ fes bes des)] }
  \tag #'left { \clef bass \split { as,2 } { as,,2 } }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass as16([ es c' c] es[ c as as,]) }
  \tag #'left { \clef bass as,,2~ }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass c16[ as, es es,] as,[ es, c c,] }
  \tag #'left { \clef bass as,,2 }
  \tag #'common { s2 }
  |

  \tag #'right { \clef bass r2 }
  \tag #'left { \clef bass as,,2~ }
  \tag #'common { s2\!\pp }
  |

  \partial 4
  \tag #'right { \clef bass r4 }
  \tag #'left { \clef bass as,,4 }
  \tag #'common { s4 }
  |

  \bar "|."
}
