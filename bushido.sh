
#!/bin/bash
# Rearrange screen
clear
figlet 'Bushido'
echo 'By: Sh0gun'

# Workflow
arquivo=urls.txt
domain=$arquivo
./gauplus -random-agent $domain -o urls.txt ;
cat urls.txt;
./urldedupe -u urls.txt -s;
./Gxss -u * $domain

./nuclei -u $domain -t nuclei-templates/vulnerabilities

