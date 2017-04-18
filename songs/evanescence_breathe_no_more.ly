\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.50"
% voicetrainer: measures = 90
% voicetrainer: pages = 4
\header {
  title = "Breath no more"
  composer = "Evanescence"
  arranger = "arranged by: Tamara van Haarlem"
}
% TODO: voice dynamics and breathing/phrasing
voicetrainerTempo = 56
voicetrainerKey = d

global= {
  \tempo 2=\voicetrainerTempo \time 4/4 \key d \major
}

upperHandRepeat = \relative c' {
  e8 d4 a'4. g8 fis~ |
  fis b,4 g' fis e8~ |
}

lowerHandRepeat = \relative c, {
  b'4 fis'2. |
  g,4 d' a e' |
}

voiceStaff= \transpose d \voicetrainerKey \relative c'' {
  \override NoteHead #'color = #color-notehead
  \global
  r1\mf r r r |
  % I've been looking in the mirror for so long
  r4. a4. g8 fis~ |
  fis d4 g4. fis8 e~ |
  e d4 cis4 d e8~ |
  e4 r2. |

  % That I've come to believe my soul's on the other side
  r2 a8 g4 fis8~ |
  fis d e g4 fis4 e8~ |
  e d4 b8 cis d4 d8 |
  cis4 r2. |

  % All the little pieces falling, shatter
  a'8( b4.~ b4) d8 cis~ |
  cis a4 b4 fis4 e8~ |
  e d2 r4 fis8 | e2 r2 |

  % Shards of me, too sharp to put back together
  b'2. d8 cis~ |
  cis4 r8 b4 fis d8 |
  e4. e d8 e |
  d2 r4 b |

  % Too small to matter
  cis2. d8 cis |
  b2 r4. b8 |

  % But big enough to cut me into so many little pieces
  fis'8 a4 a fis4 b8~ |
  b8 a4 g4. e8 d |
  d8 e4 e fis e8~ |
  e d4 r8


  % If I try to touch her and I bleed
  fis8 a4 a8~ |
  a2.\cresc fis8 b~ |
  b a4 r8 fis8 a4. |
  a2~\f a8( g fis e~ |
  e2) r4

  % I bleed
  a4 |
  a2~ a8( g fis e~ |
  e4.\decresc) r8

  % And I breathe
  e4 d4 |
  fis2~\mf fis8( g fis e~ |
  e2~ e8) r8

  % I breathe
  d4 |
  fis2~ fis8( g fis e~ |
  e4) r4

  % No more
  d8( cis4) b8~ |
  b2 r2 |
  r1 r1 r1 |

  % after the repeat

  % Take a breath and I try to draw from my spirit's well
  r2 a'8 g4 fis8~ |
  fis d e g4 fis e8~ |
  e d4 b8 cis d4 e8~ |
  e4 r2. |

  % Yet again you refust to drink like a stubborn child
  r2 a8 g4 fis8~ |
  fis d e g4 fis e8~ |
  e d4 b8 cis d4 d8( |
  cis4. fis4 e) r8 |

  % Lie to me, convince me that I've been sick forever
  b'2. d8 cis~ |
  cis r8 a b4 fis d8 |
  e4 e8 e4. fis8 e |
  d2 r4. 

  % And all of this will make sense when I get better
  a'8 |
  a( b2~ b8) d cis~ |
  cis4. b4 fis e8~ |
  e4 fis8 e4 fis4 e8 |
  d2 r4.

  % But I know the difference
  b8 |
  cis4. cis d8 cis |
  b2 r4.

  % Between myself and my reflection
  % I just can't help but wonder
   b8 |
   fis'8 a4 a fis b8~ |
   b8 a4 g fis8 e d |
   d e4 e fis e8~ |
   e8 d4. r2 |

  % Which of us do you love
  fis8 a4 a2 d8~ |
  d cis4 a fis8 a4 |

  % and I bleed
  a2~ a8( g fis e~ |
  e2) r4

  % I bleed
  a4 |
  a2~ a8( g fis e~ |
  e4.) r8

  % And I breathe
  e4 d |
  fis2~ fis8( g fis e~ |
  e2~ e8) r8

  % I breathe no
  d4 |
  fis2~ fis8( g fis e~ |
  e4. ) r8 d8( cis4) r8 |

  % bleed
  a'4.( d4 cis a8~ |
  a2 ) r8

  % I bleed
  fis8 a4~ |
  a2~ a8( g fis e |
  fis e4) r8

  % and I breathe
  d4 e |
  fis2~ fis8( g fis e~ |
  e2) r4

  % I breathe
  d4 |
  e2~ e8( g fis e~ |
  e2) r4

  % I breathe
  d4 |
  d2~ d8( cis d e~ |
  e2) r4

  % I breathe
  b4 |
  b2( cis8 d b cis~ |
  cis2)

  % No more
  d8( cis4.) |
  b1 | r1 | r1 | r1 | r1 | r1\fermata \bar "|."

}

upperStaff= \transpose d \voicetrainerKey \relative c' {
  \global
  r8 d4 a'4. g8 fis~ |
  fis b,4 g' fis e8~ |
  \upperHandRepeat
  \repeat unfold 2 {
    % I've been looking in the mirror for so long
    e8 d4 < b d a'>4. g'8 < b, d fis >8~ |
    < b d fis> < b d >4 < a g' > < a fis' > < b e >8~ |
    < b e > < b d>4 < cis a'> d8 g < b, e fis>~ |
    < b e fis> b4 g' fis e8~ |
    e

    % That I've come to believe my soul's on the other side
    d4 a'8 < b, d a'>8 < b d g>4 < b d fis>8~ |
    < b d fis> < b d > e < a, g'>4 < a fis'> < b e>8~ |
    < b e> < b d>4 < d a'>8 < cis a'> d g < d fis>~ |
    < cis fis >8 b4 g' fis e8 |

    % All the little pieces falling, shatter
    < a, d> b fis d'4. d8 cis~ |
    cis < g a> d < a' b>4 a8 e < b' cis>~ |
    < b cis> d fis, < d' e a>2 fis,8 |
    e g d < a' b>4 a8 e < b' cis> |

    % Shards of me, too sharp to put back together, too small to matter
    < a d> b fis < d' e a>4. d8 cis |
    cis g d < a' b >4  a8 e < b' cis> |
    d b fis < d' e a>4. d8 e |
    cis g d < a' b>4 a8 e cis' |
    <<
      { \voiceOne cis2. d8 cis }
      \new Voice {
        \voiceTwo < fis, a>4-\tag midi \sustainOn-\tag midi \mf fis a2
      }
    >> \oneVoice
    < g b>4 b8 < b d>4 cis d8 |

    % But big enough to cut me into so many little pieces
    % If I try to touch her and I
    < b d fis>4 a'8 a < fis d'> b fis < cis e b'>~ |
    < cis e b'> < cis e a>4 < cis g'>8~ < d g>4 e8 d |

    % bleed
    % I bleed
    % and I breathe
    % I breathe
    <<
      {
        \voiceOne
	d8 e4 e fis e8 |
	e d4 cis8 fis < d a'>4. |
        a'1 |
	< e a>2 fis8 a4. |
        \voiceTwo
	d,8 e d e4 g8 fis e |
        \voiceOne
	d4 d e a |
        \voiceTwo
	d,8 e d e4 g8 fis e |
        \voiceOne
	d4 d < cis e > d |
        \voiceTwo
	< b d >8 b d b d b d b |
        \voiceOne
	d4 d cis8 d e d |
        \voiceTwo
	< b d >8 b d b d b d b |
      }
      \new Voice {
        \voiceTwo
        ais1-\tag midi \sustainOn-\tag midi \mf |
        b |
	cis8-\tag midi \< e a, cis4. cis8 a |
        cis1 |
        \voiceOne
	< b a'~>2-\tag midi \f a'8 g fis e~ |
        \voiceTwo
        < a, e'>2 < a cis> |
        \voiceOne
	< b a'~> a'8 g fis e~ |
        \voiceTwo
        < a, e'>2-\tag midi \> a |
        \voiceOne
	fis'-\tag midi \mf a |
        \voiceTwo
	< a, e'> a |
        \voiceOne
	fis' a |
      }
    >> \oneVoice
  }
  % split in repeat endings
  \alternative {
    { % first ending
      % No more
      \barNumberCheck #36
      <<
	{
          \voiceOne
	  d,4 d < a cis>2 |
	}
        \new Voice {
          \voiceTwo
	  < a e'>2-\tag midi \sustainOn-\tag midi \mf  < a cis> |
	}
      >> \oneVoice
      r8 d4 a'4. g8 fis~ |
      fis b,4 g' fis e8~ |
      \upperHandRepeat
    }
    { % second ending
      \barNumberCheck #72
      <<
	{
          \voiceOne
	  d4 d cis d |
	}
        \new Voice {
          \voiceTwo
	  < a e'>2-\tag midi \sustainOn-\tag midi \< a-\tag midi \f |
	}
      >> \oneVoice
    }
  }
  % bleed
  < b d a'>4. < d a' d>4 cis'8 d, e |
  \barNumberCheck #74
  < cis a'>4. < d a'> 
  <<
    { \voiceTwo cis4 }
    \new Voice { \voiceOne fis8-\tag midi \sustainOn-\tag midi \f a }
  >> \oneVoice |
  < b, d a'>4. < b d a'>
  <<
    { \voiceOne d8 cis }
    \new Voice { \voiceTwo b4-\tag midi \sustainOn-\tag midi \f }
  >> \oneVoice |
  <<
    { \voiceOne < cis e>2 e4 d }
    \new Voice {
      \voiceTwo
      a4-\tag midi \sustainOn-\tag midi \> a2.-\tag midi \mf
    }
  >> \oneVoice |
  < b d fis>4. < fis'' d'>4 < e cis'> < cis a'>8~ |
  < cis a'> e,, a cis16 d cis8 a d4 |
  < b d fis>4. < fis'' d'> < e cis'>8 < a e'>~ |
  < a e'> < e cis'>4 < cis a'>8~ < cis a'>2 |

  % last 2 lines
  cis,8 b fis d' b fis d' b |
  cis e, a cis4. a8 b |
  b fis b fis cis' d4 cis8~ |
  cis8 e, a4 d8 cis4. |
  b1 |

  % last line
  r8 d4 a'4. g8 fis~ |
  fis b,4 g' fis e8~ |
  e d4 a'4. g8 fis~ |
  fis b,4 cis a fis8~ |
  fis1\fermata \bar "|."

}

lowerStaff= \transpose d \voicetrainerKey \relative c, {
  \global
  \clef bass
  b'4 fis'2. |
  g,4 d' a e' |
  \lowerHandRepeat
  \repeat unfold 2 {
    \repeat unfold 4 { \lowerHandRepeat}
    \repeat unfold 4 { b'1 | g2 a | }
    fis1 |
    g |
    b |
    a2~ a8 b a4 |
    fis1 |
    g |
    a2. a4 |
    a1 |
    g |
    a4 a2. |
    g1 |
    a4 a4. b8 a4 |
    b1 |
    a4 a2. |
    b1 |
  }
  \alternative {
    % different ending for repeat
    { % first ending
      a4 a a2 |
      \repeat unfold 2 { \lowerHandRepeat }
    }
    { % second ending
      a4. e' a,4 |
      g4. d' g,4 |
      a4 a8 e'4. a,4 |
      g4. d' g,4 |
      a4 a8 e'4. a,4 |
      b1 |
      a4 a2. |
      b1 |
      a4 a2. |
      b1 |
      a |
      b |
      a |
      r1 |
      b,4 fis'2. |
      g,4 d' a e' |
      \lowerHandRepeat
      b1\fermata \bar "|."

    }
}
}

pianoDynamics = {
  s1\mf |
  \repeat unfold 25 { s1 }
  \barNumberCheck #27
  s1\< |
  s1 |
  s1\f |
  s1 | s1 |
  \barNumberCheck #32
  s1\> |
  s1\mf |
  \repeat unfold 29 { s1 }
  \barNumberCheck #63
  s1\< |
  s1 |
  s1\f |
  s1 | s1 |
  s1\> |
  s1\mf |
  s1 | s1 |
  s1\< |
  s1\f |
  s1 | s1 |
  \barNumberCheck #76
  s1\> |
  s1\mf |
  s1 | s1 |
  s1\> |
  s1\mp |
  s1 | s1 |
  s1\> |
  s1\p |
  \barNumberCheck #86
  s1\mf |


}

pianoPedal = {
  \set Staff.pedalSustainStyle = #'bracket
  s1\sustainOn
  \repeat unfold 89 { s1\sustainOff\sustainOn }
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
          I've been loo -- king in the mir -- ror for so long
          That I've come to be -- lieve my soul's on the o -- ther si -- de
          All the lit -- tle pie -- ces fal -- ling
          Shat -- ter

          Shards of me
          too sharp to put back to -- ge -- ther
          too small to mat -- ter

          But big e -- nough
          to cut me in -- to
          so ma -- ny lit -- tle pie -- ces

          If I try to touch her
          and I bleed

          I bleed

          and I breathe

          I breathe

          no more

          Take a breath and I try to draw from my spi -- rit's well
          Yet a -- gain you re -- fuse to drink like a stub -- born child

          Lie to me, con -- vince me that I've been sick for -- e -- ver
          and all of this will make sense when I get bet -- ter
          but I know the dif -- ference be -- teween my -- self
          and my re -- flec -- tion
          I just can't help but to won -- der
          which of us do you love?

          So I bleed

          I bleed

          and I breathe

          I breathe

          No

          Bleed

          I bleed

          And I breathe

          I breathe

          I breathe

          I breathe

          No more...
        }
      >>
      % instrument end voice
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
