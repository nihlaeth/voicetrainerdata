\include "color-pitch.ly"
\include "articulate.ly"
\version "2.19.50"

\header {
}

voicetrainerTempo = 140
voicetrainerKey = c
voicetrainerKeyNoOctave = c
voicetrainerSound = "Mi"

% sheetonly start
global= {
  \time 4/4
}

exercise = {
  \override NoteHead #'color = #color-notehead
  \transpose c \voicetrainerKey \relative c' {
    \key c \minor
    < c es g >1\sustainOn |
    c4( d es f g a b c
    bes as g f es d c2)
    \bar "|."
  }
}

\book {
  \score {
    <<
      \new ChordNames { \chordmode { \voicetrainerKeyNoOctave }}
      \new Staff = "voice" <<
        \global
        \exercise
        \addlyrics {
          \skip 1 \voicetrainerSound

        }
      >>
    >>
    \layout {
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      }
    }
  }
  \paper{
    #(set-paper-size "a5landscape")
    indent=0\mm
    line-width=190\mm
    oddFooterMarkup=##f
    oddHeaderMarkup=##f
    bookTitleMarkup = ##f
    scoreTitleMarkup = ##f
  }
}
% sheetonly end
% midionly start
global= {
  \tempo 4=\voicetrainerTempo \time 4/4
}

exercise = {
  \transpose c \voicetrainerKey \relative c' {
    \key c \minor
    < c es g >1\sustainOn |
    c4( d es f g a b c
    bes as g f es d c2)
    \bar "|."
  }
}

\book {
  \score {
    \unfoldRepeats \articulate <<
      \new Staff = "voice" <<
        \set Staff.midiInstrument = "acoustic grand"
        \global
        \exercise
      >>
    >>
    \midi {
    }
  }
}
% midionly end
