\version "2.24.1"

\include "content.ly"
\include "../../shared/rectify.ly"

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
    \rectify

    {
      \renderMovementForMidi #'main \firstMovement
      \movementPause
      \renderMovementForMidi #'main \secondMovement
      \movementPause
      \renderMovementForMidi #'main \thirdMovement
      \movementPause
      \renderMovementForMidi #'main \fourthMovement
    }

    \midi { }
  }

}
