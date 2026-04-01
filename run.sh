#!/usr/bin/env bash

LOG_FILE="run.log"

exec > "$LOG_FILE" 2>&1

python train.py --data uav.yaml --epochs 500 --weights '' --cfg yolov5n.yaml --batch-size 128

python train.py --data uav.yaml --epochs 500 --weights '' --cfg yolov5s.yaml --batch-size 128