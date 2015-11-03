#!/usr/bin/env bash

showHiddenFileStatus=`defaults read com.apple.finder AppleShowAllFiles`

if [ $showHiddenFileStatus = 'No' ]; then
  defaults write com.apple.finder AppleShowAllFiles Yes
else
  defaults write com.apple.finder AppleShowAllFiles No
fi

killall Finder
