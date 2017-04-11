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

exercise = {
  \override NoteHead #'color = #color-notehead
  \transpose c \voicetrainerKey \relative c' {
    \key c \major
    c1\sustainOn |
    c4( d e d | c1 )
    \bar "|."
  }
}

\book {
  \score {
    <<
      \new ChordNames { \chordmode { \transpose c \voicetrainerKey { c }}}
      \new Staff = "voice" <<
        \global
        \exercise
        \addlyrics {
          \skip 1 M
        }
        \addlyrics {
          \skip 1 Ng
        }
        \addlyrics {
          \skip 1 Nu
        }
        \addlyrics {
          \skip 1 Oe
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
  \markup{
    \column{
      \line { ~ legato }
      \line { ~ klein houden }
      \line { ~ mouth closed }
      \line { ~ m -> aangezicht }
      \line { ~ ng -> nasaal }
      \line { ~ vocaal -> open }
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
    \key c \major
    c1\sustainOn |
    c4( d e d | c1 )
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

