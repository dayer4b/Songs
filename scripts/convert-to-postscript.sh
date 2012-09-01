#!/bin/bash

# the -c 7 and -t 10 options in the loop below lower font sizes for
# the text of lyrics and chords that are printed

for f in ../chordpro/*.chordpro
do
	shortfilename=${f/..\/chordpro\//}
	songtitle=${shortfilename/.chordpro/}
	chordii -P us -c 7 -t 10 "$f" > "../postscript/$songtitle.ps"
done
