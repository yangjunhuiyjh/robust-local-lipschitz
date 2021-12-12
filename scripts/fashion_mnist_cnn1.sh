models=(
    'advbeta2ce-tor-CNN001'
    'advbetace-tor-CNN001'
    'advbeta.5ce-tor-CNN001'
    'strades6ce-tor-CNN001'
    'strades3ce-tor-CNN001'
    'stradesce-tor-CNN001'
    'tulipce-tor-CNN001'
    'ce-tor-CNN001'
    'advce-tor-CNN001'
    'sllrce-tor-CNN001'
)

for i in "${models[@]}"
do
    python ./main.py --experiment experiment01 \
        --no-hooks \
        --norm inf --eps 0.1 \
        --dataset fashion_mnist \
        --model ${i} \
        --attack pgd \
        --random_seed 0
done