#!/bin/zsh
# requires `brew install ffmpeg libvo-aacenc`
# .. or the equivalent for your linux distro
# converts all .flac files in a directory to .m4a
for i in *flac
do of="${i/.flac/.m4a}"
  ffmpeg -i "${i}" -vn -acodec aac -b:a 320k -f mp4 -y "${of}"
done
