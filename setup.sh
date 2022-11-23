#!/bin/bash

python=$(which python3.6)
echo $python

if [ -z $python ]; then
  echo "python3.6 not found"
  exit -1
fi

$($python -m venv ~/.flask-ml-azure)
source ~/.flask-ml-azure/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

python app.py

