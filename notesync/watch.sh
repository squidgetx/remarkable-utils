#!/bin/bash -e

# Dependencies: watchman
watchman watch /Users/Sylvan/drive/Dropbox;
watchman -- trigger /Users/Sylvan/drive/Dropbox rm-sync '*.md' -- /Users/Sylvan/drive/code/remarkable/notesync/sync.sh 

