#!/bin/bash
CUDA_VISIBLE_DEVICES=1 python \
    -m pdb -c continue \
    train.py \
        --save_tb
