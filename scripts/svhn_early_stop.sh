#!/bin/bash

models=(
    'ce-tor-WRN_40_10'
    'advbeta2ce-tor-WRN_40_10'
    'advce-tor-WRN_40_10'
    'strades3ce-tor-WRN_40_10'
    'strades6ce-tor-WRN_40_10'
)
for i in "${models[@]}"
do
    python ./main.py --experiment experiment01 \
        --no-hooks \
        --norm inf --eps 0.031 \
        --dataset svhn \
        --model ${i} \
        --attack pgd \
        --random_seed 0
done