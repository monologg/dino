#!/bin/bash

python3 dino.py \
    --output_dir klue-nli-dino \
    --task_file task_specs/sts-x2-kor.json \
    --input_file data/klue-nli-v1/klue-nli-v1_dev.txt \
    --input_file_type plain \
    --num_entries_per_input_and_label 2 \
    --remove_duplicates \
    --remove_identical_pairs
