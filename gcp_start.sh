#!/bin/bash
apt-get update
apt-get install -fy python-setuptools build-essential python-dev python-pip
pip install flask psutil
wget https://gist.githubusercontent.com/serjs/d217e34b807e2112c6ad393304f079eb/raw/dd42e769910e753e97bed89d373f1c7491c6d95e/gistfile1.txt -O app.py
FLASK_APP=app.py flask run --host=0.0.0.0 --port=80
