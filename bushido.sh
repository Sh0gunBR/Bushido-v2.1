#!/bin/bash
# Rearrange screen
clear
figlet 'Bushido' | lolcat
echo 'By: Sh0gun' | lolcat

# Workflow
domain=$1
./gauplus -random-agent $domain --output urls.txt;
cat urls.txt | ./urldedupe -u urls.txt -s > no_clones.txt;
cat no_clones.txt | ./Gxss -u * $domain > clean.txt
clear
./nuclei -u $domain -t nuclei-templates/vulnerabilities
