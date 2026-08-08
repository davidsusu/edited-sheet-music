\version "2.24.1"

\include "content.ly"

extendedEditionSubtitle = "Extended critical edition"

extendedHeaderData = \header {
  title = \workTitle
  subtitle = \extendedEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
}

\book {
  \extendedHeaderData
  \editionCoverPage \workTitle \extendedEditionSubtitle \workComposer \workOpus
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \firstMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \secondMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \thirdMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \fourthMovement
    \defaultLayout
  }

}
