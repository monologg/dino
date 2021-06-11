#!/bin/bash
# klue-sts
wget https://github.com/KLUE-benchmark/KLUE/raw/main/klue_benchmark/klue-sts-v1/klue-sts-v1_train.json
wget https://github.com/KLUE-benchmark/KLUE/raw/main/klue_benchmark/klue-sts-v1/klue-sts-v1_dev.json

mkdir -p klue-sts-v1
mv klue-sts-v1_train.json klue-sts-v1
mv klue-sts-v1_dev.json klue-sts-v1

python3 create_plain.py --data_dir klue-sts-v1


# klue-nli
wget https://github.com/KLUE-benchmark/KLUE/raw/main/klue_benchmark/klue-nli-v1/klue-nli-v1_train.json
wget https://github.com/KLUE-benchmark/KLUE/raw/main/klue_benchmark/klue-nli-v1/klue-nli-v1_dev.json

mkdir -p klue-nli-v1
mv klue-nli-v1_train.json klue-nli-v1
mv klue-nli-v1_dev.json klue-nli-v1

python3 create_plain.py --data_dir klue-nli-v1