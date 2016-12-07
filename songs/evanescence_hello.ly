\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.50"
% voicetrainer: tempo = 72
% voicetrainer: measures = 90
% voicetrainer: pages = 6
% ${pitch_noheight}
\header {
  title = "Hello"
  composer = "Evanescence"
  arranger = "arranged by: Tamara van Haarlem"
}

global= {
  \tempo 4=${tempo} \time 4/4 \key b \minor
}

voiceStaff= \transpose b, ${pitch} \relative c' {
  \override NoteHead #'color = #color-notehead
  \global
  \clef "treble"
  \repeat unfold 4 r1

  %5
  \repeat unfold 2 {
    b2\mp\( cis\) |
    \breathe d\( cis |
    a2.\) r8 \breathe e16\( cis'~ |
    cis2.\) r4 |
  }

  \barNumberCheck #13
  \breathe b4.\mf\( cis8~ cis g'4 g8~ |
  g fis4\) \breathe e8\(~ e fis4 e8~ |
  e d4.~ d4\) r8 \breathe cis16\( d~ |
  d4\) r8 \breathe cis8\(~ cis d4 b8~ |
  b4\) r8 \breathe cis8\(~ cis d4 g,8~ |
  g b4 cis8~ cis4 d8 d~ |
  d cis~ cis2\) r8 \breathe b16\( cis~ |
  cis1\) |

  \barNumberCheck #21
  R1*4
  b2\mp\( cis\) |
  \breathe d\( cis |
  a2.\) r8 \breathe e16\( cis'~ |
  cis2.\) r4 |

  \breathe b2\( cis4.( e8) |
  d2\) \breathe cis\( |
  a2.\) r8 \breathe e16\( b'~ |
  b8 cis4.\) r2 |

  \barNumberCheck #33
  \breathe b4.\mf\( cis8~ cis g'4 g8~ |
  g fis4\) \breathe e8~\( e fis4 e8~ |
  e d4.~ d4\) r8 \breathe cis16\( d~ |
  d4\) r8 \breathe cis8~\( cis d4 b8~ |
  b4\) r8 \breathe cis8~\( cis d4 g,8~ |
  g b4\) \breathe cis8~\( cis d4 d8~ |
  d cis2.( fis8~ |
  fis)\) \breathe e4\( d( cis4.)\) |

  \barNumberCheck #41
  R1*8 |

  \barNumberCheck #49
  \breathe b4.\( cis8~ cis g'4\) \breathe g8~\( |
  g fis4 ais8~ ais b4 cis8~ |
  cis d~ d2\) r8 \breathe cis16\( e~( |
  e4 d8)\) \breathe d\(( cis) cis( b) b~ |
  b4.\) \breathe cis8~\( cis d4 g,8~ |
  g b4\) \breathe cis8~\( cis d( cis) cis~( |
  \tempo "rit." cis1 |
  cis4. b8~ b ais4. |
  \barNumberCheck #57
  \tempo "a tempo" b1)\) |
  R1*3 |
  r1\fermata \bar "|."



}

cello= \transpose b, ${pitch} \relative c, {
  \global
  \clef bass
  R1*40 |
  \barNumberCheck #41
  fis'1\p\< |
  g4.\mf\> fis8 fis4 d |
  cis1\mp |
  b4 a a'4.\mf\> e8\mp |
  fis1 |
  b4\f\< fis cis' d |
  e2\ff d |
  cis\> a |
  b,\mp r2 |
  R1*11 |
  r1\fermata \bar "|."
}

upperA= \relative c' {
  r16 fis,( d' fis, d'8 cis cis a a cis) |
}
upperB= \relative c' {
  r16 e,( a e cis' e, a e b'8.) e,16( a4) |
}
upperC= \relative c' {
  r8 fis,( cis'16 fis, a fis d'8 cis cis16 b a cis) |
}

upperStaff= \transpose b, ${pitch} \relative c' {
  \global
  r16 fis,( d' fis, d'8 cis16 fis, cis'8 a a cis) |
  \upperA
  \upperB
  \upperC

  %5
  \repeat unfold 2 {
    \upperA
    \upperA
    \upperB
    \upperC
  }

  \barNumberCheck #13
  b4 b cis d |
  cis ais b cis |
  d16 fis, b fis b cis d fis, cis' fis, b fis fis' b, fis b |
  d16 fis, b fis b cis d fis, cis' a fis a fis'8 fis,16 a |
  b4 b cis d |
  g, b cis d |
  cis2 b4 fis |
  < fis ais cis>2 fis''' |

  \barNumberCheck #21
  r16 fis,,,( d' fis, d'8 cis16 fis, cis'8 a a cis) |
  \upperA
  \upperB
  \upperC

  \upperA
  \upperA
  \upperB
  \upperC

  \repeat unfold 2 { r16 a''( d cis d cis a fis~ fis2) | }
  \upperB
  \upperC

  \barNumberCheck #33
  b,,4 b cis d |
  cis ais b cis |
  d16 fis, b fis b cis d fis, cis' fis, b fis fis' b, fis b |
  d16 fis, b fis b cis d fis, cis' a fis a fis'8 fis,16 a |
  b4 b cis d |
  g, b cis d |
  cis2 b4 fis |
  < fis ais cis>1 |
 
  \barNumberCheck #41
  r16 fis( d' fis, d'8 cis16 fis, cis'8 a a cis) |
  \upperA
  \upperB
  \upperC

  \upperA
  \upperA
  \upperB
  \upperC

  \barNumberCheck #49
  b4 b cis d |
  cis ais b cis |
  d16 fis, b fis b cis d fis, cis' fis, b fis fis' b, fis b |
  d16 fis, b fis b cis d fis, cis' a fis a fis'8 fis,16 a |
  b4 b cis d |
  g, b cis d |
  \tempo "rit." cis2 b4 fis |
  < fis ais cis>1 |
 
  \barNumberCheck #57
  \tempo "a tempo" r16 fis( d' fis, d'8 cis16 fis, cis'8 a a cis) |
  r16 fis,( d' fis, d'8 cis16 fis, cis' fis, a fis a fis cis' fis,) |
  r16 fis( d' fis, d'8 cis16 fis, cis' fis, a fis a fis cis' fis,) |
  r16 fis( d' fis, d'8 cis16 fis, cis'8 a a cis) |
  < fis, b >1\fermata \bar "|."
}


lowerStaff= \transpose b, ${pitch} \relative c {
  \global
  \clef bass
  \repeat unfold 3 {
    b1 |
    b |
    a |
    <<
      { \voiceTwo fis }
      \new Voice { \voiceOne r16-\tag midi \mp-\tag midi \sustainOn cis'8 cis16~ cis2. }
    >> \oneVoice |
  }

  \barNumberCheck #13
  <<
    {
      \voiceOne
      r16 d g d~ d d8 d16~ d8. d16~ d8. d16 |
      r16 cis fis cis~ cis cis8 cis16~ cis8. cis16~ cis8. cis16 |
    }
    \new Voice {
      \voiceTwo
      g1-\tag midi \mf-\tag midi \sustainOn  |
      fis |
    }
  >> \oneVoice
  b2 b |
  a a |
  <<
    {
      \voiceOne
      r16 d g d~ d4~ d8. d16~ d8 g,16 fis |
      r16 b e b e4 r2 |
      r4 fis8 cis~ cis2~ |
      cis1 |
    }
    \new Voice {
      \voiceTwo
      g2-\tag midi \mf-\tag midi \sustainOn ~ g8. r16 r4 |
      e2.. d16 e |
      fis1-\tag midi \>~ |
      fis-\tag midi \p |
    }
  >> \oneVoice
  
  \barNumberCheck #21
  \repeat unfold 2 {
    b1 |
    b |
    a |
    <<
      { \voiceTwo fis }
      \new Voice { \voiceOne r16-\tag midi \mf-\tag midi \sustainOn  cis'8 cis16~ cis2. }
    >> \oneVoice |
  }

  \repeat unfold 2 {
    <<
      { \voiceTwo b1 }
      \new Voice { \voiceOne r16-\tag midi \mf-\tag midi \sustainOn fis'( d' fis, d'8 cis cis a a cis) }
    >> \oneVoice |
  }
  a,1 |
  <<
    { \voiceTwo fis }
    \new Voice { \voiceOne r16-\tag midi \mf-\tag midi \sustainOn  cis'8 cis16~ cis2. }
  >> \oneVoice |

  \barNumberCheck #33
  <<
    {
      \voiceOne
      r16 d g d~ d d8 d16~ d8. d16~ d8. d16 |
      r16 cis fis cis~ cis cis8 cis16~ cis8. cis16~ cis8. cis16 |
    }
    \new Voice {
      \voiceTwo
      g1-\tag midi \mf-\tag midi \sustainOn  |
      fis |
    }
  >> \oneVoice
  b2 b |
  a a |
  <<
    {
      \voiceOne
      r16 d g d~ d4~ d8. d16~ d8 g,16 fis |
      r16 b e b e4 r2 |
      r4 fis8 cis~ cis2~ |
      cis1 |
    }
    \new Voice {
      \voiceTwo
      g2-\tag midi \mf-\tag midi \sustainOn ~ g8. r16 r4 |
      e2.. d16 e |
      fis1-\tag midi \>~ |
      fis-\tag midi \p |
    }
  >> \oneVoice
 
  \barNumberCheck #41
  \repeat unfold 2 {
    b1 |
    b |
    a |
    <<
      { \voiceTwo fis }
      \new Voice { \voiceOne r16-\tag midi \mp-\tag midi \sustainOn cis'8 cis16~ cis2. }
    >> \oneVoice |
  }

  \barNumberCheck #49
  <<
    {
      \voiceOne
      r16 d g d~ d d8 d16~ d8. d16~ d8. d16 |
      r16 cis fis cis~ cis cis8 cis16~ cis8. cis16~ cis8. cis16 |
    }
    \new Voice {
      \voiceTwo
      g1-\tag midi \mf-\tag midi \sustainOn  |
      fis |
    }
  >> \oneVoice
  b2 b |
  a a |
  <<
    {
      \voiceOne
      r16 d g d~ d4~ d8. d16~ d8 g,16 fis |
      r16 b e b e4 r2 |
      \tempo "rit." r4 fis8 cis~ cis2~ |
      cis1 |
    }
    \new Voice {
      \voiceTwo
      g2-\tag midi \mf-\tag midi \sustainOn ~ g8. r16 r4 |
      e2.. d16 e |
      \tempo "rit." fis1-\tag midi \>~ |
      fis-\tag midi \p |
    }
  >> \oneVoice
 
  \barNumberCheck #57
  \tempo "a tempo" b1|
  b |
  b |
  b |
  b\fermata \bar "|."
}

pianoDynamics = {
  s1\mp |
  s1*11 |
  s1\mf |
  s1*5 |
  s1\> |
  s1\p |

  \barNumberCheck #21
  s1\mp |
  s1*11 |

  \barNumberCheck #33
  s1\mf |
  s1*5 |
  s1\> |
  s1\p |
  \barNumberCheck #41
  s1\mp |
  s1*7 |
  \barNumberCheck #49
  s1\mf |
  s1*5 |
  s1\> |
  s1\p |

  \barNumberCheck #57
  s1\mp
}

pianoPedal = {
  s1\sustainOn
}

myChords= \chordmode {
}

${sheeton}
\book {
  \score {
    <<
      \new ChordNames { \myChords }
      \new FretBoards { \myChords }
      \new Staff = "voice" <<
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \set Staff.midiInstrument = "choir aahs"
        \voiceStaff
        \addlyrics {
          Play -- ground school -- bell rings, a -- gain
          Rain -- clouds come to play, a -- gain

          Has no -- one told you she's not breath -- ing?
          Hel -- lo, I'm your mind, giv -- ing you some -- one to talk to
          Hel -- lo

          If I smile and don't be -- lieve
          Soon I know I'll wake from this dream
          Don't try to fix me, I'm not bro -- ken
          Hel -- lo, I'm the lie, liv -- ing for you so you can hide
          Don't cry

          Sud -- den -- ly I know I'm not sleep -- ing
          Hel -- lo, I'm still here
          All that's left of yes -- ter -- day

        }
      >>
      \new Staff = "cello" <<
        \set Staff.instrumentName = \markup { "ViolonCello" }
        \set Staff.shortInstrumentName = \markup { "C." }
        \set Staff.midiInstrument = "cello"
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
        % \override VerticalAlignment #'forced-distance = #7
      }
    }
  }
}
${sheetoff}
${midion}
\book {
  \score {
    \unfoldRepeats \articulate <<
      \new Staff = "voice" <<
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \set Staff.midiInstrument = "choir aahs"
        \voiceStaff
      >>
      \new Staff = "cello" <<
        \set Staff.instrumentName = \markup { "ViolonCello" }
        \set Staff.shortInstrumentName = \markup { "C." }
        \set Staff.midiInstrument = "cello"
        \cello
      >>
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
${midioff}
