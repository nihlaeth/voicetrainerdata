\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.50"
% voicetrainer: measures = 61
% voicetrainer: pages = 5
\header {
  title = "Think of me"
  composer = "Andrew Lloyd Webber"
  arranger = "arranged by: Tamara van Haarlem"
}

voicetrainerTempo = 100
voicetrainerKey = d

global= {
  \tempo 4=\voicetrainerTempo \time 4/4 \key d \major
}

voiceStaff= \transpose d \voicetrainerKey \relative c' {
  \override NoteHead #'color = #color-notehead
  \global
  %1 Think of me, think of me fondly, when we've said good-
  r1 |
  r |
  fis8^"contained"\mp g fis2. |
  e8 e e a4. e4 |
  d4. d8 d4 d'^"open vocal" |
  %6 bye. remember me once in a while please promise me you'll try
  a2. r8 g8 |
  fis g fis2. |
  e8 e e a4. e4 |
  d4. d8 d4 d' |
  a2. r4 |
  %11 when you find that once again you long to take your heart back and be free
  fis8 g fis4. g8 fis g |
  fis g fis4. ais8 cis e |
  e4^"silent H"^"upper lip over teeth" d b fis |
  e2
  %14 if you ever find a moment, spare a thought for me
  d4 e |
  fis8 g fis2 b4 |
  a2 fis |
  \time 12/8
  e4. fis g cis, |
  \time 4/4
  d1 \bar "||"
  \transpose es f \relative c' {
    %19
    \key es \major
    \repeat unfold 7 r1 |
    %26 we never said our love was ever green or as unchanging as the sea
    r2.. as'8 |
    g as g4. as8 g as |
    g as g4. b8 d f |
    f4 es c g |
    f2
    %30 but if you can still remember, stop and think of me
    es4 f |
    g8 as g2 c4 |
    bes2 g |
    \time 12/8
    f4. g as d, |
    \time 4/4
    es1 \bar "||"
    %35 think of all the things we've shared and seen, don't think about
    % the things which might have been
    es2 es' |
    d4 d c bes |
    des2 as |
    f r4 f |
    g8 as g2 c4 |
    bes2 g |
    f-"poco rit." c |
    d r \bar "||"
    %43
    g8 as g2. |
    f8 f f bes4. f4 |
    es4. es8 es4 es'4 |
    bes2. r8 as |
    g as g2. |
    f8 f f bes4. f4 |
    es4. es8 es4 es' |
    bes2. r8 as8 |
    g as g4. as8 g as |
    g as g4. b8 d f |
    f4 es c g |
    f2 es4 f |
    g8 as g2 c4 |
    bes2 g |
    f g |
    as d \bar "||"
    %59
    es1 |
    \repeat unfold 15 r1 |
  }
  \key es \major
  %75
  g8 as g4. as8 g as |
  g as g4. b8 d f |
  f4 es c g |
  f2 es4 f |
  g8 as g2 c4 |
  bes2 g |
  f g |
  as r4.
  %82
  f16( g |
  as8 f c' as g'4) r8 as,16( bes |
  c8 as es' c f4) r16 (g,16 as bes |
  c bes c d es c d es f8 bes,4) bes8( |
  bes'2.~ bes8\fermata) es, |
  es1\fermata |
  r1 \bar "|."

}

fthemea = \relative c'' {
  r8 a fis' d a' d, fis a, |
}

fthemeb = \relative c'' {
  r8 a e' cis a' cis, e a, |
}

fthemec = \relative c'' {
  r8 g d' b g' b, d g, |
}

fthemed = \relative c'' {
  r8 b g' d b' d, g b, |
}

fluteOne = \relative c'' {
  \global
  %1
  \repeat unfold 2 { r8\mp a fis' d a' d, fis a, | }
  \fthemea
  \fthemeb
  \fthemec
  \fthemeb
  %7
  \fthemea
  \fthemeb
  \fthemed
  \fthemeb
  %11
  r8 d fis b d2 |
  r8 ais, cis e ais2 |
  r8 fis, b d fis2 |
  r8 d gis e b' gis e b |
  r a fis' d a'2 |
  r8 d, a' fis d'2 |
  \time 12/8
  b8 g e a fis cis fis d b cis4. |
  \time 4/4
  a1\< |
  %19
  \key f \major
  r4 a\f c f |
  e4. e8 g4 e |
  d'8 bes d bes d bes f'4 |
  c8 g c g c g c g |
  %23
  f4. c8 f c f c |
  e4. c8 e c e c |
  d'8( bes d bes d bes f'4) |
  %26
  g,2( e) |
  a( f4 d |
  e2 a |
  g4 f2.) |
  g4( f d g, |
  c1~ |
  c) |
  \time 12/8
  bes4.( c d~ d8 c bes |
  \time 4/4
  a4 bes8\< c es2) \bar "||"
  %35
  r8\mp d,( f bes d4 bes) |
  r8 e,( g c e4 c) |
  r8 es,( g bes es4 bes |
  g1) |
  a~\p\< |
  a\mf |
  bes-"poco rit."\> |
  c |
  %43
  a'8-"a tempo"\p( bes a2. |
  g1 |
  f |
  g2~ g8) e( f g |
  a bes a2. |
  g1 |
  f |
  g) |
  a8\mp( bes a4. bes8 a bes |
  a bes a2.~ |
  a1 |
  g) |
  a,2.\p d4 |
  c1 |
  bes2\mp( c |
  d e\<) \bar "||"
  %59
  a8\f( bes a2.) |
}

fluteTwo = \relative c'' {
  \global
  %1
  d1\mp | d | d | d | d |
  %6
  d | d | d | d | d |
  %11
  b | b | b | e, | a |
  %16
  b |
  \time 12/8
  e4. fis g a, |
  \time 4/4
  fis1\< |
  %19
  \key f \major
  r2 c'8\f( f, c' f,) |
  r2 c'8( g c g) |
  r2 d'8( f, d' f,) |
  r8 g( c g') c g g c, |
  %23
  r4 c f c |
  e2 e8( f g4) |
  r2 d8( f, d' f,) |
  %26
  r4. c'8\>( g'4 c,) |
  f2\mp( d4 a |
  cis1 |
  d) |
  d2( f, |
  f' c~ |
  c4 a d c) |
  \time 12/8
  d,4.( e f e |
  \time 4/4
  f4 ) r\< g ( a ) \bar "||"
  %35
  f1\mp |
  g |
  g |
  f4( es2.) |
  g2\p( f\< |
  e\mf f) |
  d1-"poco rit."\> |
  g |
  %43
  f'1-"a tempo"\p ( |
  c |
  bes |
  c2~ c8) c( d e |
  f g f2. |
  c1 |
  bes |
  c) |
  r1 |
  r2 r8 cis\mp\<( e g |
  g4\mf f d a |
  b1\>) |
  f2.\p bes4 |
  a1 |
  g2\mp( a |
  g bes\<) \bar "||"
  %59
  f2~\f f8 f'4( c8) |
}

soloViolin = \relative c' {
  \global
  % 1
  r1 |
  r |
  \repeat unfold 2 {
  fis8\mf( g fis2.) |
  e8 e e a4.( e4) |
  d4. d8 d4 d'( |
  }
  \alternative {
  { a2.) r8 g | }
  { a2.) r4 | }
  }
  %11
  fis8 g fis4. g8 fis g |
  fis g fis4. ais8 cis e |
  e4 d b fis |
  e2 d4 e |
  fis8 g fis2 b4 |
  %16
  a2 fis |
  \time 12/8
  e4. fis g cis, |
  \time 4/4
  d1 |
  %19
  \key f \major
  \repeat unfold 7 r1 |
  %26
  r2.. bes'8 |
  a bes a4. bes8 a bes |
  a bes a4. cis8 e g |
  g4 f d a |
  g2 f4 g |
  a8 bes a2 d4 |
  c2 a |
  \time 12/8
  g4. a bes e, |
  \time 4/4
  f1 \bar "||"
  %35
  f2 f' |
  e4 e d c |
  es2 bes |
  g r4 g |
  a8 bes a2 d4\< |
  c2\f a |
  g-"poco rit."\> d |
  e r \bar "||"
  %43
  a8-"a tempo"\mf bes a2. |
  g8 g g c4. g4 |
  f4. f8 f4 f' |
  c2. r8 bes |
  a8 bes a2. |
  g8 g g c4. g4 |
  f4. f8 f4 f' |
  c2. r8 bes |
  a8 bes a4. bes8 a bes |
  a bes a4. cis8 e g |
  g4 f d a |
  g2 f4 g |
  a8 bes a2 d4 |
  c2 a |
  g\< a |
  bes e \bar "||"
  %59
  f1\fff |
}

violinOne = \relative c'' {
  \global
  \repeat unfold 16 r1 |
  %17
  \time 12/8
  g4.\mp( a) b( a) |
  \time 4/4
  a\< e8( fis a d e) |
  %19
  \key f \major
  \repeat unfold 2 {
    a\f( bes) a2. |
    g8 g g c4.( g4) |
    f4.( f8) f4 < f f'> |
  }
  \alternative {
    { c'1 | }
    { c4. g8\> c( g) c,( bes) | }
  }
  %27
  a8(\mp f a f) a( f a f) |
  a( g a g) a( cis,\< e g) |
  g4(\mf f\> d2) |
  g8\mp( f g d) f( d f d) |
  f( c f c) f( c f c) |
  f( c f c) f( c f a) |
  \time 12/8
  g( e g) e( c e) f( d f) e4. |
  f4\<( g8 a) bes4( c\mf) \bar "||"
  %35
  d2 f |
  e g |
  g es |
  bes1\> |
  r1\mp | r1 | r1-"poco rit." |
  r4\mp\> c,:32 g':32 c:32 |
  %43
  r8-"a tempo"\p c:16 a':16 f:16 c':16 f,:16 a:16 c,:16 |
  r8 c:16 g':16 e:16 c':16 e,:16 g:16 c,:16 |
  r f,:16 d':16 bes:16 f':16 bes,:16 d:16 f:16 |
  r c:16 g':16 e:16 c':16 e,:16 g:16 c,:16 |
  r f,:16 a:16 c:16 f:16 c:16 f:16 a:16 |
  r c,:16 g':16 e:16 c':16 e,:16 g:16 c,:16 |
  r f,:16 d':16 bes:16 f':16 d:16 bes:16 f:16 |
  r c\<( e g) c( d e g) |
  a4.:32\mf g:32 f4:32 |
  e4.:32 f:32 e4:32 |
  e:32 f2.:32 |
  g4( f d\> g,) |
  a2.\mp a4 |
  a f8( g a g f e) |
  d e d g a c,\< e a |
  bes d, f bes g8( g4.) \bar "||"
  %59
  f'8:16\ff c:16 c:16 f:16 f:16 c:16 c:16 f:16 |
}

violinTwo = \relative c' {
  \global
  \repeat unfold 16 r1 |
  %17
  \time 12/8
  e4.\mp( fis) g( e) |
  \time 4/4
  fis4.\< e8( fis a d e) |
  %19
  \key f \major
  \repeat unfold 2 {
    a,8\f( bes) a2. |
    g8 g g c4.( g4) |
    f4.( f8) f4 f' |
  }
  \alternative {
    { c1 |}
    { c4.\> g8 e( c) g4 |}
  }
  %27
  f'8\mp( d f d) f( d f d) |
  cis e cis e cis a cis e |
  a,2 c |
  d d8( g, d' g,) |
  a'( f a f) a( f a f) |
  a( f a f) a( f a c) |
  \time 12/8
  bes,( g bes) c( a c) d( bes d) d( c bes) |
  \time 4/4
  c2\< g'4( a\mf) \bar "||"
  %35
  bes2 d |
  c e |
  es bes |
  g1\> |
  r1\mp | r1 | r1-"poco rit." |
  r4\mp\> c,4:32 g':32 c:32 |
  %43
  c,1:32-"a tempo"\p |
  c:32 |
  d:32 |
  e2.:32 c4:32 |
  c1:32 |
  e:32 |
  d:32 |
  r8 c\<( e g) c( d e g) |
  f4.:32\mf e:32 d4:32 |
  cis1:32 |
  cis4:32 d2.:32 |
  g4( f d2) |
  f,2.\mp f4 |
  f4 d8( e f e d c) |
  bes bes d g a c,\< e a |
  bes d, f bes e,8( e4.) \bar "||"
  %59
  < f a>2:32\ff < f a>:32 |
}

viola = \relative c' {
  \global
  \clef alto
  \repeat unfold 16 r1 |
  %17
  \time 12/8
  a4.\mp( b) d( cis) |
  \time 4/4
  d\< e8( fis a d e) |
  %19
  \key f \major
  \repeat unfold 2 {
    a,\f( bes) a2. |
    g8 g g c4.( g4) |
    f4.( f8) f4 f' |
  }
  \alternative {
    { c1 |}
    { c4. c8\> g( e) e4 | }
  }
  %27
  a2.\mp a4 |
  a2. r4 |
  d,,8( a' c e) f( g a c) |
  b1 |
  a,8( f a f) a( f a f) |
  a( f a f) a( f a c) |
  \time 12/8
  bes( g bes) c( a c) d( bes d) bes( a g) |
  \time 4/4
  a4\<( bes8 c) es2\mf \bar "||"
  %35
  f2 bes |
  g c |
  bes g |
  f4( es2.\>) |
  r8\mp f,( a c) f4( c) |
  r4 f,8( a) d4( a) |
  r4-"poco rit." d, bes'( a8 bes) |
  g2\>( c,) \bar "||"
  %43
  f1:32-"a tempo"\p |
  f:32 |
  f:32 |
  f:32 |
  f:32 |
  e':32 |
  d:32 |
  e:32\< |
  a,8\mf( bes a4.) bes8( a bes) |
  a( bes a4.) cis8 e g |
  g4( f) d( a) |
  b1 |
  c2.\mp c4 |
  c4 f8( g a g f e) |
  d d, g bes c e,\< a c |
  d f, bes d bes bes4. \bar "||"
  %59
  c'2:32\ff c:32 |
}

cello= \transpose d \voicetrainerKey \relative c, {
  \global
  \clef bass
  \repeat unfold 16 r1 |
  %17
  \time 12/8
  e4.\mp fis g a |
  \time 4/4
  d4. a8\<( d e fis a) |
  %19
  \key f \major
  \repeat unfold 2 {
    a\f( bes) a2. |
    g8 g g c4.( g4) |
    f4.( f8) f4 f' |
  }
  \alternative {
    { c1 | }
    { c2.\> c,4 | }
  }
  %27
  d2.\mp d4 |
  d2. r4 |
  d,8( a' c e) f( g a c) |
  d,1 |
  c |
  d |
  \time 12/8
  g,4. a bes c |
  \time 4/4
  f,\< f f4 \bar "||"
  %35
  r8\mf d' (f bes) d4( bes) |
  r8 e,( g c) e4( c) |
  r8 es,( g bes) es4( bes) |
  f'( es\>) bes( g) |
  r8\mp f( a c) f4( c) |
  r4 f,8( a) d4( a) |
  r4-"poco rit." d, bes'( a8 bes) |
  g2\>( c,) \bar "||"
  %43
  r1-"a tempo"\p |
  r |
  r |
  r |
  r |
  r |
  r |
  g1:32\< |
  d'2.\mf d4 |
  d2~ d8 cis' e g |
  g4( e) d( a) |
  d,1 |
  c2 c |
  d4 d8( e f e d c) |
  d2 e\< |
  f c8 c4. \bar "||"
  %59
  f,2~\ff f8 f4( c8) |
}

contrabass = \relative c, {
  \global
  \clef "bass_8"
  \repeat unfold 16 r1 |
  %17
  \time 12/8
  r1. |
  \time 4/4
  d1\p\< |
  %19
  \key f \major
  f,2.\f f4 |
  f4. f8~ f2 |
  f2. f4 |
  f4. f8~ f2 |
  f2. f4 |
  f4. f8~ f2 |
  bes2. bes4 |
  %26
  c1\> |
  r\mp |
  r |
  d |
  g |
  c,4-"pizz." r2. |
  c4 r2. |
  \time 12/8
  r1. |
  \time 4/4
  r1 \bar "||"
  %35
  bes2.\mf bes'4 |
  bes2. bes,4 |
  bes2. bes'4 |
  bes2.\> es,4 |
  c2\mp r |
  d r |
  r1-"poco rit." |
  c-"arco" \bar "||"
  %43
  r1-"a tempo" |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  d4.-"pizz."\mp d'8~ d2 |
  d4. d8~ d2 |
  d,1-"arco" |
  g |
  c,2-"pizz." c |
  d1 |
  g2-"arco" a\< |
  bes c8 c4. \bar "||"
  %59
  f,,2~\ff f8 f'4( c8) |
}

upperStaff= \transpose d \voicetrainerKey \relative c' {
  \global
  %1
  \repeat unfold 2 { r8\mp a\sustainOn fis' d a' d, fis a, | }
  \repeat unfold 2 {
    <<
      { \voiceOne fis' g fis2 r4 }
      \new Voice { \voiceTwo < a, d>2~ < a d>8 d fis a, }
    >> \oneVoice |
    <<
      { \voiceTwo < a cis>4. }
      \new Voice { \voiceOne e'8 e e }
    >> \oneVoice < cis e a>4. < a cis e>4 |
    <<
      { \voiceTwo < g b>2 }
      \new Voice { \voiceOne d'4. d8 }
    >> \oneVoice < g, b d>4 < g' b d> |
  }
  \alternative {
    {
      %6
      <<
        { \voiceOne a2 r4. g8 }
        \new Voice { \voiceTwo < cis, e>4 e8 cis a' a, < cis e>4 }
      >> \oneVoice |
    }
    {
      %10
      <<
        { \voiceOne a'2 r2 }
        \new Voice { \voiceTwo < cis, e>4 cis8 e a e cis a }
      >> \oneVoice |
    }
  }
  %11
  <<
    { \voiceTwo < b d>2 < b d> }
    \new Voice { \voiceOne fis'8 g fis4. g8 fis g }
  >> \oneVoice |
  <<
    { \voiceTwo < ais, cis >2 cis4 < fis ais> }
    \new Voice { \voiceOne fis8 g fis4. ais8 cis e }
  >> \oneVoice |
  <<
    { \voiceTwo < fis, b>2 < d fis>4 < a d fis> }
    \new Voice { \voiceOne e''4 d b fis }
  >> \oneVoice |
  <<
    { \voiceOne e2 d4 e }
    \new Voice { \voiceTwo r4 < gis, b> < gis b> < gis b> }
  >> \oneVoice |
  <<
    { \voiceTwo d' }
    \new Voice { \voiceOne fis8 g }
  >> \oneVoice < d fis>2 < d fis b>4 |
  <<
    { \voiceOne a'2 }
    \new Voice { \voiceTwo < d, fis>4 b8 d }
  >> \oneVoice < a d fis>2 |
  \time 12/8
  <<
    { \voiceOne e'4. fis g cis, }
    \new Voice { \voiceTwo e8 g, b fis' a, cis g' b, d b a g }
  >> \oneVoice |
  \time 4/4
  < fis a d>4. e'8 fis a d fis |
  %19
  \key f \major
  \transpose es f \relative c''' {
    \repeat unfold 2 {
      <<
        { \voiceTwo < bes, es>4\f }
        \new Voice { \voiceOne g'8 as }
      >> \oneVoice < bes, es g>2. |
      <<
        { \voiceTwo < bes d>4. }
        \new Voice { \voiceOne f'8 f f }
      >> \oneVoice < d f bes>4. < bes d f>4 |
      < as c es>4. < as c es>8 < as c es>4 < es' as es'> |
    }
    \alternative {
      {
        <<
          { \voiceOne < d f bes>1 }
          \new Voice { \voiceTwo r4 bes,8 < d f> < d bes'> < d f> < d f> bes }
        >> \oneVoice |
      }
      {
        %26
        <<
          { \voiceOne bes''2 }
          \new Voice { \voiceTwo < d, f>4. f8 }
        >> \oneVoice bes\> f bes, as |
      }
    }
    %27
    <<
      { \voiceTwo< c, es>2\mf < c es> }
      \new Voice { \voiceOne g'8 as g4. as8 g as }
    >> \oneVoice |
    <<
      { \voiceTwo < b, d>2 d4 < g b> }
      \new Voice { \voiceOne g8 as g4. b8 d f }
    >> \oneVoice |
    < g, c f>4 < g bes es> < es g c> < es g> |
    < c f>2\f < a c es>4 < a c f> |
    <<
      { \voiceTwo es' }
      \new Voice { \voiceOne g8 as }
    >> \oneVoice < es g>2 < es g c>4 |
    <<
      { \voiceTwo < es g> c }
      \new Voice { \voiceOne bes'2 }
    >> \oneVoice < bes, es g> |
    \time 12/8
    <<
      { \voiceOne f'4. g as d, }
      \new Voice { \voiceTwo f8 as, c g' bes, d as' c, es c bes as }
    >> \oneVoice |
    \time 4/4
    <<
      { \voiceTwo < g bes>2 des' }
      \new Voice { \voiceOne es4 f8\< g < f as>4 < g bes>\! }
    >> \oneVoice \bar "||"
    %35
    < c, es>2\ff < as' c es> |
    < f bes d>4 < f bes d> < f c'> < d f bes> |
    < f as des>2 < f as> |
    <<
      { \voiceOne f2. f4 }
      \new Voice { \voiceTwo es4 des2. }
    >> \oneVoice |
    g8 as g2 c4 |
    < es, g bes>2 < bes es g> |
    < as c f>-"poco rit." < f c'> |
    <<
      { \voiceTwo < as d>1 }
      \new Voice { \voiceOne r4 bes f' bes }
    >> \oneVoice \bar "||"
    %43
    g'8\mp( as g2.) |
    f8 f f bes4. f4 |
    es4. es8 es4 es' |
    bes2. r8 as8 |
    g( as g2.) |
    f8 f f bes4. f4 |
    es4. es8 es4 es' |
    bes2. r8\< as,8 |
    <<
      { \voiceTwo < c, es>2\mf < c es> }
      \new Voice { \voiceOne g'8 as g4. as8 g as }
    >> \oneVoice |
    <<
      { \voiceTwo < b, d>2 d4 < g b> }
      \new Voice { \voiceOne g8 as g4. b8 d f }
    >> \oneVoice |
    < g, c f>4 < g c es> < es g c> < bes es g> |
    < a c f>2 < a c es>4 < a c f> |
    <<
      { \voiceTwo es'( }
      \new Voice { \voiceOne g8 as }
    >> \oneVoice < es g>2) < es g c>4 |
    <<
      { \voiceOne bes'2 g }
      \new Voice { \voiceTwo < es g>4 < c es>8(< d f> < es g> < d f> < c es>4) }
    >> \oneVoice |
    <<
      { \voiceOne f2 g | as d\< }
      \new Voice {
        \voiceTwo f,,8( as c f g, bes d g |
        as, c es as d, f as bes)
      }
    >> \oneVoice \bar "||"
    %59
    <<
      { \voiceTwo < bes es>4\f < bes es>2. }
      \new Voice { \voiceOne g'8 as g2. }
    >> \oneVoice |
  }
}

lowerStaff= \transpose d \voicetrainerKey \relative c, {
  \global
  \clef bass
  %1
  d1\mp\sustainOn |
  d |
  d2 d |
  d1 |
  d |
  %6
  d |
  d2 d |
  d1 |
  d |
  d |
  %11
  b | b | b |
  e2. e4 |
  a1 |
  b2. b4 |
  \time 12/8
  e,4. fis g a |
  \time 4/4
  d,1 |
  %19
  \key f \major
  <<
    { \voiceTwo < f\f f'>1 }
    \new Voice { \voiceOne r4 < c' f a>4 < f a c> < a c f> }
  >> \oneVoice |
  \transpose es f \relative c {
    <<
      { \voiceTwo < es, es'>1 }
      \new Voice { \voiceOne r4. < d' f bes>8 < f bes d>4 < d f bes> }
    >> \oneVoice |
    <<
      { \voiceTwo < es, es'>1 }
      \new Voice { \voiceOne r4 < c' es as>4 < as' c es> < as c es> }
    >> \oneVoice |
    < es, es'>1 |
    <<
      { \voiceTwo < es es'> }
      \new Voice { \voiceOne r4 < es' g bes>4 < g bes es> < es g bes> }
    >> \oneVoice |
    <<
      { \voiceTwo < es, es'>1 }
      \new Voice { \voiceOne r2 < bes'' d>8 < c es> < d f>4 }
    >> \oneVoice |
    <<
      { \voiceTwo < as, as'>1 }
      \new Voice { \voiceOne r4 < es' as c>4 < as c es> < es as c> }
    >> \oneVoice |
    %26
    < bes bes'>1 |
    c |
    c |
    <<
      { \voiceTwo c, }
      \new Voice { \voiceOne c8 g' c d es f g bes }
    >> \oneVoice |
    a4\f f,2. |
    bes1 |
    c2. g4 |
    \time 12/8
    f4. g as bes |
    \time 4/4
    es,2.\< es4\! \bar "||"
    %35
    <<
      { \voiceTwo as2.\ff as4 }
      \new Voice { \voiceOne r8 c es as c4 r }
    >> \oneVoice |
    <<
      { \voiceTwo as,2. as4 }
      \new Voice { \voiceOne r8 d f bes d4 r }
    >> \oneVoice |
    <<
      { \voiceTwo as,2. as4 }
      \new Voice { \voiceOne r8 des f as des4 r }
    >> \oneVoice |
    <<
      { \voiceTwo as,2. des4 }
      \new Voice { \voiceOne r2 as' }
    >> \oneVoice |
    <<
      { \voiceTwo bes,1 }
      \new Voice { \voiceOne r8 es g bes es2 }
    >> \oneVoice |
    <<
      { \voiceTwo c,1 }
      \new Voice { \voiceOne r4 es8 g c2 }
    >> \oneVoice |
    <<
      { \voiceTwo f,,1-"poco rit." }
      \new Voice { \voiceOne r4 c' as' g8 as }
    >> \oneVoice |
    < bes, f'>1 \bar "||"
    %43
    \clef treble
    r8\mp bes'( g' es bes' es, g bes,) |
    r bes( f' d bes' d, f bes,) |
    r as( es' c as' c, es as,) |
    r bes( f' d bes' d, f bes,) |
    r bes( g' es bes' es, g bes,) |
    r bes( g' d bes' d, g bes,) |
    r as( es' c as' c, es as,) |
    r bes( g' d bes'\< d, g4) |
    \clef bass
    c,,2.\mf c4 |
    c1 |
    c |
    f,4 f'2. |
    bes,1 |
    c |
    f,2 g |
    as bes\< \bar "||"
    %59
    <<
      { \voiceTwo < es, es'>1\f }
      \new Voice { \voiceOne r4 < es' g bes> < g bes es> < es g bes> }
    >> \oneVoice |
  }
}

pianoDynamics = {
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
      \new Staff = "voice" <<
        \set Staff.instrumentName = \markup { "Voice" }
        \set Staff.shortInstrumentName = \markup { "V." }
        \voiceStaff
        \addlyrics {
          Think of me
          Think of me fond -- ly
          When we've said good -- bye
          Re -- mem -- ber me
          once in a while please pro -- mise me you'll try
          When you find
          that once a -- gain you long
          to take your heart back and be free,
          if you ev -- er find a mo -- ment
          spare a thought for me.
          We ne -- ver said our love was ev -- er green
          or as un -- chan -- ging as the sea,
          but if you can still re -- mem -- ber,
          stop and think of me.
          Think of al the things we've shared and seen;
          don't think a -- bout the things which might have been.
          Think of me,
          think of me wa -- king, si -- lent and re -- signed.
          I -- ma -- gine me, try -- ing too hard to put you from my mind.
          Re -- call those days, look back on all those times,
          think of the things we'll ne -- ver do.
          There will ne -- ver be a day when I won't think of you.
          Flo -- wers fade, the fruits of som -- mer fade.
          They hav their sea -- son, so do we.
          But please pro -- mise me that some -- times you will think
          ah ah ah of me!
        }
        \addlyrics {
          \repeat unfold 100 { \skip 1 }
          Can it be Chris -- tine?
        }
      >>
      \new Staff = "fluteOne" <<
        \set Staff.instrumentName = \markup { "Flute I" }
        \set Staff.shortInstrumentName = \markup { "FI" }
        \fluteOne
      >>
      \new Staff = "fluteTwo" <<
        \set Staff.instrumentName = \markup { "Flute II" }
        \set Staff.shortInstrumentName = \markup { "FII" }
        \fluteTwo
      >>
      \new Staff = "soloViolin" <<
        \set Staff.instrumentName = \markup { "SoloViolin" }
        \set Staff.shortInstrumentName = \markup { "S.V." }
        \soloViolin
      >>
      \new Staff = "violinOne" <<
        \set Staff.instrumentName = \markup { "Violin I" }
        \set Staff.shortInstrumentName = \markup { "VI" }
        \violinOne
      >>
      \new Staff = "violinTwo" <<
        \set Staff.instrumentName = \markup { "Violin II" }
        \set Staff.shortInstrumentName = \markup { "VII" }
        \violinTwo
      >>
      \new Staff = "viola" <<
        \set Staff.instrumentName = \markup { "Viola" }
        \set Staff.shortInstrumentName = \markup { "Vla." }
        \viola
      >>
      \new Staff = "cello" <<
        \set Staff.instrumentName = \markup { "ViolonCello" }
        \set Staff.shortInstrumentName = \markup { "C." }
        \cello
      >>
      \new Staff = "contrabass" <<
        \set Staff.instrumentName = \markup { "Contrabass" }
        \set Staff.shortInstrumentName = \markup { "Cb." }
        \contrabass
      >>
      \new PianoStaff = "piano" <<
        \new Staff {
          \removeWithTag midi \upperStaff
        }
        \new Dynamics \pianoDynamics
        \new Staff {
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
        \set Staff.midiInstrument = "choir aahs"
        \voiceStaff
      >>
      % instrument end voice
      % instrument start fluteOne
      \new Staff = "fluteOne" <<
        \set Staff.midiInstrument = "flute"
        \fluteOne
      >>
      % instrument end fluteOne
      % instrument start fluteTwo
      \new Staff = "fluteTwo" <<
        \set Staff.midiInstrument = "flute"
        \fluteTwo
      >>
      % instrument end fluteTwo
      % instrument start soloViolin
      \new Staff = "soloViolin" <<
        \set Staff.midiInstrument = "violin"
        \soloViolin
      >>
      % instrument end soloViolin
      % instrument start violinOne
      \new Staff = "violinOne" <<
        \set Staff.midiInstrument = "violin"
        \violinOne
      >>
      % instrument end violinOne
      % instrument start violinTwo
      \new Staff = "violinTwo" <<
        \set Staff.midiInstrument = "violin"
        \violinTwo
      >>
      % instrument end violinTwo
      % instrument start viola
      \new Staff = "viola" <<
        \set Staff.midiInstrument = "viola"
        \viola
      >>
      % instrument end viola
      % instrument start cello
      \new Staff = "cello" <<
        \set Staff.midiInstrument = "cello"
        \cello
      >>
      % instrument end cello
      % instrument start contrabass
      \new Staff = "contrabass" <<
        \set Staff.midiInstrument = "contrabass"
        \contrabass
      >>
      % instrument end contrabass
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

