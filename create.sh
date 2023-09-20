#!/bin/bash

module add gcc-12.1.0
module add Python/gcc/3.10.10/gcc-12.1.0

DIR=$HOME/pyenv

if [[ $# -gt 0 ]]; then 
    DIR=$1
fi

if [[ -d $DIR ]]; then
    echo "$DIR already exists, pick a different directory."
    exit 1
fi

echo "Building $DIR"
python3 -m venv $DIR

source $DIR/bin/activate

pip install --upgrade pip
pip install -r requirements

echo "Now do 'source $DIR/bin/activate'"
