#!/bin/bash

echo "Iniciando o Instalador"

apt-get update

apt-get -y upgrade


echo "Instalador do pip3 e pacotes usados"

apt-get install -y python3-pip

pip3 install --upgrade pip
pip3 install jupyter
pip3 install nltk
pip3 install nltk.metrics
pip3 install pandas as pd
pip3 install numpy as np
pip3 install sklearn.model_selection
pip3 install re
pip3 install string
pip3 install scrapy
pip3 install hashlib
pip3 install datetime
pip3 install datetime
pip3 install requests
pip3 install os
pip3 install scrapy_splash
pip3 install json
pip3 install youtube_dl
pip3 install scrapy.http
pip3 install bs4
pip3 install glob
pip3 install logging
pip3 install logging.handlers
pip3 install subprocess
pip3 install db.py
pip3 install time pip3 