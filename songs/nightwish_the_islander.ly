\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.49"
% voicetrainer: measures = 61
% voicetrainer: pages = 2
\header {
  title = "The islander"
  composer = "Nightwish"
  arranger = "arranged by: Tamara van Haarlem"
}

voicetrainerTempo = 100
voicetrainerKey = d

global= {
  \tempo 4=\voicetrainerTempo \time 6/8 \key d \major
}

voiceStaff= \transpose d \voicetrainerKey \relative c'' {
  \override NoteHead #'color = #color-notehead
  \global
  \repeat unfold 17 r2. |
  r4. r4 r16 b |
  b8 b b16 b b8 fis4 |
  b8 b16 b8 b16 b8. r |

  b8 a16 a8 a16 a8 fis e |
  e fis16 e8 d16 b4 r8 |

  b' b b b fis4 |
  b8 b16 b8 b16 b8. r |

  b8 a16 a8 a16 a8 fis e16 e |
  \time 3/8
  e8 fis16 e8 d16 |
  \time 6/8
  b4 r2 |
  r2. |

  b'8 b b16 b b8 fis8. b16 |
  b8 b16 b8 b16 b8. r |

  b8 a16 a8 a16 a8 fis e |
  e fis16 e8 d16 b4 r8 |

  b'8 b b b( fis) fis16 fis |
  b8 b16 b8. b r8 b16 |
  b8( a16) a8 a16~ a8 fis e |
  \time 3/8
  e fis16 e8 d16 |
  \barNumberCheck #37
  \time 6/8
  b4 r2 |
}

cello= \transpose d \voicetrainerKey \relative c, {
  \global
  \clef bass
}

upperStaff= \transpose d \voicetrainerKey \relative c''' {
  \global
  \repeat unfold 2 {
    b8 cis d cis b a |
    b fis4~ fis d8 |
  }
  \alternative {
    {
      e b d d cis a |
      g2. |
    }
    {
      e'8 d b' d cis a |
      g2. |
    }
  }
  \barNumberCheck #9
  \repeat unfold 2 {
    b,8 cis d cis b a |
    b fis4~ fis d8 |
    e d b' d cis a |
    g4. fis |
  }
  \barNumberCheck #17
  \repeat unfold 4 { b,8 d fis b fis d | }
  b'8 a4 a8 fis4 |
  e4 d8 b4. |
  \repeat unfold 2 { b8 d fis b fis d | }
  b'8 a4 a8 fis4 |
  \time 3/8
  e4 d8 |
  \time 6/8
  b4 r2 |
  r2. |
  < fis' b >4. < fis b > |
  < g b > < g b > |
  b a |
  e4 d8 b4. |
  < fis' b >4. < fis b > |
  < g b > < g b > |
  b a |
  \time 3/8
  e4 d8 |
  \barNumberCheck #37
  \time 6/8
  b4. r |


}

lowerStaff= \transpose d \voicetrainerKey \relative c' {
  \global
  \repeat unfold 2 {
    b4. < fis' b > |
    b, < fis' b > |
    < a, e' > < g d' > |
    < g d' > fis |
  }
  \barNumberCheck #9
  \clef bass
  \repeat unfold 2 {
    \repeat unfold 4 { b,8 fis' b } |
    a, e' a
    \repeat unfold 2 { g, d' g }
    fis, cis' fis |
  }
  \barNumberCheck #17
  \repeat unfold 2 {
    \time 6/8
    \repeat unfold 6 { < b, fis' >4 < b fis' >8 } |
    \repeat unfold 2 { < d g >4 < d g >8 } |
    < a e' >4. < g d' > |
    < a e' >
    \repeat unfold 3 { < b fis' >4 < b fis' >8 } |
    \repeat unfold 2 { < d g >4 < d g >8 } |
  }
  \alternative {
    {
      < a e' >4. < g d' > |
      \time 3/8 < a e' > |
    }
    {
      < a e' >4 < a e' >8 < g d' >4 < g d' >8 |
      \time 3/8 < a e' >4 < a e' >8 |
    }
  }
  \time 6/8
  \barNumberCheck #37




}

pianoDynamics = {
  s1\p
}

pianoPedal = {
  s1\sustainOn
}

myChords= \chordmode {
  \transpose d \voicetrainerKey {
  }
}

% sheetonly start
\book {
  \score {
    <<
      \new ChordNames { \myChords }
      \new FretBoards { \myChords }
      % instrument start voice
      \new Staff = "voice" <<
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \voiceStaff
        \addlyrics {
          an old man by the sea -- shore at the end of day
          fa -- ces the ho -- ri -- zon with sea winds on his face
          tem -- pest tossed is -- land, sea -- sons all the same,
          an -- cho -- rage un -- pain -- ted and a ship wi -- thout a name

          sea wi -- thout a shore for the va -- nished one un -- heard
          he ligh -- tens the bea -- con, light at the end of world
          sho -- wing the way, ligh -- ting hope in their hearts
          the ones and their tra -- vels home -- wards from a -- far
        }
      >>
      % instrument end voice
      % instrument start cello
      \new Staff = "cello" <<
        \set Staff.instrumentName = \markup { "ViolonCello" }
        \set Staff.shortInstrumentName = \markup { "C." }
        \cello
      >>
      % instrument end cello
      % instrument start piano
      \new PianoStaff = "piano" <<
        \new Staff {
          \set Staff.midiInstrument = "acoustic grand"
          \removeWithTag midi \upperStaff
        }
        \new Dynamics \pianoDynamics
        \new Staff {
          \set Staff.midiInstrument = "acoustic grand"
          \removeWithTag midi \lowerStaff
        }
        \new Dynamics \pianoPedal
      >>
      % instrument end piano
    >>
    \layout {
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      }
      \context {
        \PianoStaff
        \accepts Dynamics
      }
    }
  }
}
% sheetonly end
% midionly start
\book {
  \score {
    \unfoldRepeats \articulate <<
      % instrument start voice
      \new Staff = "voice" <<
        \set Staff.midiInstrument = "cello"
        \voiceStaff
      >>
      % instrument end voice
      % instrument start cello
      \new Staff = "cello" <<
        \set Staff.midiInstrument = "cello"
        \cello
      >>
      % instrument end cello
      % instrument start piano
      \new PianoStaff = "piano" <<
        \new Staff = "piano:1" {
          \set Staff.midiInstrument = "acoustic grand"
          \new Voice <<
            \new Dynamics \pianoDynamics
            \upperStaff
            \new Dynamics \pianoPedal
          >>
        }
        \new Staff = "piano:2" {
          \set Staff.midiInstrument = "acoustic grand"
          \new Voice <<
            \new Dynamics \pianoDynamics
            \lowerStaff
            \new Dynamics \pianoPedal
          >>
        }
      >>
      % instrument end piano
      % instrument start metronome
      \new DrumStaff = "metronome" {
        \drummode {
          \global
          \repeat unfold 61 {
            hiwoodblock4 lowoodblock wbl wbl wbl wbl
          }
        }
      }
      % instrument end metronome
    >>
    \midi {
      \context {
        \type "Performer_group"
        \name Dynamics
        \consists "Dynamic_performer"
        \consists "Piano_pedal_performer"
      }
      \context {
        \Voice
        \accepts Dynamics
      }
    }
  }
}
% midionly end

