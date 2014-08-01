\version "2.10.25" 
\include "english.ly"

% 249, 250 are the same exc octave

melody = \relative c'''  % 250 is one octave lower
 { 
  \clef treble
  \key c \major
  \time 3/4
  \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 
  g bf c
  \bar "||"
} 

  \score { 
    \new Staff \melody 
    \layout {
       \context {
       \Score
       \remove Bar_number_engraver
  }  } 
  \midi { 
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 90 4) } 
  }
}
