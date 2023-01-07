#!/bin/bash

figlet 'Bushido'
echo 'By: Sh0gun'
read=url
./gauplus -random-agent $url -o urls.txt;
cat urls.txt | ./urldedupe -u urls.txt -s; | ./Gxss -u * $url
echo'/n'
./nuclei -u $url -t nuclei-templates/vulnerabilities

