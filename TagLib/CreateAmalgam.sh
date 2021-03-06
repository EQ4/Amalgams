#!/bin/bash

# NOTE: The initial working directory must be
#       in the same location as the script

SRC=Taglib/taglib

OPTS=(
  -w "*.c;*.cpp;*.h;*.hpp;*.tcc" -s
  -i "Taglib/taglib"
  -i "Taglib/taglib/toolkit"
  -i "Taglib/taglib/asf"
  -i "Taglib/taglib/mpeg"
  -i "Taglib/taglib/ogg"
  -i "Taglib/taglib/ogg/flac"
  -i "Taglib/taglib/flac"
  -i "Taglib/taglib/mpc"
  -i "Taglib/taglib/mp4"
  -i "Taglib/taglib/ogg/vorbis"
  -i "Taglib/taglib/ogg/speex"
  -i "Taglib/taglib/mpeg/id3v2"
  -i "Taglib/taglib/mpeg/id3v2/frames"
  -i "Taglib/taglib/mpeg/id3v1"
  -i "Taglib/taglib/ape"
  -i "Taglib/taglib/wavpack"
  -i "Taglib/taglib/trueaudio"
  -i "Taglib/taglib/riff"
  -i "Taglib/taglib/riff/aiff"
  -i "Taglib/taglib/riff/wav"
  -i "Taglib/taglib/mod"
  -i "Taglib/taglib/s3m"
  -i "Taglib/taglib/it"
  -i "Taglib/taglib/xm")

Amalgamate "${OPTS[@]}" templates/TagLibAmalgamTemplate.h TagLibAmalgam/TagLibAmalgam.h
Amalgamate "${OPTS[@]}" templates/TagLibAmalgamTemplate.cpp TagLibAmalgam/TagLibAmalgam.cpp

cd TagLib
git log --date=short --format=format:'%H %ad %s' > ../TagLibAmalgam/COMMITLOG
