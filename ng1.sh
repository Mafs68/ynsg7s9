#!/bin/sh
wget --no-check-certificate -c https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok.zip
unzip ngrok.zip 
crd=1wta5kRRUBdbzU6RMXCu7HmFrbN_78EZpHqhCGfacqMLGxZDr
./ngrok authtoken $crd
