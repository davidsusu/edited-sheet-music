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

  \tag #'cantus { \clef treble d''4 c'' bes'2 \appendLyrics "__ __ __" }
  \tag #'altus { \clef treble f'2 g'~ \appendLyrics "__ __" }
  \tag #'tenor { \clef "treble_8" d'8 e' f'4~ f' e'8 d' \appendLyrics "__ __ __ __ __ __" }
  \tag #'bassus { \clef bass bes4 a g2~ \appendLyrics "__ __ __" }
  \barCheck

  \tag #'cantus { \clef treble bes'2 a'~ \appendLyrics "__ -- nes" }
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
  \tag #'altus { \clef treble R1 \appendLyrics "" }
  \tag #'tenor { \clef "treble_8" R1 \appendLyrics "" }
  \tag #'bassus { \clef bass R1 \appendLyrics "" }
  \barCheck

  \tag #'global { \bar "|." }
}

voiceSpecs = #'(
  (cantus "Cantus" "C.")
  (altus "Altus" "A.")
  (tenor "Tenor" "T.")
  (bassus "Bassus" "B.")
)
