\version "2.24.1"

\include "content.ly"

urtextEditionSubtitle = "Urtext-ish edition"

urtextHeaderData = \header {
  title = \workTitle
  subtitle = \urtextEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \urtextEditionSubtitle
}

\book {
  \urtextHeaderData

  \bookpart {
    \frontMatterPaper
    \editionCoverPage \workTitle \urtextEditionSubtitle \workComposer \workOpus
  }

  \bookpart {
    \frontMatterPaper
    \editionInfoPage \workTitle \urtextEditionSubtitle \workComposer \workOpus \workDate \workEditor
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'urtext \firstMovement
      \urtextLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'urtext \secondMovement
      \urtextLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'urtext \thirdMovement
      \urtextLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'urtext \fourthMovement
      \urtextLayout
    }
  }
}
