#!/bin/bash
set -e
ulimit -S -m 55000000
ulimit -S -v 55000000
python=/home/wassname/anaconda/envs/diygym4/bin/python
# DEBUG
CUDA_VISIBLE_DEVICES=1 $python \
    -m pdb -c continue \
    train.py \
        --batch_size 64 \
        --init_steps 256 \
        --eval_freq 64 \
        --replay_buffer_capacity 4000 \
        --render \
        --load auto \
        --num_train_steps 128
