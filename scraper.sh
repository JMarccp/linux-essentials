#!/bin/bash

urls=$1
for url in $(cat $urls); do curl $url | grep "<h1>\|<p>" | tr -d "<h1><h1/><p></p>" >> file3.txt; done
cat file3.txt
