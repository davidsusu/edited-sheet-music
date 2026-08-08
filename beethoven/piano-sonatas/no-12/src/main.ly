\version "2.24.1"

\include "content.ly"

mainEditionSubtitle = "Pragmatic edition"

mainHeaderData = \header {
  title = \workTitle
  subtitle = \mainEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
}

\book {
  \mainHeaderData
  \editionCoverPage \workTitle \mainEditionSubtitle \workComposer \workOpus
  \pageBreak

  \score {
    \renderMovementForEdition #'main \firstMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'main \secondMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'main \thirdMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'main \fourthMovement
    \defaultLayout
  }

  \score {
    \unfoldRepeats
    \articulate

    {
      \renderMovementForEdition #'main \firstMovement
      \renderMovementForEdition #'main \secondMovement
      \renderMovementForEdition #'main \thirdMovement
      \renderMovementForEdition #'main \fourthMovement
    }

    \midi {
      \context {
        \Staff
        \accepts Dynamics
      }
    }
  }

}
