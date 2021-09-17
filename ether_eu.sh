#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
fi
screen -dmLS mine ./miner --algo ethash --server eu1.ethermine.org:4444 --user 0xc043c3C83D899b580c46e02d6a41Ee841aaF8073
