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
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \mainEditionSubtitle
}

\book {
  \mainHeaderData

  \bookpart {
    \frontMatterPaper
    \editionCoverPage \workTitle \mainEditionSubtitle \workComposer \workOpus
  }

  \bookpart {
    \frontMatterPaper
    \editionInfoPage \workTitle \mainEditionSubtitle \workComposer \workOpus \workDate \workEditor
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main \firstMovement
      \defaultLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main \secondMovement
      \defaultLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main \thirdMovement
      \defaultLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main \fourthMovement
      \defaultLayout
    }
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
