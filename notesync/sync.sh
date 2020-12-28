#!/bin/bash -e

NOTE_PATH="/Users/sylvan/drive/Dropbox/notes.md"
NOTESYNC="/Users/sylvan/drive/code/remarkable/notesync/"
OUTFILE="notes.pdf"

# TODO insert page break

pandoc $NOTE_PATH -o $OUTFILE --css $NOTESYNC/pandoc.css -t html 
python3 $NOTESYNC/send.py




