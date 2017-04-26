\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.49"
% voicetrainer: measures = 61
% voicetrainer: pages = 2
\header {
  title = "Over misty mountains cold"
  composer = "Tolkien"
  arranger = "arranged by: Tamara van Haarlem"
}

voicetrainerTempo = 80
voicetrainerKey = g

global= {
  \tempo 4=\voicetrainerTempo \time 4/4 \key g \minor
}

voiceStaff= \transpose g \voicetrainerKey \relative c' {
  \override NoteHead #'color = #color-notehead
  \global
}

cello= \transpose g \voicetrainerKey \relative c, {
  \global
  \clef bass
}

upperStaff= \transpose g \voicetrainerKey \relative c' {
  \global
  r2 d4 f |
  < bes, d g >2. bes'4 |
  < f a c > d'8 c bes4 a |
  < bes, d g >2. d4 |
  f g < c, f a >2~ |
  < c f a >4 bes' < es, g c > bes'8 a |
  < bes, d g >1~ |
  < bes d g >4 d f g |
  < bes, d g >4 < bes d g >2 bes'4 |
  < es, a c >8 bes' a4 es < bes d g >4~ |
  < bes d g >2 d4 f |

  \barNumberCheck #12

  g < c, f a > < c f a >2 |
  bes'4 < es, g c >8 bes' a4 g |
  < c, f a >1 |
  r4 a' bes a |
  < g bes d >1~ |
  < g bes d >4 a bes4. g8 |
  < d f a >1~ |
  < d f a >4 d f g |
  < c, f a >4 < c f a >2.~ |
  < c f a >2 bes'4. f8 |
  < bes, d g >1 |
  r2 < d d' >4 < f f' > |

  \barNumberCheck #24

  < g g' >2. < bes bes' >4 |
  < c c' > < d d' >8 < c c' > < bes bes' >4 < a a' > |
  < g g' >1~ |
  < g g' >4 < d d' > < f f' > < g g' > |

  \barNumberCheck #28

  < a a' >2. < bes bes' >4 |
  < c c' > < bes bes' >8 < a a' > < g g' >2~ |
  < g g' >2. < d d' >4 |
  < f f' > < g g' > < g g' > < g g' >~ |
  < g g' > < bes bes' > < c c' >8 < bes bes' > < a a' >4 |
  < f f' > < g g' >2.~ |
  < g g' >2 < d d' >4 < f f' > |
  < g g' > < a a' > < a a' >2 |

  \barNumberCheck #36

  < bes bes' >4 < c c' >8 < bes bes' > < a a' >4 < g g' > |
  < a a' >1~ |
  < a a' >4 < a a' > < bes bes' > < a a' > |
  < d d' >1~ |
  < d d' >4 < a a' > < bes bes' >4. < g g' >8 |
  < a a' >1~ |
  < a a' >4 < d, d' > < f f' > < g g' > |
  < a a' >4 < a a' >2.~ |
  < a a' >2 < bes bes' >4. < f f' >8 |
  < bes, d g >1 |
  r \bar "|."
}

lowerStaff= \transpose g \voicetrainerKey \relative c {
  \global
  \clef bass
  r1 |
  < g g' > |
  < f f' > |
  < g g' > |
  r2 < f f' >~ |
  < f f' >4 r < c c' >2 |
  < g' g' >1~ |
  < g g' >4 r2. |
  < g g' >4 < g g' >2. |
  < f f' >2. < g g' >4~ |
  < g g' >2 r |

  \barNumberCheck #12

  r4 < f f' > < f f' >2 |
  r4 < c c' >2. |
  \repeat unfold 2 { f4 c' a' c, | }
  \repeat unfold 2 { g d' bes' d, | }
  \repeat unfold 2 { d, a' f' a, | }
  \repeat unfold 2 { f c' a' c, | }
  g d' g d |
  g,2 r |

  \barNumberCheck #24

  \repeat unfold 2 { g8 d' bes' d, } |
  \repeat unfold 2 { f, c' a' c, } |
  \repeat unfold 4 { g d' bes' d, } |

  \barNumberCheck #28

  \repeat unfold 2 { f, c' a' c, } |
  c, g' es' g,
  \repeat unfold 6 { g d' bes' d, }
  f, c' a' c, |
  f, c' g d'
  \repeat unfold 3 { bes' d, g, d' } |
  bes' d, f, c' a' c, f, c' |

  \barNumberCheck #36

  a' c, c, g' es' g, c, g' |
  \repeat unfold 4 { f c' a' c, } |
  \repeat unfold 4 { g d' bes' d, } |
  \repeat unfold 4 { d, a' f' a, } |
  \repeat unfold 4 { f c' a' c, } |
  g4 d' g d |
  g,1 \bar "|."

}

pianoDynamics = {
  s1\mp
}

pianoPedal = {
  s1\sustainOn
}

myChords= \chordmode {
  \transpose g \voicetrainerKey {
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
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \set Staff.midiInstrument = "choir aahs"
        \voiceStaff
      >>
      % instrument end voice
      % instrument start cello
      \new Staff = "cello" <<
        \set Staff.instrumentName = \markup { "ViolonCello" }
        \set Staff.shortInstrumentName = \markup { "C." }
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
            hiwoodblock4 lowoodblock wbl wbl
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

