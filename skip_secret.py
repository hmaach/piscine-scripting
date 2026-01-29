import sys
import os

if len(sys.argv) != 2:
    exit(1)

file_name = sys.argv[1]

if not os.access(file_name, os.R_OK):
    exit(1)

with open(file_name, "r") as file:
    lines = file.readlines()

filtered_lines = [line for line in lines if "pineapple" not in line]

with open("out.txt", "w") as out_file:
    out_file.writelines(filtered_lines)

