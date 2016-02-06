#!/bin/bash

middleman build
mv build/wink.html build/projekt.html
rm build/index.html
scp -r build/* app@wink.panter.ch:~/app/current/public
