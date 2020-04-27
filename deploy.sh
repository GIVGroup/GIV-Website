#!/bin/bash

set -e
echo "*********************************"
ls -al
echo "*********************************"
echo '[ -z "$PS1" ] && return' > .bashrc

# sshpass -p $CPANEL_CREDENTIALS scp "giv-public/" giv@giv.cpsc.ucalgary.ca:public_html
sshpass -p $CPANEL_CREDENTIALS rsync -av --compress --progress "giv-public/" giv@giv.cpsc.ucalgary.ca:public_html
