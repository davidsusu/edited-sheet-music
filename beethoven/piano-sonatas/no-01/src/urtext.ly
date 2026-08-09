\version "2.24.1"

\include "content.ly"

urtextEditionSubtitle = "Urtext-ish edition"

urtextHeaderData = \header {
  title = \workTitle
  subtitle = \urtextEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
}

\book {
  \urtextHeaderData
  \editionCoverPage \workTitle \urtextEditionSubtitle \workComposer \workOpus
  \pageBreak

  \score {
    \renderMovementForEdition #'urtext \firstMovement
    \urtextLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'urtext \secondMovement
    \urtextLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'urtext \thirdMovement
    \urtextLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'urtext \fourthMovement
    \urtextLayout
  }

}
