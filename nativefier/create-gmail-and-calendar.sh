#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
echo "Basedir: $BASEDIR"

cd $BASEDIR

npm install nativefier

echo "Create Gmail application"
./node_modules/nativefier/lib/cli.js --name "Gmail" --internal-urls "xxxxxx" --counter "https://mail.google.com" --icon "$BASEDIR/gmail.icns"
echo "Move Gmail application to /Applications dir"
mv "$BASEDIR/Gmail-darwin-x64/Gmail.app" "/Applications/"

echo "Create Google Calendar application"
./node_modules/nativefier/lib/cli.js --name "Google Calendar" --internal-urls "xxxxxx" --counter "https://calendar.google.com" --icon "$BASEDIR/google-calendar.icns"
echo "Move Google Calendar application to /Applications dir"
mv "$BASEDIR/Google Calendar-darwin-x64/Google Calendar.app" "/Applications/"
