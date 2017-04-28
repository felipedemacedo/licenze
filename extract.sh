#!/bin/sh

apt-get install -y unzip

unzip instantclient-basic-linux.x64-12.2.0.1.0.zip
unzip instantclient-sdk-linux.x64-12.2.0.1.0.zip
unzip instantclient-sqlplus-linux.x64-12.2.0.1.0.zip

rm instantclient-basic-linux.x64-12.2.0.1.0.zip
rm instantclient-sdk-linux.x64-12.2.0.1.0.zip
rm instantclient-sqlplus-linux.x64-12.2.0.1.0.zip
rm -rf .git

pwd
ls
echo "OK"