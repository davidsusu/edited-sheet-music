\version "2.26.0"

\include "content.ly"
\include "../../shared/src/lilypond/rectify.ily"

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

  \score {
    \unfoldRepeats
    \articulate
    \rectify

    {
      \renderMovementForMidi #'main \firstMovement
      \movementPause
      \renderMovementForMidi #'main \secondMovement
    }

    \midi { }
  }
}
