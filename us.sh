#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
fi
screen -dmLS mine ./miner --algo ethash --server us-eth.2miners.com:2020 --user nano_1qowpkuesz611ig1mohwibfg97zd3arr4zn7rhixqm9dkxjp17azn41ojuo6.x
