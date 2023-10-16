#!/bin/sh
#
# Script to run omnet evaluation.
#

#Extract project files for OMNet
tar -xJf omnet.tar.xz

#First copy dataset from staging area to this node, and then extract contents
mkdir -p dataset/data
cp /staging/maule2/projects/omnet_data.tar.xz dataset/data/
cd dataset/data && tar -xJf omnet_data.tar.xz && rm -f omnet_data.tar.xz && cd ../.. 

#Next copy trained model weights from staging area to this node, and then extract contents
mkdir -p experiments/
cp /staging/maule2/projects/experiment_os_rpmnet_noise.tar.xz experiments/
cd experiments/ && tar -xJf experiment_os_rpmnet_noise.tar.xz && rm -f omnet_data.tar.xz && cd ..

./evaluate.py --model_dir experiments/experiment_omnet --restore_file experiments/experiment_os_rpmnet_noise/val_model_best.pth

tar -cJf experiment_os_omnet_out.tar.xz experiments
cp experiment_os_omnet_out.tar.xz /staging/maule2/projects/
rm -f experiment_os_omnet_out.tar.xz
