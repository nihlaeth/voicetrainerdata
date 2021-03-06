\include "color-pitch.ly"
\include "articulate.ly"
\version "2.19.50"

\header {
}

voicetrainerTempo = 140
voicetrainerKey = c
voicetrainerSound = "Mi"

% sheetonly start
global= {
  \time 4/4
}

exercise = {
  \override NoteHead #'color = #color-notehead
  \transpose c \voicetrainerKey \relative c' {
    \key c \major
    < c e g >2\sustainOn
    \repeat unfold 2 {
      \breathe c4->( d e f
      g2)
    }
    \breathe c,4->( d e f
    g f e d
    c2 \sustainOff ) \bar "||" \break
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
          \skip 1 \voicetrainerSound \voicetrainerSound \voicetrainerSound

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
      \line { ~ accent on first note, steady volume for the rest }
      \line { ~ no wobbling, good breath support all-over }
      \line { ~ don't hesitate for highest note, be confident }
      \line { ~ higher voice regions: think blowhole, tension in stomach }
      \line { ~ lower voice regions: sigh, sound between teeth, tension in bottom }
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
    < c e g >2\sustainOn
    \repeat unfold 2 {
      c4->( d e f
      g2)
    }
    c,4->( d e f
    g f e d
    c2 \sustainOff ) \bar "||" \break
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
