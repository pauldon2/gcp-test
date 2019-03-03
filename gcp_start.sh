#!/bin/bash
apt-get update
apt-get install -fy python-setuptools build-essential python-dev python-pip
pip install flask psutil
wget https://raw.githubusercontent.com/pauldon2/gcp-test/master/start_test_serv.py -O app.py
FLASK_APP=app.py flask run --host=0.0.0.0 --port=80
