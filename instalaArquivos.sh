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

echo "Repository do MongoDB"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list

echo "Adicionando thema para o Gnome"
add-apt-repository -y ppa:tiagosh/diolinux-paper-orange

echo "PPA emacs"
apt-add-repository -y ppa:adrozdoff/emacs

apt-get update

echo "Instalando o diolinux-paper-orange"

apt install -y diolinux-paper-orange

echo "eMacs"
apt install -y emacs25 ess
apt-get install -y emacs-goodies-el

echo "Instalador do git"

apt-get install -y git

git config --global user.email "guilhermehathy@hotmail.com"
git config --global user.name "Guilherme Hathy"

echo "Instalador do mongoDB"
apt-get install -y mongodb-org

echo "
[Unit]
Description=High-performance, schema-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target
" >> /etc/systemd/system/mongodb.service

echo "habilitar o MongoDB para iniciar quando o sistema inicializar."
systemctl enable mongodb

echo "Instalador do pip3 e pacotes usados"
apt-get install -y  build-essential libssl-dev libffi-dev python-dev
apt install -y libmysqlclient-dev
apt-get install -y python3-pip

pip3 install --upgrade pip
pip3 install -U  scrapy-splash
pip3 install -U  zope.interface
pip3 install -U  youtube-dl
pip3 install -U  XlsxWriter
pip3 install -U  wrapt
pip3 install -U  widgetsnbextension
pip3 install -U  wheel
pip3 install -U  websocket-client
pip3 install -U  webencodings
pip3 install -U  wcwidth
pip3 install -U  watson-developer-cloud
pip3 install -U  w3lib
pip3 install -U  virtualenv
pip3 install -U  urllib3
pip3 install -U  untangle
pip3 install -U  Unidecode
pip3 install -U  Twisted
pip3 install -U  traitlets
pip3 install -U  tqdm
pip3 install -U  tornado
pip3 install -U  testpath
pip3 install -U  terminado
pip3 install -U  tables
pip3 install -U  sshtunnel
pip3 install -U  ssh-import-id
pip3 install -U  SQLAlchemy
pip3 install -U  spyder
pip3 install -U  sphinxcontrib-websupport
pip3 install -U  Sphinx
pip3 install -U  sphinx-rtd-theme
pip3 install -U  SpeechRecognition
pip3 install -U  snowballstemmer
pip3 install -U  sklearn
pip3 install -U  six
pip3 install -U  simplegeneric
pip3 install -U  setuptools
pip3 install -U  service-identity
pip3 install -U  selenium
pip3 install -U  Scrapy
pip3 install -U  scipy
pip3 install -U  scikit-learn
pip3 install -U  rope
pip3 install -U  requests
pip3 install -U  reportlab
pip3 install -U  queuelib
pip3 install -U  QtPy
pip3 install -U  qtconsole
pip3 install -U  QtAwesome
pip3 install -U  pyzmq
pip3 install -U  pytz
pip3 install -U  python-debian
pip3 install -U  python-dateutil
pip3 install -U  pysolr
pip3 install -U  pyparsing
pip3 install -U  pyOpenSSL
pip3 install -U  PyOpenGL
pip3 install -U  PyNaCl
pip3 install -U  PyMySQL
pip3 install -U  pymongo
pip3 install -U  PyMeta3
pip3 install -U  pylint
pip3 install -U  PyJWT
pip3 install -U  PyICU
pip3 install -U  Pygments
pip3 install -U  pyflakes
pip3 install -U  pydub
pip3 install -U  PyDispatcher
pip3 install -U  pycparser
pip3 install -U  pycodestyle
pip3 install -U  pycld2
pip3 install -U  pybars3
pip3 install -U  pyasn1
pip3 install -U  pyasn1-modules
pip3 install -U  ptyprocess
pip3 install -U  psutil
pip3 install -U  prompt-toolkit
pip3 install -U  prettytable
pip3 install -U  polyglot
pip3 install -U  plainbox
pip3 install -U  pip
pip3 install -U  Pillow
pip3 install -U  pika
pip3 install -U  pickleshare
pip3 install -U  pexpect
pip3 install -U  pep8
pip3 install -U  parso
pip3 install -U  parsel
pip3 install -U  paramiko
pip3 install -U  pandocfilters
pip3 install -U  pandas
pip3 install -U  olefile
pip3 install -U  oauthlib
pip3 install -U  numpydoc
pip3 install -U  numpy
pip3 install -U  numexpr
pip3 install -U  notebook
pip3 install -U  nltk
pip3 install -U  nbformat
pip3 install -U  nbconvert
pip3 install -U  mysqlclient
pip3 install -U  moviepy
pip3 install -U  Morfessor
pip3 install -U  mistune
pip3 install -U  mccabe
pip3 install -U  matplotlib
pip3 install -U  MarkupSafe
pip3 install -U  Mako
pip3 install -U  lxml
pip3 install -U  lazy-object-proxy
pip3 install -U  jupyter
pip3 install -U  jupyter-core
pip3 install -U  jupyter-console
pip3 install -U  jupyter-client
pip3 install -U  jsonschema
pip3 install -U  Jinja2
pip3 install -U  jedi
pip3 install -U  isort
pip3 install -U  ipywidgets
pip3 install -U  ipython
pip3 install -U  ipython-genutils
pip3 install -U  ipykernel
pip3 install -U  incremental
pip3 install -U  importmagic
pip3 install -U  imagesize
pip3 install -U  imageio
pip3 install -U  idna
pip3 install -U  hyperlink
pip3 install -U  httplib2
pip3 install -U  html5lib
pip3 install -U  Ghost.py
pip3 install -U  flake8
pip3 install -U  feedparser
pip3 install -U  entrypoints
pip3 install -U  docutils
pip3 install -U  docker
pip3 install -U  docker-pycreds
pip3 install -U  decorator
pip3 install -U  db.py
pip3 install -U  db
pip3 install -U  cycler
pip3 install -U  cssselect
pip3 install -U  cryptography
pip3 install -U  constantly
pip3 install -U  configparser
pip3 install -U  checkbox-support
pip3 install -U  chardet
pip3 install -U  cffi
pip3 install -U  certifi
pip3 install -U  blinker
pip3 install -U  bleach
pip3 install -U  beautifulsoup4
pip3 install -U  bcrypt
pip3 install -U  Babel
pip3 install -U  autopep8
pip3 install -U  Automat
pip3 install -U  attrs
pip3 install -U  astroid
pip3 install -U  asn1crypto
pip3 install -U  antiorm
pip3 install -U  alabaster
pip3 install -U  xkit
pip3 install -U  xdiagnose
pip3 install -U  usb-creator
pip3 install -U  unity-scope-zotero
pip3 install -U  unity-scope-yelp
pip3 install -U  unity-scope-virtualbox
pip3 install -U  unity-scope-tomboy
pip3 install -U  unity-scope-texdoc
pip3 install -U  unity-scope-openclipart
pip3 install -U  unity-scope-manpages
pip3 install -U  unity-scope-gdrive
pip3 install -U  unity-scope-firefoxbookmarks
pip3 install -U  unity-scope-devhelp
pip3 install -U  unity-scope-colourlovers
pip3 install -U  unity-scope-chromiumbookmarks
pip3 install -U  unity-scope-calculator
pip3 install -U  unattended-upgrades
pip3 install -U  ufw
pip3 install -U  ubuntu-drivers-common
pip3 install -U  system-service
pip3 install -U  sessioninstaller
pip3 install -U  roman
pip3 install -U  pyxdg
pip3 install -U  python-systemd
pip3 install -U  python-apt
pip3 install -U  pygobject
pip3 install -U  pycurl
pip3 install -U  pycups
pip3 install -U  padme
pip3 install -U  onboard
pip3 install -U  louis
pip3 install -U  language-selector
pip3 install -U  guacamole
pip3 install -U  defer
pip3 install -U  command-not-found
pip3 install -U  chrome-gnome-shell
pip3 install -U  Brlapi
pip3 install -U  apturl


echo "Instalador SublimeText"

apt-get install -y sublime-text
cp -r sublime-text-3 /home/$(whoami)/.config

echo "Instalador guake"

apt-get install -y guake

echo "Instalador Spotify"

apt-get install -y spotify-client


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

echo"instalando o Google Chrome Stable"
apt-get install -y gdebi 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi google-chrome-stable_current_amd64.deb 

echo "Finalizando aplicação"
apt-get update

apt-get -y upgrade

echo "Acabou"
