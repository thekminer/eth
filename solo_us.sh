#!/bin/bash
FILE=./gminer_2_63_linux64.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/develsoftware/GMinerRelease/releases/download/2.63/gminer_2_63_linux64.tar.xz
    tar xvf gminer_2_63_linux64.tar.xz
fi
screen -dmLS mine ./miner --algo ethash --server us-solo-eth.2miners.com:6060 --user 0x6c4627a0Da1dc88f18d53Dc57f7b7D8609dDFe88
