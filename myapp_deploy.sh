#!/bin/sh
echo "==== Starting deploy process to server ===="
#echo "moving into root directory"
$cd $1

echo "==== Deploying files to server ===="
rsync -zarv --include="*/" ./ root@junhyukhan.com:/var/www/junhyukhan/

echo " Restarting Caddy server..."
ssh root@157.230.242.2 "sudo service caddy restart"
echo "==== Done deploying lenslocked.com ===="

