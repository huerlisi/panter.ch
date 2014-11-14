#!/bin/sh
chmod -R +r build/

# rsync -av --delete build/ panterch@www.panter.ch:~/beta.panter.ch/
# ssh panterch@www.panter.ch 'chmod -R +r ~/beta.panter.ch'

rsync -av --delete build/ panterch@www.panter.ch:~/www.panter.ch/
ssh panterch@www.panter.ch 'chmod -R +r ~/www.panter.ch'
