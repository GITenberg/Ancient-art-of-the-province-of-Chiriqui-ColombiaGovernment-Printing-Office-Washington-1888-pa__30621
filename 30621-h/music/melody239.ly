\version "2.10.25" 
\include "english.ly"


melody = \relative c''''
 { 
  \clef treble
  \key c \major
  \time 4/4
  \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 
  \partial 4
  fs4 \bar "||"
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
