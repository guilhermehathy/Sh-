#!/bin/bash

echo "Iniciando o Instalador"

apt-get update

apt-get -y upgrade


echo "Adicionando links"

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

add-apt-repository -y ppa:nicola-onorata/desktop

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

add-apt-repository -y ppa:ondrej/php

apt-get update

echo "Instalador do git"

apt-get install -y git

git config --global user.email "guilhermehathy@hotmail.com"
git config --global user.name "Guilherme Hathy"


echo "Instalador do pip3 e pacotes usados"
apt-get install -y  build-essential libssl-dev libffi-dev python-dev
apt install -y libmysqlclient-dev
apt-get install -y python3-pip

pip3 install --upgrade pip
pip3 install -U pystan
pip3 install -U jupyter
pip3 install -U nltk
pip3 install -U pandas
pip3 install -U numpy
pip3 install -U scikit-learn
pip3 install -U request
pip3 install -U scrapy
pip3 install -U hashlib
pip3 install -U datetime
pip3 install -U requests
pip3 install -U os
pip3 install -U scrapy_splash
pip3 install -U json
pip3 install -U youtube_dl
pip3 install -U bs4
pip3 install -U glob
pip3 install -U logging
pip3 install -U subprocess
pip3 install -U db.py
pip3 install -U time
pip install -U scikit-neuralnetwork


echo "Instalador SublimeText"

apt-get install -y sublime-text
cp -r sublime-text-3 /home/$(whoami)/.config

echo "Instalador guake"

apt-get install -y guake

echo "Instalador Spotify"

apt-get install -y spotify-client


echo "Repositorios Git"

cd ~/

git clone https://github.com/guilhermehathy/guilhermehathy.github.io.git
git clone https://github.com/guilhermehathy/Pesquisa.git
git clone https://gitlab.c3sl.ufpr.br/pet-estatistica/apostila-R.git
git clone https://github.com/guilhermehathy/Machine-Learning.git

echo "Instalador vlc"

apt-get install -y vlc


echo "Instalador R"

apt-get install -y r-base

echo "precisa para instalar o devtools"
apt-get install -y  libcurl4-openssl-dev libssl-dev

echo "Precisa para instalar o pacote pdfTools"
apt-get install -y libpoppler-cpp-dev

echo "instalador Rjava"
apt-get install -y r-cran-rjava


echo "Instalando PHP"

apt-get install -y libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-json php-memcached php7.0-dev php7.0-mcrypt php7.0-sqlite3 php7.0-mbstring

echo"Instalando Latex"
apt-get install -y texlive texlive-latex-extra texlive-lang-portuguese

echo "Finalizando aplicação"
apt-get update

apt-get -y upgrade

echo "Acabou"
