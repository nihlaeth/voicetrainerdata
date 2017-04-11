\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.50"
% voicetrainer: measures = 64
% voicetrainer: pages = 5

% TODO: add dynamics

\header {
  title = "Mad world"
  composer = "Gary Jules"
  arranger = "arranged by: Tamara van Haarlem"
}

voicetrainerTempo = 84
voicetrainerKey = f

global= {
  \tempo 4=\voicetrainerTempo \time 4/4 \key es \major
}

mainOne= \relative c' {
  r4 f8 f as as f f |
  c'^"control"  c4 c as4. |
  bes8 bes4 bes g4. |
  bes8 bes4 bes8~ bes as( g f) |
}

mainTwo= \relative c' {
  r4. f8 as as f f |
  c'^"control"  c4 c as4. |
  bes8 bes4 bes g4. |
  bes8 bes4 bes8~ bes as( g f) |
}

voiceStaff= \transpose f \voicetrainerKey \relative c' {
  \override NoteHead #'color = #color-notehead
  \global
  \repeat unfold 4 { r1 | }
  \repeat unfold 2 {
    \repeat unfold 4 { \mainOne }

    % Refrain
    r4 f8 f as as c c |
    d bes r8 bes d d bes bes |
    \repeat unfold 3 {
      f4 r8 f as as c c |
      d bes bes bes d d bes bes |
    }
    \repeat unfold 2 {
      r2 as4. f8~ |
      f2 r |
    }
  }

  r4. c8 as'4 as8 as~ |
  as f4. r2 |
  r2 as4. f8~ |
  f1 \bar "|."
}

cello= \transpose f \voicetrainerKey \relative c, {
  \global
  \clef bass
  \repeat unfold 32 { r1 | }

  \repeat unfold 3 {
    f2. g4 |
    as2 < c es> |
    < es g >1 |
    < d bes'> |
  }
  f,2. g4 |
  as2 < bes d>4 < c es > |
  < es g>2 g |
  f8 r2.. |

  % Refrain
  \repeat unfold 3 {
    f,1 |
    bes |
  }
  f |
  r |
  f'2.. d8~ |
  d1 |
  c2.. f,8 |
  bes1 |

  f' |
  d |
  c2 f, |
  bes1 \bar "|."
}

upperStaff= \transpose f \voicetrainerKey \relative c'' {
  \global
  as8 c g as f g es d |
  r2.. as'8~ |
  as c g as f g as bes~ |
  bes1 |
  \repeat unfold 2 {
    \repeat unfold 16 { r1 | }

    % Refrain
    < f as>4 as c as |
    < bes d > < bes d > r8 f < bes d > f |
    \repeat unfold 2 {
      f4 < as c>8 f r f < as c > f |
      < bes d >4 < bes d> r8 f < bes d >4 |
    }
    f8 f < as c> f r f < as c > f |
    f1 |
    as8 < as bes> g < g as> f < f g > es < d f>~ |
    < d f>2. r8 as'~ |
    as < as c> g < g as> f < f g> < es as > < d f bes>~ |
    < d f bes>1 |
  }

  as'8 < as c> g < g as > f < f g> es < d f>~ |
  < d f >2. r8 as'~ |
  as < as c> g < g as> f < f g> < es as> < d f bes>~ |
  < d f bes>1 \bar "|."
}

lowerfas= \relative c {
  \repeat unfold 2 { f4 < as c> } |
}

lowerbesd= \relative c' {
  \repeat unfold 2 { bes4 < d f> } |
}

lowerasc= \relative c' {
  \repeat unfold 2 { as4 < c es> } |
}

loweresg= \relative c {
  \repeat unfold 2 { es4 < g bes> } |
}

lowerStaff= \transpose f \voicetrainerKey \relative c {
  \global
  \clef bass
  f4 < as c> f < as c> |
  \lowerbesd \lowerfas \lowerbesd
  \repeat unfold 2 {
    \repeat unfold 3 {
      \lowerfas
      \lowerasc
      \loweresg
      \lowerbesd
    }
    \lowerfas
    \lowerasc
    \loweresg
    bes1 |

    % Refrain
    \repeat unfold 3 { \lowerfas \lowerbesd }
    \lowerfas
    < d f >1 |
    \repeat unfold 2 { \lowerfas \lowerbesd }
  }

  \lowerfas
  \lowerbesd
  \lowerfas
  < bes, bes'>1 \bar "|."
}

pianoDynamics = {
}

pianoPedal = {
  s1\sustainOn
}

myChords= \chordmode {
  \transpose f \voicetrainerKey {
    f:m bes f:m bes 
    \repeat unfold 2 {
      f:m as es bes
      f:m as es bes
      f:m as es bes
      f:m as es bes

      f:m bes f:m bes
      f:m bes f:m bes
      f:m bes f:m bes
    }
    f:m bes f:m bes
  }
}

% sheetonly start
\book {
  \score {
    <<
      \new ChordNames { \myChords }
      \new FretBoards { \myChords }
      \new Staff = "voice" <<
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \voiceStaff
        \addlyrics {
          All a -- round me are fa -- mi -- liar fa -- ces 
          Worn out pla -- ces, worn out fa -- ces 
          Bright and ear -- ly for their dai -- ly ra -- ces 
          Go -- ing no -- where, go -- ing no -- where 

          \skip 1 Their tears are fil -- ling up their glas -- ses 
          No ex -- pres -- sion, no ex -- pres -- sion 
          Hide my head, I wan -- na drown my sor -- row 
          No to -- mor -- row, no to -- mor -- row 

          And I find it kin -- da fun -- ny
          I find it kin -- da sad
          The dreams in which I'm dy -- ing
          Are the best I've e -- ver had
          I find it hard to tell you \skip 1
          I find it hard to take
          When peo -- ple run in cir -- cles
          It's a ve -- ry, ve -- ry mad world, mad world

          Chil -- dren wai -- ting for the day they feel good
          Hap -- py Birth -- day, Hap -- py Birth -- day
          And I feel the way that e -- very child should
          Sit and li -- sten, sit and li -- sten

          Went to school and I was ve -- ry ner -- vous
          No one knew me, no one knew me
          Hel -- lo tea -- cher tell me what's my les -- son
          Look right through me, look right through me

          And I find it kin -- da fun -- ny
          I find it kin -- da sad
          The dreams in which I'm dy -- ing
          Are the best I've e -- ver had
          I find it hard to tell you \skip 1
          I find it hard to take
          When peo -- ple run in cir -- cles
          It's a ve -- ry, ve -- ry mad world, mad world

          Ha -- lar -- gi -- an world
          Mad world 
        }
      >>
      \new Staff = "cello" <<
        \set Staff.instrumentName = \markup { "ViolonCello" }
        \set Staff.shortInstrumentName = \markup { "C." }
        \cello
      >>
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
        \new Staff {
          \set Staff.midiInstrument = "acoustic grand"
          \new Voice <<
            \new Dynamics \pianoDynamics
            \upperStaff
            \new Dynamics \pianoPedal
          >>
        }
        \new Staff {
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
      \new DrumStaff {
        \drummode {
          \global
          \repeat unfold 64 {
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
