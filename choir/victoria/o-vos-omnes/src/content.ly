\version "2.24.1"

\include "../../../shared/src/lilypond/lib.ly"

workTitle = "O vos omnes"
workComposer = "Tomás Luis de Victoria"
workDate = ""
workEditor = "Dávid Horváth"

scoreMusic = {
  \tag #'global {
    \mark \markup { \bold "O vos omnes" }
    \tempo 2 = 54
    \set Score.tempoHideNote = ##t
    \time 2/2
    \key c \major
    \accidentalStyle default
  }

  \tag #'cantus { \clef treble R1 \appendLyrics "" }
  \tag #'altus { \clef treble r2 d'~ \appendLyrics "O" }
  \tag #'tenor { \clef "treble_8" d'1 \appendLyrics "O" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'cantus { \clef treble a'1 \appendLyrics "O" }
  \tag #'altus { \clef treble d'2 a'~ \appendLyrics "__ vos" }
  \tag #'tenor { \clef "treble_8" f'1 \appendLyrics "__" }
  \tag #'bassus { \clef bass d1 \appendLyrics "O" }
  \barCheck

  \tag #'cantus { \clef treble cis''2 d''~ \appendLyrics "vos om" }
  \tag #'altus { \clef treble a'2 f'~ \appendLyrics "__ om" }
  \tag #'tenor { \clef "treble_8" e'2 d'4. c'8 \appendLyrics "vos om __" }
  \tag #'bassus { \clef bass a2 bes~ \appendLyrics "vos om" }
  \barCheck

  \tag #'cantus { \clef treble d''4 c'' bes'2~ \appendLyrics "__ __ __" }
  \tag #'altus { \clef treble f'2 g'~ \appendLyrics "__ __" }
  \tag #'tenor { \clef "treble_8" d'8 e' f'4~ f' e'8 d' \appendLyrics "__ __ __ __ __ __" }
  \tag #'bassus { \clef bass bes4 a g2~ \appendLyrics "__ __ __" }
  \barCheck

  \tag #'cantus { \clef treble bes'2 a'~ \appendLyrics "__ -- [m]nes" }
  \tag #'altus { \clef treble g'2 c' \appendLyrics "__ -- nes" }
  \tag #'tenor { \clef "treble_8" e'2 f'~ \appendLyrics "__ -- nes" }
  \tag #'bassus { \clef bass g2 f~ \appendLyrics "__ -- nes" }
  \barCheck

  \tag #'cantus { \clef treble a'2 r4 a'~ \appendLyrics "__ qui" }
  \tag #'altus { \clef treble c''2. c''4 \appendLyrics "qui tran" }
  \tag #'tenor { \clef "treble_8" f'2 e'~ \appendLyrics "__ qui" }
  \tag #'bassus { \clef bass f2 a2~ \appendLyrics "__ qui" }
  \barCheck

  \tag #'cantus { \clef treble a'4 a' c''2 \appendLyrics "__ tran -- si" }
  \tag #'altus { \clef treble c''2 a'4 c''~ \appendLyrics "-- si -- tis per" }
  \tag #'tenor { \clef "treble_8" e'4 e' e'2 \appendLyrics "__ tran -- si" }
  \tag #'bassus { \clef bass a4 a a2 \appendLyrics "__ tran -- si" }
  \barCheck

  \tag #'cantus { \clef treble d''2. d''4 \appendLyrics "-- tis per" }
  \tag #'altus { \clef treble c''4 b'2 a'4 \appendLyrics "__ __ __" }
  \tag #'tenor { \clef "treble_8" g'4 g8 a b c' d'4~ \appendLyrics "-- tis per __ __ __ __" }
  \tag #'bassus { \clef bass g2. f4 \appendLyrics "-- tis per" }
  \barCheck

  \tag #'cantus { \clef treble e''1 \appendLyrics "vi" }
  \tag #'altus { \clef treble g'1 \appendLyrics "vi" }
  \tag #'tenor { \clef "treble_8" d'4 cis'8 b cis'2 \appendLyrics "__ vi __ __" }
  \tag #'bassus { \clef bass e1 \appendLyrics "vi" }
  \barCheck

  \tag #'cantus { \clef treble a'1 \appendLyrics "-- am" }
  \tag #'altus { \clef treble fis'1 \appendLyrics "-- am" }
  \tag #'tenor { \clef "treble_8" d'1 \appendLyrics "-- am" }
  \tag #'bassus { \clef bass d1 \appendLyrics "-- am" }
  \barCheck

  \tag #'cantus { \clef treble R1 \appendLyrics "" }
  \tag #'altus { \clef treble r2 a' \appendLyrics "at --" }
  \tag #'tenor { \clef "treble_8" r2 e' \appendLyrics "at --" }
  \tag #'bassus { \clef bass r2 a \appendLyrics "at --" }
  \barCheck

  \tag #'cantus { \clef treble r4 a' d''2~ \appendLyrics "at -- ten" }
  \tag #'altus { \clef treble a'2. a'4 \appendLyrics "ten -- di --" }
  \tag #'tenor { \clef "treble_8" f'2. f'4 \appendLyrics "ten -- di --" }
  \tag #'bassus { \clef bass d'2. d'4 \appendLyrics "ten -- di --" }
  \barCheck

  \tag #'cantus { \clef treble d''4 d'' d''2 \appendLyrics "__ -- di -- te," }
  \tag #'altus { \clef treble a'1 \appendLyrics "te," }
  \tag #'tenor { \clef "treble_8" f'1 \appendLyrics "te," }
  \tag #'bassus { \clef bass d'1 \appendLyrics "te," }
  \barCheck

  \tag #'cantus { \clef treble d''2 cis'' \appendLyrics "et vi --" }
  \tag #'altus { \clef treble bes'2 a'4 a'~ \appendLyrics "et vi -- de --" }
  \tag #'tenor { \clef "treble_8" g'2 e'4 f'~ \appendLyrics "et vi -- de --" }
  \tag #'bassus { \clef bass g2 a \appendLyrics "et vi --" }
  \barCheck

  \tag #'cantus { \clef treble d''1 \appendLyrics "de --" }
  \tag #'altus { \clef treble a'4 g'8 f' g'2 \appendLyrics "_ _ _ _" }
  \tag #'tenor { \clef "treble_8" f'8 e' d' c' d'2 \appendLyrics "_ _ _ _ _" }
  \tag #'bassus { \clef bass bes1 \appendLyrics "de --" }
  \barCheck

  \tag #'cantus { \clef treble cis''2 r \appendLyrics "te:" }
  \tag #'altus { \clef treble a'2 r \appendLyrics "te:" }
  \tag #'tenor { \clef "treble_8" e'2 r \appendLyrics "te:" }
  \tag #'bassus { \clef bass a2 r \appendLyrics "te:" }
  \barCheck

  \tag #'cantus { \clef treble R1 \appendLyrics "" }
  \tag #'altus { \clef treble r2 a'~ \appendLyrics "Si" }
  \tag #'tenor { \clef "treble_8" f'1 \appendLyrics "Si" }
  \tag #'bassus { \clef bass d'1 \appendLyrics "Si" }
  \barCheck

  \tag #'cantus { \clef treble r2 d''~ \appendLyrics "Si" }
  \tag #'altus { \clef treble a'2 g' \appendLyrics "_ est" }
  \tag #'tenor { \clef "treble_8" e'2 d' \appendLyrics "est do --" }
  \tag #'bassus { \clef bass c'2 bes \appendLyrics "est do --" }
  \barCheck

  \tag #'cantus { \clef treble d''2 c'' \appendLyrics "_ est" }
  \tag #'altus { \clef treble a'1 \appendLyrics "do --" }
  \tag #'tenor { \clef "treble_8" e'1 \appendLyrics "lor" }
  \tag #'bassus { \clef bass a1 \appendLyrics "lor" }
  \barCheck

  \tag #'cantus { \clef treble bes'1 \appendLyrics "do --" }
  \tag #'altus { \clef treble d'2 g'4. f'8 \appendLyrics "lor si -- _" }
  \tag #'tenor { \clef "treble_8" g'4. f'8 e'4 d' \appendLyrics "si -- _ _ mi --" }
  \tag #'bassus { \clef bass g1 \appendLyrics "si --" }
  \barCheck

  \tag #'cantus { \clef treble a'2 r4 a'~ \appendLyrics "lor si --" }
  \tag #'altus { \clef treble e'4 d'2 cis'4 \appendLyrics "_ _ _" }
  \tag #'tenor { \clef "treble_8" cis'4 f' e' f'~ \appendLyrics "lis, si -- _ _" }
  \tag #'bassus { \clef bass a1 \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble a'4 g'8 f' g'4 g' \appendLyrics "_ _ _ _ mi --" }
  \tag #'altus { \clef treble d'2. d'4 \appendLyrics "_ mi --" }
  \tag #'tenor { \clef "treble_8" f'4 e' d'2~ \appendLyrics "_ mi -- lis," }
  \tag #'bassus { \clef bass bes!2. bes4 \appendLyrics "_ mi --" }
  \barCheck

  \tag #'cantus { \clef treble a'1 \appendLyrics "lis" }
  \tag #'altus { \clef treble e'2 r4 e'~ \appendLyrics "lis sic --" }
  \tag #'tenor { \clef "treble_8" d'4 cis'8 b cis'4 a~ \appendLyrics "__ _ _ _ sic --" }
  \tag #'bassus { \clef bass a1 \appendLyrics "lis" }
  \barCheck

  \tag #'cantus { \clef treble r4 a'2 a'4 \appendLyrics "sic -- ut" }
  \tag #'altus { \clef treble e'4 e' e' e' \appendLyrics "_ ut do -- lor" }
  \tag #'tenor { \clef "treble_8" a4 a a a \appendLyrics "_ ut do -- lor" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'cantus { \clef treble a'4 a' bes' a'~ \appendLyrics "do -- lor me -- _" }
  \tag #'altus { \clef treble f'2. e'4 \appendLyrics "me -- _" }
  \tag #'tenor { \clef "treble_8" d'2. c'4 \appendLyrics "me -- _" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'cantus { \clef treble a'4 g' a' cis''~ \appendLyrics "_ _ us, sic --" }
  \tag #'altus { \clef treble d'2 e' \appendLyrics "_ us" }
  \tag #'tenor { \clef "treble_8" bes2 a4 e'~ \appendLyrics "_ us, sic --" }
  \tag #'bassus { \clef bass r2 r4 a~ \appendLyrics "sic --" }
  \barCheck

  \tag #'cantus { \clef treble cis''4 cis'' cis'' cis'' \appendLyrics "_ ut do -- lor" }
  \tag #'altus { \clef treble r4 a'2 a'4 \appendLyrics "sic -- ut" }
  \tag #'tenor { \clef "treble_8" e'4 e' e' e' \appendLyrics "_ ut do -- lor" }
  \tag #'bassus { \clef bass a4 a a a \appendLyrics "_ ut do -- lor" }
  \barCheck

  \tag #'cantus { \clef treble d''1 \appendLyrics "me --" }
  \tag #'altus { \clef treble a'4 a' bes'2 \appendLyrics "do -- lor me --" }
  \tag #'tenor { \clef "treble_8" f'4. e'8 f'4 g'~ \appendLyrics "me -- _ _ _" }
  \tag #'bassus { \clef bass d'2 bes \appendLyrics "me -- _" }
  \barCheck

  \tag #'cantus { \clef treble c''1 \appendLyrics "us" }
  \tag #'altus { \clef treble a'4 g'8 f' g'2 \appendLyrics "_ _ _ _" }
  \tag #'tenor { \clef "treble_8" g'8 f' f'4~ f' e' \appendLyrics "_ _ _ _ _" }
  \tag #'bassus { \clef bass c'1 \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble r4 a'2 a'4 \appendLyrics "sic -- ut" }
  \tag #'altus { \clef treble a'4 f'2 f'4 \appendLyrics "us, sic -- ut" }
  \tag #'tenor { \clef "treble_8" f'2 r4 d'~ \appendLyrics "us sic --" }
  \tag #'bassus { \clef bass f4 d2 d4 \appendLyrics "us, sic -- ut" }
  \barCheck

  \tag #'cantus { \clef treble a'4 a' bes'2~ \appendLyrics "do -- lor me --" }
  \tag #'altus { \clef treble e'4 fis' g'2~ \appendLyrics "do -- lor me --" }
  \tag #'tenor { \clef "treble_8" d'4 cis' d' d' \appendLyrics "_ ut do -- lor" }
  \tag #'bassus { \clef bass a4 a g2~ \appendLyrics "do -- lor me --" }
  \barCheck

  \tag #'cantus { \clef treble bes'2 a'~ \appendLyrics "_ us." }
  \tag #'altus { \clef treble g'2 e'~ \appendLyrics "_ us." }
  \tag #'tenor { \clef "treble_8" e'4 d'~ d' cis'8 b \appendLyrics "me -- _ _ _ _" }
  \tag #'bassus { \clef bass g2 a~ \appendLyrics "_ us." }
  \barCheck

  \tag #'cantus { \clef treble a'2 r \appendLyrics "_" }
  \tag #'altus { \clef treble e'2 r \appendLyrics "_" }
  \tag #'tenor { \clef "treble_8" cis'2 r \appendLyrics "us." }
  \tag #'bassus { \clef bass a2 r \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble d''2 f''~ \appendLyrics "At -- ten --" }
  \tag #'altus { \clef treble r2 a' \appendLyrics "At --" }
  \tag #'tenor { \clef "treble_8" r2 d' \appendLyrics "At --" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'cantus { \clef treble f''4 e'' e''2~ \appendLyrics "_ di -- te" }
  \tag #'altus { \clef treble c''2. b'4 \appendLyrics "ten -- di --" }
  \tag #'tenor { \clef "treble_8" a'2. gis'4 \appendLyrics "ten -- di --" }
  \tag #'bassus { \clef bass a2 e'~ \appendLyrics "At -- ten --" }
  \barCheck

  \tag #'cantus { \clef treble e''2 r4 e''~ \appendLyrics "_ u --" }
  \tag #'altus { \clef treble b'1 \appendLyrics "te," }
  \tag #'tenor { \clef "treble_8" gis'!1 \appendLyrics "te," }
  \tag #'bassus { \clef bass e'4 e' e'2 \appendLyrics "_ di -- te," }
  \barCheck

  \tag #'cantus { \clef treble e''4 e'' e'' e'' \appendLyrics "_ ni -- ver -- si" }
  \tag #'altus { \clef treble c''4. c''8 c''4 c'' \appendLyrics "u -- ni -- ver -- si" }
  \tag #'tenor { \clef "treble_8" a'4. a'8 a'4 g' \appendLyrics "u -- ni -- ver -- si" }
  \tag #'bassus { \clef bass a4. a8 a4 c' \appendLyrics "u -- ni -- ver -- si" }
  \barCheck

  \tag #'cantus { \clef treble d''2. d''4 \appendLyrics "po -- pu --" }
  \tag #'altus { \clef treble bes'4 a'2 g'4 \appendLyrics "po -- _ pu --" }
  \tag #'tenor { \clef "treble_8" f'4. e'8 d'4 d' \appendLyrics "po -- _ _ pu --" }
  \tag #'bassus { \clef bass d'4. c'8 bes4 bes \appendLyrics "po -- _ _ pu --" }
  \barCheck

  \tag #'cantus { \clef treble cis''2 r \appendLyrics "li" }
  \tag #'altus { \clef treble a'2 r \appendLyrics "li" }
  \tag #'tenor { \clef "treble_8" e'2 r \appendLyrics "li" }
  \tag #'bassus { \clef bass a2 r \appendLyrics "li" }
  \barCheck

  \tag #'cantus { \clef treble f''1 \appendLyrics "et" }
  \tag #'altus { \clef treble a'1~ \appendLyrics "et" }
  \tag #'tenor { \clef "treble_8" d'1 \appendLyrics "et" }
  \tag #'bassus { \clef bass d1 \appendLyrics "et" }
  \barCheck

  \tag #'cantus { \clef treble e''2 d''4. e''8 \appendLyrics "vi -- de -- _" }
  \tag #'altus { \clef treble a'2 f'~ \appendLyrics "_ vi --" }
  \tag #'tenor { \clef "treble_8" cis'2 d'4. c'!8 \appendLyrics "vi -- de -- _" }
  \tag #'bassus { \clef bass a2 bes~ \appendLyrics "vi -- de --" }
  \barCheck

  \tag #'cantus { \clef treble f''2 g'' \appendLyrics "_ _" }
  \tag #'altus { \clef treble f'2 bes' \appendLyrics "_ de --" }
  \tag #'tenor { \clef "treble_8" d'8 e' f'4~ f' e' \appendLyrics "_ _ _ _ _" }
  \tag #'bassus { \clef bass bes4 a g2 \appendLyrics "_ _ _" }
  \barCheck

  \tag #'cantus { \clef treble c''1 \appendLyrics "te" }
  \tag #'altus { \clef treble a'2 r4 a' \appendLyrics "te do --" }
  \tag #'tenor { \clef "treble_8" f'2 e' \appendLyrics "te do --" }
  \tag #'bassus { \clef bass f2 a \appendLyrics "te do --" }
  \barCheck

  \tag #'cantus { \clef treble R1 \appendLyrics "" }
  \tag #'altus { \clef treble bes'2. a'4 \appendLyrics "lo -- rem" }
  \tag #'tenor { \clef "treble_8" f'2. e'4 \appendLyrics "lo -- rem" }
  \tag #'bassus { \clef bass d'2. c'4 \appendLyrics "lo -- rem" }
  \barCheck

  \tag #'cantus { \clef treble r2 e''~ \appendLyrics "do --" }
  \tag #'altus { \clef treble g'2 a' \appendLyrics "me -- um" }
  \tag #'tenor { \clef "treble_8" d'2. cis'8 b \appendLyrics "me -- um, __" }
  \tag #'bassus { \clef bass bes2 a~ \appendLyrics "me -- um" }
  \barCheck

  \tag #'cantus { \clef treble e''2 f'' \appendLyrics "_ lo --" }
  \tag #'altus { \clef treble r4 a' c''2~ \appendLyrics "do -- lo --" }
  \tag #'tenor { \clef "treble_8" cis'4 a a'2~ \appendLyrics "_ do -- lo --" }
  \tag #'bassus { \clef bass a2 r \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble e''4 e''2 d''4 \appendLyrics "rem me -- _" }
  \tag #'altus { \clef treble c''4 bes'! a'2 \appendLyrics "_ rem me --" }
  \tag #'tenor { \clef "treble_8" a'4 g' f'2 \appendLyrics "_ rem me --" }
  \tag #'bassus { \clef bass r2 r4 d \appendLyrics "do --" }
  \barCheck

  \tag #'cantus { \clef treble e''4 c''2 f''4~ \appendLyrics "um, do -- lo --" }
  \tag #'altus { \clef treble a'2 r4 a' \appendLyrics "um do --" }
  \tag #'tenor { \clef "treble_8" e'4 e' a'2 \appendLyrics "um, do -- lo --" }
  \tag #'bassus { \clef bass a2 f \appendLyrics "lo -- rem" }
  \barCheck

  \tag #'cantus { \clef treble f''4 d''2 e''4~ \appendLyrics "_ rem me --" }
  \tag #'altus { \clef treble f'2 bes' \appendLyrics "lo -- rem" }
  \tag #'tenor { \clef "treble_8" d'2 g' \appendLyrics "rem me --" }
  \tag #'bassus { \clef bass bes2 g \appendLyrics "me -- _" }
  \barCheck

  \tag #'cantus { \clef treble e''8 d'' d''2 cis''4 \appendLyrics "_ _ _ _" }
  \tag #'altus { \clef treble a'1 \appendLyrics "me --" }
  \tag #'tenor { \clef "treble_8" f'4 e'8 d' e'2 \appendLyrics "_ _ _ _" }
  \tag #'bassus { \clef bass a1 \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble d''2 r \appendLyrics "um." }
  \tag #'altus { \clef treble fis'2 r \appendLyrics "um." }
  \tag #'tenor { \clef "treble_8" d'2 r \appendLyrics "um." }
  \tag #'bassus { \clef bass d2 r \appendLyrics "um." }
  \barCheck

  \tag #'cantus { \clef treble R1 \appendLyrics "" }
  \tag #'altus { \clef treble r2 a'~ \appendLyrics "Si" }
  \tag #'tenor { \clef "treble_8" f'1 \appendLyrics "Si" }
  \tag #'bassus { \clef bass d'1 \appendLyrics "Si" }
  \barCheck

  \tag #'cantus { \clef treble r2 d''~ \appendLyrics "Si" }
  \tag #'altus { \clef treble a'2 g' \appendLyrics "_ est" }
  \tag #'tenor { \clef "treble_8" e'2 d' \appendLyrics "est do --" }
  \tag #'bassus { \clef bass c'2 bes \appendLyrics "est do --" }
  \barCheck

  \tag #'cantus { \clef treble d''2 c'' \appendLyrics "_ est" }
  \tag #'altus { \clef treble a'1 \appendLyrics "do --" }
  \tag #'tenor { \clef "treble_8" e'1 \appendLyrics "lor" }
  \tag #'bassus { \clef bass a1 \appendLyrics "lor" }
  \barCheck

  \tag #'cantus { \clef treble bes'1 \appendLyrics "do --" }
  \tag #'altus { \clef treble d'2 g'4. f'8 \appendLyrics "lor si -- _" }
  \tag #'tenor { \clef "treble_8" g'4. f'8 e'4 d' \appendLyrics "si -- _ _ mi --" }
  \tag #'bassus { \clef bass g1 \appendLyrics "si --" }
  \barCheck

  \tag #'cantus { \clef treble a'2 r4 a'~ \appendLyrics "lor si --" }
  \tag #'altus { \clef treble e'4 d'2 cis'4 \appendLyrics "_ _ _" }
  \tag #'tenor { \clef "treble_8" cis'4 f' e' f'~ \appendLyrics "lis, si -- _ _" }
  \tag #'bassus { \clef bass a1 \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble a'4 g'8 f' g'4 g' \appendLyrics "_ _ _ _ mi --" }
  \tag #'altus { \clef treble d'2. d'4 \appendLyrics "_ mi --" }
  \tag #'tenor { \clef "treble_8" f'4 e' d'2~ \appendLyrics "_ mi -- lis" }
  \tag #'bassus { \clef bass bes!2. bes4 \appendLyrics "_ mi --" }
  \barCheck

  \tag #'cantus { \clef treble a'1 \appendLyrics "lis" }
  \tag #'altus { \clef treble e'2 r4 e'~ \appendLyrics "lis sic --" }
  \tag #'tenor { \clef "treble_8" d'4 cis'8 b cis'4 a~ \appendLyrics "__ _ _ _ sic --" }
  \tag #'bassus { \clef bass a1 \appendLyrics "lis" }
  \barCheck

  \tag #'cantus { \clef treble r4 a'2 a'4 \appendLyrics "sic -- ut" }
  \tag #'altus { \clef treble e'4 e' e' e' \appendLyrics "_ ut do -- lor" }
  \tag #'tenor { \clef "treble_8" a4 a a a \appendLyrics "_ ut do -- lor" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'cantus { \clef treble a'4 a' bes' a'~ \appendLyrics "do -- lor me -- _" }
  \tag #'altus { \clef treble f'2. e'4 \appendLyrics "me -- _" }
  \tag #'tenor { \clef "treble_8" d'2. c'4 \appendLyrics "me -- _" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'cantus { \clef treble a'4 g' a' cis''~ \appendLyrics "_ _ us, sic --" }
  \tag #'altus { \clef treble d'2 e' \appendLyrics "_ us" }
  \tag #'tenor { \clef "treble_8" bes2 a4 e'~ \appendLyrics "_ us, sic --" }
  \tag #'bassus { \clef bass r2 r4 a~ \appendLyrics "sic --" }
  \barCheck

  \tag #'cantus { \clef treble cis''4 cis''! cis'' cis'' \appendLyrics "_ ut do -- lor" }
  \tag #'altus { \clef treble r4 a'2 a'4 \appendLyrics "sic -- ut" }
  \tag #'tenor { \clef "treble_8" e'4 e' e' e' \appendLyrics "_ ut do -- lor" }
  \tag #'bassus { \clef bass a4 a a a \appendLyrics "_ ut do -- lor" }
  \barCheck

  \tag #'cantus { \clef treble d''1 \appendLyrics "me --" }
  \tag #'altus { \clef treble a'4 a' bes'2 \appendLyrics "do -- lor me --" }
  \tag #'tenor { \clef "treble_8" f'4. e'8 f'4 g'~ \appendLyrics "me -- _ _ _" }
  \tag #'bassus { \clef bass d'2 bes \appendLyrics "me -- _" }
  \barCheck

  \tag #'cantus { \clef treble c''1 \appendLyrics "us" }
  \tag #'altus { \clef treble a'2 g' \appendLyrics "_ _" }
  \tag #'tenor { \clef "treble_8" g'8 f' f'4 ~ f' e' \appendLyrics "_ _ _ _" }
  \tag #'bassus { \clef bass c'1 \appendLyrics "_" }
  \barCheck

  \tag #'cantus { \clef treble r4 a'2 a'4 \appendLyrics "sic -- ut" }
  \tag #'altus { \clef treble a'4 f'2 f'4 \appendLyrics "us, sic -- ut" }
  \tag #'tenor { \clef "treble_8" f'2 r4 d'~ \appendLyrics "us sic --" }
  \tag #'bassus { \clef bass f4 d2 d4 \appendLyrics "us, sic -- ut" }
  \barCheck

  \tag #'cantus { \clef treble a'4 a' bes'2~ \appendLyrics "do -- lor me --" }
  \tag #'altus { \clef treble e'4 fis' g'2~ \appendLyrics "do -- lor me --" }
  \tag #'tenor { \clef "treble_8" d'4 cis' d' d' \appendLyrics "_ ut do -- lor" }
  \tag #'bassus { \clef bass a4 a g2~ \appendLyrics "do -- lor me --" }
  \barCheck

  \tag #'cantus { \clef treble bes'2 a'~ \appendLyrics "_ us." }
  \tag #'altus { \clef treble g'4 f' e'2~ \appendLyrics "_ _ _" }
  \tag #'tenor { \clef "treble_8" e'4 d'~ d' cis'8 b \appendLyrics "me -- _ _ _" }
  \tag #'bassus { \clef bass g2 a~ \appendLyrics "_ _" }
  \barCheck

  \tag #'cantus { \clef treble a'1\fermata \appendLyrics "_" }
  \tag #'altus { \clef treble e'2 fis'\fermata \appendLyrics "_ us." }
  \tag #'tenor { \clef "treble_8" cis'2 d'\fermata \appendLyrics "_ us." }
  \tag #'bassus { \clef bass a2 d\fermata \appendLyrics "_ us." }
  \barCheck

  \tag #'global { \bar "|." }
}

voiceSpecs = #'(
  (cantus "Cantus" "C.")
  (altus "Altus" "A.")
  (tenor "Tenor" "T.")
  (bassus "Bassus" "B.")
)
