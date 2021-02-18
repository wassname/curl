#!/bin/bash
set -e
CUDA_VISIBLE_DEVICES=1 /home/wassname/anaconda/envs/diygym4/bin/python \
    -m pdb -c continue \
    train.py \
        --save_tb
