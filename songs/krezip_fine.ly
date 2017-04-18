\include "articulate.ly"
\include "color-pitch.ly"
\include "predefined-guitar-fretboards.ly"
\version "2.19.50"
% voicetrainer: measures = 117
% voicetrainer: pages = 6

% TODO: add dynamics

\header {
  title = "Fine"
  composer = "Krezip"
  arranger = "arranged by: Tamara van Haarlem"
}

voicetrainerTempo = 108
voicetrainerKey = f,

global= {
  \tempo 4=\voicetrainerTempo \time 4/4 \key f \minor
}

voiceStaff= \transpose f, \voicetrainerKey \relative c' {
  \override NoteHead #'color = #color-notehead
  \global
  \clef tenor
  r1 | r | r | r

  \barNumberCheck #5
  % Held the door for me
  r4 f,8 f as8. c g8~ |
  % You make sure I'm fine yeah
  g4 f8 f as bes4 c8~ |
  c4( des8 bes4. as8 bes~ |
  bes) c4. r2 |

  \barNumberCheck #9
  % Hold my hand all day, no you would not have cared
  % You'd just be thankful to
  r4 c8 c f g4 as8( |
  g4) g8 f c bes as bes( |
  c4.) bes8 c bes( as) bes~ |
  bes bes4 c8( bes4) r8 bes |

  \barNumberCheck #13
  % but do you feel you've won
  as'4 g es c8( es~ |
  es) es4. r2 |

  % don't you see I'm weaker with you
  as4 g es8( c) c4 |
  f4. bes,8 bes as4. |

  \barNumberCheck #17
  % I hope you don't really think that I'm better off without you
  as'8 c,4 c8 c c4 as'8~ |
  as g( f es8~ es2 ) |
  as4 g es c |
  f4. as,8 g4. r8 |
  g8( as f2.) |

  r2.. as8 |

  \barNumberCheck #23
  % and I feel fine yeah
  as'1 |
  g2~ g8 r4 es8~ |
  es2 r4. es8~ |
  es( c bes as4) r4. |

  % I feel fine yeah
  r4 as'8( g f es4 bes8~ |
  bes c4) r4 des8( c) c8( |
  bes8 as8~ as4.) r4 bes8( |
  c des c2) r4 |

  % Take my hand just be careful with it
  as'1^"control" |
  g2. r4 |
  es2 r8 es8 c es~ |
  es c4 bes as4. |

  % I feel fine
  r4 as'8( g f es4 bes8~ |
  bes c4) r4 des8( c) c( |
  bes8 as2) r4. |

  r1 |

  % start cello

  \barNumberCheck #39
  % will you stick with me? you're right if you don't
  r4 f8 f as8. c8. g8~ |
  g4  r8 es8 as as bes c~ |
  c4( des8 bes4. as8 bes8~ |
  bes4) r2. |

  % cause I ain't easy now no
  r8 c as' g f es4 es8~ |
  es f4 r8 r2 |

  % Giving you a hard time but do you feel you've won?
  r4 as8 g f es4 es8~ |
  es8 c( bes as4) f r8 |
  as'4 g es c8( es~ |
  es8) es4. r2 |

  % Don't you see I'm weaker with you?
  as4 g es8( c) c4 |
  f4. bes,8 bes as4. |

  \barNumberCheck #51
  % I hope you don't really think, that I'm better off without you yeah
  as'8 c,4 c8 c c4 as'8~ |
  as g( f es8~ es2) |
  as4 g es c |
  f4. as,8 g4. r8 |
  g8( as f2~ f8) g8( |
  as2) r4. as8 |

  % and I feel fine yeah
  as'1 |
  g2. r8 es8~ |
  es4 r2 r8 es8~ |
  es8( c bes as4) r4. |

  \barNumberCheck #61
  % I feel fine no
  r4 as'8( g f es4 bes8~ |
  bes c4) r4 des8( c8) c8( |
  bes as2) r4. |
  c8( des c2) r4 |

  % take my hand, just be careful with it
  as'1^"control" |
  g2. r4 |
  es2  r8 es c es~ |
  es c4 bes as4. |

  % I feel fine 
  r4 as'8( g f es4 bes8~ |
  bes c4) r4 des8( c) c( |
  bes as2) r4. |

  r1 |

  \barNumberCheck #73
  % and i decided not to be
  r2 as'8 as4 c,8~ |
  c bes4 as bes c8~ |
  c r4.

  % no not to be with you at all
  as'8 as4 c,8~ |
  c bes4 as g f8~ |
  f r4.

  % but I haven't got a clue
  as'8 as4 c,8~ |
  c bes4 as bes c8~ |
  c r4.

  % if I'm handling this right no
  c8 c4 c8~ |
  c des c bes( as4) g8( as~ |
  as4) r4

  \barNumberCheck #81
  % you give me everything I want
  as'8 as4 g8~ |
  g as4 g8( es4) es8 es~ |
  es r4.

  % but I need to be alone
  as8 as4 g8~ |
  g as( g) g( es4) es8 c( |
  bes as) r4

  % and believe me baby,
  as'8 as4 c,8~ |
  c8 bes4 as es r8 |

  % I don't understand
  c'8 des c bes r8

  % why I can't be with you no
  es,8 es c'8~ |
  c des c bes( as4) g8( as~ |
  as4.) r8 r2 |

  r1 |

  \barNumberCheck #91
  % i feel fine
  as'1 |
  g2. r8 es8~ |
  es4 r8 r2 es8~ |
  es( c bes as4) r4. |

  % i feel fine
  r4 as'8( g f es4 bes8~ |
  bes8 c4) r4 des8( c) c( |
  bes as2) r4. |
  r1 |

  % take my hand, just be careful with it
  as'1^"control" |
  g2. r4 |
  es2 r8 es8 c es~|
  es c4 bes as4. |

  % I feel fine
  r4 as'8( g f es4 bes8~
  bes c4) r4 des8( c) c( |
  bes as2) r4. |
  c8( des c2.) |

  \barNumberCheck #107
  % take my hand, 'cause I trust you with it
  as'1^"control" |
  g2. r4 |
  es2 r8 es c es~ |
  es c4 bes as4. |

  % I feel fine
  r4 as'8( g f es4 bes8~ |
  bes c4) r4 des8( c) c( |
  bes as2) r4. |

  % I feel fine
  r2.. as8 |
  as2~ as8 r4. |
  c2 r2 |
  es,1 \bar "|."
}

cello= \transpose f, \voicetrainerKey \relative c, {
  \global
  \clef bass
  \repeat unfold 38 r1 |

  \barNumberCheck #39
  % Will you stick with me? You're right if you don't
  f1 | es | f | es |

  % cause I aint' easy now no
  f | es |

  % giving you a hard time but do you feel you've won
  f | es | f | es |

  % don't you see I'm weaker with you?
  f | des |

  % I hope you don't really think, that I'm better off without you yeah
  f | es | f | es | des | des |

  \barNumberCheck #57
  % I feel fine yeah
  \clef tenor f''1 |
  es2. r8 c8~ |
  c4 r2. |
  r1 |

  % I feel fine no
  r4 f8 es f es4 as,8~ |
  as as4 r4 as as8~ |
  as2~ as8 r4. |
  r1 |

  % Take my hand, just be careful with it
  f'1 |
  es2. r4 |
  c2 r2 |
  r1 |


  % I feel fine
  r4 f8 es c bes4 as8~ |
  as as4 r8 r2 |
  r1 |
  r1 |

  % and I decided not to ty
  % no not to be with you at all
  % but I haven't got a clue
  % if I'm handing this right no
  \repeat unfold 8 r1

  \barNumberCheck #81
  % you give me everything I want
  r2 f'8 f4 es8~ |
  es f4 es8 c4 c8 as~ |
  as r4.

  % but I need to be alone
  f'8 f4 es8~ |
  es f4 f8 es4 es8 es~ |
  es4 r2. |

  % and believe me baby, I don't understand
  r1 | r2..

  % why I can't be with you no
  es8~ |
  es f es des c4 c8 des~ |
  des4. r8 r2 |
  r1 |

  % I feel fine
  % I feel fine
  \repeat unfold 8 r1 |

  \barNumberCheck #99
  % take my hand just be careful with it
  f1 |
  es2. r4 |
  c2 r2 |
  r1 |

  % i feel fine
  r4 f8 es f es4 as,8~ |
  as as4 r4 as4 as8~ |
  as2~ as8 r4. |
  r1 |

  % take my hand cause I trust you with it
  f'1 |
  es2. r4 |
  c2 r2 |
  r1 |

  % i feel fine
  r4 f8 es c bes4 as8~ |
  as as4 r8 r2 |
  r1 |

  % and i feel fine
  \repeat unfold 4 r1 \bar "|."
}

uthemea = \relative c' {
  < c f g>1 |
  < es f bes> |
  r8 c f g bes es as, g |
  f1 |
}

uthemeb = \relative c' {
  <<
    { \voiceTwo c2 }
    \new Voice { \voiceOne as'4-\tag midi \sustainOn g }
  >> \oneVoice
  es4 c |
}

upperStaff= \transpose f, \voicetrainerKey \relative c' {
  \global
  % Held the door for me
  % You make sure I'm fine yeah
  \repeat unfold 3 \uthemea

  \barNumberCheck #13
  % but do you feel you've won
  \uthemeb
  es2~ es8 r es r |

  % don't you see I'm weaker with you
  \uthemeb
  < as des f> 1 |

  % I hope you don't really think that I'm better off without you
  < c, f as>1 |
  < g bes>2.~ < g bes es>4 |
  \uthemeb
  < g bes f'>1 |
  r4 f8 des'4 f es8~ |
  es4 f as bes |

  \barNumberCheck #23
  % and I feel fine yeah
  <<
    { \voiceOne < f as>1 }
    \new Voice { \voiceTwo c2.-\tag midi \sustainOn c8 as }
  >> \oneVoice
  < as des es g >2~ < as des es g>8 as des as |
  < as bes des>4 as bes es |
  bes es as, < bes es> |

  % I feel fine yeah
  <<
    { \voiceTwo c1 }
    \new Voice { \voiceOne < f as>4-\tag midi \sustainOn as8 g f es4. }
  >> \oneVoice |
  < as, c>1 |
  < as c es> |
  < c es>4 < as c es> < as c es> < as des es> |

  % take my hand, just be careful with it
  <<
    { \voiceOne < f' as>1 }
    \new Voice { \voiceTwo c4.-\tag midi \sustainOn f, c'8 as }
  >> \oneVoice |
  < as des es g>1 |
  < as c es> |
  bes4 es bes as |

  % I feel fine
  < c f as>1 |
  < f as> |
  < as, c es> |
  r4 c8 des es4 as |

  % start cello

  \barNumberCheck #39
  % will you stick with me? you're right if you don't
  < c, f g>1 |
  < bes es f> |
  r8 c8 f g bes es as, g |
  f2 f8 r8 bes4 |

  % cause I ain't easy now no
  < c, f g>1 |
  < bes es f> |

  % giving you a hard time but do you feel you've won?
  r8 c8 f g bes es as, g |
  f2~ f8 es8 bes c |
  \uthemeb
  es2~ es8 r8 es r8 |

  % don't you see I'm weaker with you?
  \uthemeb
  < as, des f>1 |

  \barNumberCheck #51
  % I hope you don't really think that I'm better off without you
  <<
    { \voiceTwo c2. c4 }
    \new Voice { \voiceOne < f as>1-\tag midi \sustainOn }
  >> \oneVoice |
  <<
    { \voiceTwo bes,2.~ < bes c>4 }
    \new Voice { \voiceOne < es g>2..~-\tag midi \sustainOn < es g>8 }
  >> \oneVoice |
  \uthemeb
  <<
    { \voiceTwo < g, bes f'>1 }
    \new Voice { \voiceOne r2..-\tag midi \sustainOn as8 }
  >> \oneVoice |
  < f as>8 r8 f des' des f4 es8~ |
  es4 f as bes |

  % and if feel fine yeah
  <<
    { \voiceTwo c,2. c8 as }
    \new Voice { \voiceOne < f' as >1-\tag midi \sustainOn }
  >> \oneVoice |
  < as, des es g>2~ < as des es g>8 as des as |
  < as bes es>4 as bes es |
  bes es as, < bes es> |

  % I feel fine no
  <<
    { \voiceTwo c1 }
    \new Voice { \voiceOne < f as>4-\tag midi \sustainOn as8 g f es4. }
  >> \oneVoice |
  < as, c>1 |
  < as c es> |
  < c es>4 < as c es> < as c es> < as des es> |


  % take my hand, just be careful with it
  <<
    { \voiceOne < f' as>1 }
    \new Voice { \voiceTwo c4.-\tag midi \sustainOn f, c'8 as }
  >> \oneVoice |
  < c des es g>1 |
  < as c es> |
  bes4 es bes as |

  % I feel fine
  <<
    { \voiceTwo c1 }
    \new Voice { \voiceOne < f as>4-\tag midi \sustainOn as8 g f es4. }
  >> \oneVoice |
  < f as>1 |
  < as, des es>4 < as des es> < as des es> < as des es> |
  < as des es> < as des es> < as des es> < as des es> |

  \barNumberCheck #73
  % and I decided not to be
  % no not to be with you at all
  < f as des>2.. f16 as |
  c8 f g as4 g8 es des |
  <<
    { \voiceTwo < f, as des>1 }
    \new Voice { \voiceOne r2.-\tag midi \sustainOn es'4 }
  >> \oneVoice |
  < as, c>2 g'4 as |

  % but I haven't got a clue
  as,4. as4 as8 < as des>4 |
  < c~ f g~>4. < c f~ g~> < c f g >4 |

  % if I'm handling this right no
  <<
    { \voiceTwo < es, g bes>1 }
    \new Voice { \voiceOne r4-\tag midi \sustainOn es'8 bes' r2 }
  >> \oneVoice |
  <<
    { \voiceTwo < es,, g>1 }
    \new Voice { \voiceOne bes'8-\tag midi \sustainOn es bes bes' r4 es,4 }
  >> \oneVoice |

  % you give me everything I want
  \repeat unfold 4 < des es f as>4 |
  r4. < c f g>4. es4 |

  % but I need to be alone
  \repeat unfold 4 < des es f as>4 |
  < c f g>4. < c f g> c4 |

  % and believe me baby
  \repeat unfold 2 { < des es f as>4 des8 } es4 |
  < as, c f>1 |

  % i don't understand
  % why I can't be with you no
  \repeat unfold 4 r1 |

  \barNumberCheck #91
  % I feel fine
  <<
    { \voiceTwo f'1 }
    \new Voice { \voiceOne < c' f as>2.-\tag midi \sustainOn c4 }
  >> \oneVoice |
  <<
    { \voiceOne < des es g>1 }
    \new Voice { \voiceTwo as4.-\tag midi \sustainOn as4 des8 as' es }
  >> \oneVoice |
  <<
    { \voiceOne as,4 as2. }
    \new Voice { \voiceTwo < c es>2.-\tag midi \sustainOn es4 }
  >> \oneVoice |
  es,4 bes' es8 es, as es |

  % I feel fine
  <<
    { \voiceTwo f1 }
    \new Voice { \voiceOne r8-\tag midi \sustainOn c'8 as' g f es4 bes8 }
  >> \oneVoice |
  % bes8 - ties don't work over polyphonic splits
  r8 c4. c2 |
  < as, c es>1 |
  r8 as8 bes as c as es' as, |

  % take my hand, just be careful with it
  < c f as>2. < c f as>4 |
  < as des es g>4. < as des>4 < as des es g>4. |
  < as c es>4 as bes es |
  as, bes < as bes es> < as bes es> |

  % I feel fine
  r4
  <<
    { \voiceTwo < c f >4 }
    \new Voice { \voiceOne as'8-\tag midi \sustainOn g }
  >> \oneVoice f es r8 < f, as bes>8~ |
  < f as bes>2~ < f as bes>8 < as des>4 < as bes es>8~ |
  \repeat unfold 8 < as bes es>4 |

  \barNumberCheck #107
  % Take my hand, cause I trust you with it
  < c f as>8 g' f es4 < f as>4. |
  < des f as>8 g f es4 bes < as c es>8~ |
  < as c es>4 < as c es> r4 < as c es> |
  as bes < as bes es> < as bes es> |

  % I feel fine
  <<
    { \voiceTwo < c f>4 }
    \new Voice { \voiceOne as'8-\tag midi \sustainOn g }
  >> \oneVoice f es4 c as'8 |
  as4. g f8 < as, c es>8~ |
  < as c es>4 as bes es |

  % I feel fine
  as, bes es8 as, bes as |
  r4
  <<
    { \voiceTwo < c f>4 }
    \new Voice { \voiceOne as'8-\tag midi \sustainOn g }
  >> \oneVoice f es as, bes |
  r1 |
  r1 \bar "|."
}

lthemea = \relative c {
  f1 |
  es |
  f |
  < es bes'> |
}

lowerStaff= \transpose f, \voicetrainerKey \relative c, {
  \global
  \clef bass
  % Held the door for me
  % You make sure I'm fine yeah
  \repeat unfold 3 \lthemea

  \barNumberCheck #13
  % but do you feel you've won
  f |
  < es' g>2~ < es g>8 es, r8 bes' |

  % don't you see I'm weaker with you
  f1 |
  <<
    { \voiceTwo des }
    \new Voice { \voiceOne r2-\tag midi \sustainOn r8 des r4 }
  >> \oneVoice |

  % I hope you don't really think that I'm better off without you
  f1 |
  es |
  f |
  es |
  des8 as' r2. |
  r1 |

  % and I feel fine yeah
  <<
    { \voiceTwo f1 }
    \new Voice { \voiceOne f'4.-\tag midi \sustainOn f4 f8 r4 }
  >> \oneVoice |
  des,1 |
  as'8 as4 as as as8~ |
  as8 as4 as as as8 |

  % I feel fine yeah
  f1 |
  <<
    { \voiceTwo des1 }
    \new Voice { \voiceOne des'2.-\tag midi \sustainOn des4 }
  >> \oneVoice |
  c,1 |
  r8 c4 c c c8 |

  \barNumberCheck #31
  % Take my hand, just be careful with it
  f1 |
  <<
    { \voiceTwo des1 }
    \new Voice { \voiceOne des'4.-\tag midi \sustainOn es f4 }
  >> \oneVoice |
  <<
    { \voiceTwo as,,2~ as8 as4 as8 }
    \new Voice { \voiceOne r4.-\tag midi \sustainOn es''4. as4 }
  >> \oneVoice |
  % as,,8 tie doesn't work over polyphonic split
  r8 as,,4 as as as8 |

  % I feel fine
  f'1 |
  des' |
  as |
  as8 es' r4. as,4 as8 |

  % cello starts

  % will you stick with me? you're right if you don't
  f1 |
  es2. bes'4 |
  f1 |
  < es' bes'>2 < es bes'>8 bes4 es8 |

  % 'cause I ain't easy now no
  f,1 |
  es2. bes'4 |

  % giving you a hard time but do you feel you've won?
  f1 |
  < es' bes'> |
  f, |
  < es' g>2~ < es g>8 es, r8 bes' |

  % don't you see I'm weaker with you?
  f1 |
  <<
    { \voiceTwo des1 }
    \new Voice { \voiceOne r4.-\tag midi \sustainOn as'4. des4 }
  >> \oneVoice |


  \barNumberCheck #51
  % I hope you don't really think that I'm better off withont you
  f,1 |
  es |
  f |
  es |
  des8 as' r2. |
  r1 |

  % and I feel fine yeah
  <<
    { \voiceTwo f1 }
    \new Voice { \voiceOne f'4.-\tag midi \sustainOn f4 f8 r4 }
  >> \oneVoice |
  des,1 |
  as'8 as4 as as as8~ |
  as8 as4 as as as8 |

  % I feel fine no
  f1 |
  <<
    { \voiceTwo des1 }
    \new Voice { \voiceOne des'2.-\tag midi \sustainOn des4 }
  >> \oneVoice |
  c,1 |
  r8 c4 c c c8 |

  % take my hand, just be careful with it
  f1 |
  <<
    { \voiceTwo des }
    \new Voice { \voiceOne des'4.-\tag midi \sustainOn es f4 }
  >> \oneVoice |
  <<
    { \voiceTwo as,,2~ as8 as4 as8 }
    \new Voice { \voiceOne r4.-\tag midi \sustainOn es''4. as4 }
  >> \oneVoice |
  % as8 - ties don't work over plyphone splits
  r8 as,,4 as4 as4 as8 |

  % I feel fine
  f'1 |
  des'1 |
  r8 es4 es es es8~ |
  es es4 es4 es4 es8 |

  \barNumberCheck #73
  % and I decided not to be, no not to be with you at all
  des,1 |
  f' |
  des, |
  f'2~ f8 f4 f8 |

  % but I haven't got  clue if I'm handling this right no
  < des f>1 |
  f |
  es,2.. es8 |
  es2.. es'8 |

  % you give me everything I want but I need to be alone
  < des, des'>8 < des des'>4 < des des'> < des des'> < des des'>8 |
  f2~ f8 c'4. |
  < des, des'>8 < des des'>4 < des des'> < des des'> < des des'>8 |
  < f f'>1 |

  % and believe me baby
  % I don't understand why I can' be with you no
  < des des'> |
  < f f'> |
  < es es' g bes>~ |
  < es es' g bes> |
  < des des'>~ |
  < des des'> |

  \barNumberCheck #91
  % I feel fine
  r1 | r |
  as''~ |
  as |

  % I feel fine
  r |
  des |
  r |
  as,2 as4 as |

  % Take my hand, just be careful with it
  <<
    { \voiceTwo f1 }
    \new Voice { \voiceOne < c' f~>4.-\tag midi \sustainOn < c f>8~ < c f>2 }
  >> \oneVoice |
  <<
    { \voiceTwo as1 }
    \new Voice { \voiceOne des4-\tag midi \sustainOn des8 es4 f4. }
  >> \oneVoice |
  <<
    { \voiceOne as,1 }
    \new Voice { \voiceTwo as,8-\tag midi \sustainOn as4 as as as8 }
  >> \oneVoice |
  as8 as4 as as as'16 g |

  % I feel fine
  f8 c' r2. |
  des,1 |
  <<
    { \voiceTwo as1 }
    \new Voice { \voiceOne as'4.-\tag midi \sustainOn as4 as es8 }
  >> \oneVoice |
  as8 as4 as as es8 |

  \barNumberCheck #107
  % Take my hand, cause I trust you with it
  <<
    { \voiceTwo f1 }
    \new Voice { \voiceOne r2-\tag midi \sustainOn c'4 c }
  >> \oneVoice |
  <<
    { \voiceTwo des,1 }
    \new Voice { \voiceOne r2-\tag midi \sustainOn as'4 as }
  >> \oneVoice |
  as4. es8 as4. as8~ |
  as8 as4 as es8 as es |

  % I feel fine
  f2 c' |
  <<
    { \voiceTwo des,1 }
    \new Voice { \voiceOne r4-\tag midi \sustainOn es'4 f g }
  >> \oneVoice |
  as,4. as8~ as2 |

  % I feel fine
  as4. es4 es es8 |
  f c' r2. |
  < des, des' as' c>1 |
  as \bar "|."
}

pianoDynamics = {
}

pianoPedal = {
  s1\sustainOn
}

myChords= \chordmode {
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
          Held the door for me
          You make sure I'm fine yeah
          Hold my hand all day
          No you would not have cared
          You'd just be thank -- ful to
          But do you feel you've won?
          Don't you see I'm weak -- er with you?

          I hope you don't rea -- ly think
          That I'm bet -- ter off with -- out you

          And I feel fine
          yeah
          I feel fine
          yeah
          Take my hand
          Just be care -- ful with it
          I feel fine

          Will you stick with me?
          You're right if you don't
          'Cause I ain't ea -- sy now no
          Gi -- ving you a hard time but
          Do you feel you've won?
          Don't you see I'm wea -- ker with you?
          I hope you don't real -- ly think
          That I'm bet -- ter off with -- out you
          yeah

          And I feel fine
          yeah
          I feel fine
          no
          Take my hand
          Just be care -- ful with it
          I feel fine

          I de -- ci -- ded not to be
          not to be with you at all
          But I ha -- ven't got a clue
          If I'm hand -- ling this right no

          give me eve -- ry -- thing I want
          But I need to be a -- lone
          And be -- lieve me ba -- by
          don't un -- der -- stand
          Why I can't be with you no

          I feel fine
          Hmm
          I feel fine
          take my hand
          Just be care -- ful with it

          I feel fine
          no
          Take my hand
          'cause I trust you with it
          I feel fine
          And I feel fine
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
          \repeat unfold 117 {
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
