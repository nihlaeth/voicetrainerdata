\include "color-pitch.ly"
\include "articulate.ly"
\version "2.19.50"

\header {
}

voicetrainerTempo = 140
voicetrainerKey = c
% voicetrainerSound = "Mi"

% sheetonly start
global= {
  \time 4/4
}
% sheetonly end
% midionly start
global= {
  \tempo 4=\voicetrainerTempo \time 4/4
}
% midionly end

exercise = {
  \override NoteHead #'color = #color-notehead
  \transpose c \voicetrainerKey \relative c' {
    \key c \major
    c1\sustainOn |
    c4\(( d e f g )
    c,4( d e f g )
    c,4( d e f g )
    c,4( d e f g )
    c,4( d e f g )\)
    \bar "|."
  }
}

% sheetonly start
\book {
  \score {
    <<
      \new ChordNames { \chordmode { \transpose c \voicetrainerKey { c }}}
      \new Staff = "voice" <<
        \global
        \exercise
        \addlyrics {
          \skip 1 Mi Na Nu Noe No
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


