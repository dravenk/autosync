#!/bin/sh

# sync to /app/backupdir/sourcedir if /app/sourcedir without /
readonly sourcedir=/app/sourcedir/
readonly backupdir=/app/backupdir

while true; do
  inotifywait -r -e modify,attrib,close_write,move,create,delete ${sourcedir}
  rsync -arzvptP --delete ${sourcedir} ${backupdir}
done
