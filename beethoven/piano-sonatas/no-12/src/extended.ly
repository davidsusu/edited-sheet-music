\version "2.24.1"

\include "content.ly"

extendedEditionSubtitle = "Extended critical edition"

extendedHeaderData = \header {
  title = \workTitle
  subtitle = \extendedEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \extendedEditionSubtitle
}

\book {
  \extendedHeaderData

  \bookpart {
    \frontMatterPaper
    \editionCoverPage \workTitle \extendedEditionSubtitle \workComposer \workOpus
  }

  \bookpart {
    \frontMatterPaper
    \editionInfoPage \workTitle \extendedEditionSubtitle \workComposer \workOpus \workDate \workEditor
  }

  \bookpart {
    \frontMatterPaper
    \markup \null
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \firstMovement
      \defaultLayout
    }
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \secondMovement
      \defaultLayout
    }
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \thirdMovement
      \defaultLayout
    }
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \fourthMovement
      \defaultLayout
    }
  }
}
