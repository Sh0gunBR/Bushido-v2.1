#!/bin/bash
# Rearrange screen
clear
figlet 'Bushido' | lolcat
echo 'By: Sh0gun' | lolcat

# Workflow
domain=$1
if [[ domain=$1 ]]
then
./gauplus -random-agent $domain --output urls.txt;
cat urls.txt | ./urldedupe -u  urls.txt -s > no_clones.txt;
cat no_clones.txt | ./Gxss -p *  $domain > clean.txt
clear
./nuclei -u $domain -t nuclei-templates/vulnerabilities
else
        echo'Use example: https://www.test.com'
fi
