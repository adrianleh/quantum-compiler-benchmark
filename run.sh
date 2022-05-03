#/bin/bash
jupyter nbconvert --to script Benchmark.ipynb
python3 Benchmark.py