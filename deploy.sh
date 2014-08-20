#!/bin/sh
chmod -R +r build/
rsync -av build/ panterch@www.panter.ch:~/beta.panter.ch/
ssh panterch@www.panter.ch 'chmod -R +r ~/beta.panter.ch'
