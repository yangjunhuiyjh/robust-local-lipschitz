#!/bin/bash

models=(
    'ce-tor-WRN_40_10_drop50'
    'advbeta2ce-tor-WRN_40_10_drop50'
    'advce-tor-WRN_40_10_drop50'
    'strades3ce-tor-WRN_40_10_drop50'
    'strades6ce-tor-WRN_40_10_drop50'
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