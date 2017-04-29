\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.49"
% voicetrainer: measures = 61
% voicetrainer: pages = 1
\header {
  title = "Alligator in the house"
  composer = "S.J. Tucker"
  arranger = "arranged by: Tamara van Haarlem"
}

voicetrainerTempo = 112
voicetrainerKey = des

global= {
  \tempo 4=\voicetrainerTempo \time 4/4 \key a \minor
}

voiceStaff= \transpose a \voicetrainerKey \relative c'' {
  \override NoteHead #'color = #color-notehead
  \global
  \repeat unfold 3 r1 |
  r2. a8 b |
  c4. a8 c8. \tuplet 6/5 { d8 c b } |
  \barNumberCheck #6
  g4 r4. g8 g a |
  b4. d,8 d'8. \tuplet 6/5 { c8 b c } |
  a4 r4. a8 a b |
  c4. a8 c8. \tuplet 6/5 { d8 c b } |
  g4 r2 g8 a |
  b4. d,8 d'8. \tuplet 6/5 { e4 f8 } |
  e4 r2 a,8 b |
  c4. a8 c8. \tuplet 6/5 { d8 c b } |
  g4 r4. g8 g a |
  \barNumberCheck #15
  b4. d,8 d'8. \tuplet 6/5 { c8 b c } |
  a4 r4. a8 a b |
  c4. a8 c8. \tuplet 6/5 { d8 c b } |
  g4 r4. g8 g a |
  b4. d,8 d'8. \tuplet 6/5 { e4 f8 } |
  e4 r2
  % end of first verse

}

celloAm= \relative c {
  a4. c8 e4 c |
}

celloG= \relative c {
  g4. b8 d4 b |
}

celloESeven= \relative c {
  e4. as8 d4 as |
}


cello= \transpose a \voicetrainerKey \relative c {
  \global
  \clef bass
  \repeat unfold 4 \celloAm
  \repeat unfold 4 {
    \celloAm
    \celloG
    \celloESeven
    \celloAm
  }
  % end of first verse
}

upperStaff= \transpose a \voicetrainerKey \relative c' {
  \global
}

lowerStaff= \transpose a \voicetrainerKey \relative c {
  \global
  \clef bass
}

pianoDynamics = {
}

pianoPedal = {
  s1\sustainOn
}

myChords= \chordmode {
  \transpose a \voicetrainerKey {
    a1:m
    \repeat unfold 3 \skip 1
    \repeat unfold 3 {
      \skip 1
      g
      e:7
      a1:m
    }
  }
}

% sheetonly start
\book {
  \score {
    <<
      \new ChordNames { \myChords }
      % \new FretBoards { \myChords }
      % instrument start voice
      \new Staff = "voice" <<
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \voiceStaff
        \addlyrics {
          There's an al -- li -- ga -- tor in the house
          A too -- thy grin ap -- pears be -- neath my chair
          A sca -- ly tail goes sli -- ding out of sight
          now it's gone, was it e -- ver there?
          some -- thing odd has moved in -- to the house
          rep -- ti -- lian tracks lead un -- der -- neath the bed
          and all the cats are tas -- ty, fat and scared
          though I doubt we've lost a -- ny yet

          so what's the big deal? does -- n't e -- very -- one
          have an al -- li -- ga -- tor some -- where, some -- how?
          and may -- be this one has al -- ways been here
          but I ne -- ver no -- ticed it till now

          there's an al -- li -- ga -- tor in the house
          just caught her nap -- ping in the li -- ving room
          she was do -- zing on the vel -- vet couch
          and the cats were slee -- ping there too
          there's an al -- li -- ga -- tor in the house
          no one seems to mind ex -- cept for me
          well, at least she does -- n't eat the cats
          I sus -- pect she'd ra -- ther eat me

          there's an al -- li -- ga -- tor in the pit
          she is dan -- cing wil -- dly with the snakes
          to \skip 8  win them o -- ver to her cause
          she will do what -- ever it takes
          they think I don't see their lit -- tle smiles
          as they plan rep -- ti -- lian over -- throw
          but I hear them tal -- king in my dreams
          they will not be sad to see me go!

          I've be -- gun to wor -- ry 'bout my toes
          the al -- li -- ga -- tor seems to think they're nice
          I've coun -- ted all of them a hun -- dred times
          but I ne -- ver got the same an -- swer twice

          there's an al -- li -- ga -- tor in my bed
          she is not a ma -- ster of dis -- guise
          just a pil -- low wai -- ting for my head
          soft and sweet and hun -- gri -- ly she lies

          there's an al -- li -- ga -- tor in the house
          to -- day she joined me for a spot of tea
          she helped her -- self to rasp -- ber -- ries and cream
          and she di -- dn't leave a -- ny for me

          well I thought that I had seen it all
          but this al -- li -- ga -- tor proved me wrong
          like a la -- dy as she drank tea
          she sang to me this lit -- tle song

          so what's the big deal? Does -- n't every -- one
          have an al -- li -- ga -- tor some -- where, some -- how?
          I know that you'd miss me if I were gone
          though you ne -- ver no -- ticed un -- til now

          so what's the big deal? does -- n't every -- one
          have an al -- li -- ga -- tor some -- where, some -- how?
          and may -- be this one has al -- ways been here
          but I ne -- ver no -- ticed it till now

          there's an al -- li -- ga -- tor in my head
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
        \set Staff.midiInstrument = "pizzicato strings"
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

