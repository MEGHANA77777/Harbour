#!/bin/bash
set -e

curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="/root/.local/bin:$PATH"

mkdir -p /logs/verifier

uvx pytest /task/tests/test_outputs.py -v --tb=short --ctrf --ctrf-output-file=/logs/verifier/ctrf.json

exit $?
