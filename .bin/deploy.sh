#!/bin/sh
chmod -R +r ../panter.ch/
rsync -av ../panter.ch/ panterch@www.panter.ch:~/www.panter.ch/
ssh panterch@www.panter.ch 'chmod -R +r ~/www.panter.ch'
