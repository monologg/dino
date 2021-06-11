import argparse
import glob
import json
import os

parser = argparse.ArgumentParser()
parser.add_argument("--data_dir", type=str, default="klue-sts-v1")
args = parser.parse_args()

for filepath in glob.glob(f"{args.data_dir}/*.json"):
    dir_name, filename = filepath.split("/")
    plain_text_filename = os.path.splitext(filename)[0] + ".txt"

    with open(filepath, "r", encoding="utf-8") as f:
        orig_data = json.load(f)

    no_dup_set = set()

    for d in orig_data:
        try:
            no_dup_set.add(d["sentence1"])
        except:
            no_dup_set.add(d["premise"])

    with open(os.path.join(dir_name, plain_text_filename), "w", encoding="utf-8") as f:
        for sent in no_dup_set:
            f.write(sent)
            f.write("\n")
