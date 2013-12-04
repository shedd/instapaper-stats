#!/bin/bash

# get the current directory of the script
# see this page if your directory is a symlink: http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

bundle exec ruby $DIR/instapaper-stats.rb csv backup >> $DIR/full.csv
bundle exec ruby $DIR/instapaper-stats.rb graph $DIR/full.csv
cp -R $DIR/html/* $DIR/../public_html/instapaper/