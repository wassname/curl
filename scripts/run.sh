#!/bin/bash
set -e
ulimit -S -m 55000000
ulimit -S -v 55000000
python=/home/wassname/anaconda/envs/diygym4/bin/python
CUDA_VISIBLE_DEVICES=0 
# DEBUG
# $python \
#     -m pdb -c continue \
#     train.py \
#         --save_tb \
#         --save_model \
#         --save_video \
#         --batch_size 64 \
#         --init_steps 64 \
#         --eval_freq 64 \
#         --replay_buffer_capacity 4000 \
#         --render

$python \
    -m pdb -c continue \
    train.py \
        --save_tb \
        --save_model \
        --save_video \
        --batch_size 512 \
        --init_steps 10000 \
        --replay_buffer_capacity 40000 \
        # --load auto

