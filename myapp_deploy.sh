#!/bin/sh
echo "==== Starting deploy process to server ===="
#echo "moving into root directory"
$cd $1

echo "==== Deploying files to server ===="
rsync -zarv --include="*/" ./ jun@junhyukhan.com:/var/www/junhyukhan/

echo " Restarting Caddy server..."
ssh jun@157.230.242.2 "sudo -S service caddy restart"

echo "==== Done deploying lenslocked.com ===="

