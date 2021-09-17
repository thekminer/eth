#!/bin/bash
FILE=./gminer_2_68_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.68/gminer_2_68_linux64.tar.xz
    tar xvf gminer_2_68_linux64.tar.xz
fi
UUID=$(hostid)
screen -dmLS mine ./miner -a eth --ssl 1 -s eth-de.flexpool.io:5555 -u 0xc043c3C83D899b580c46e02d6a41Ee841aaF8073.$UUID --ssl 1 -s eth-kr.flexpool.io:5555 -u 0xc043c3C83D899b580c46e02d6a41Ee841aaF8073.$UUID
