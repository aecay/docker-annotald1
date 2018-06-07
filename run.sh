#!/bin/sh

rm -r build
mkdir build
cd build

wget "https://files.pythonhosted.org/packages/50/9e/39418026bf8013bbc2852c7aec3fb21e4339f6cd694934496d67a19b53b8/nltk-2.0.5.tar.gz#sha256=590b1752fb39427ad8018a65f72355c22e8276d476699aa4a488e38c1b17889a"

tar xzf nltk-2.0.5.tar.gz

cd nltk-2.0.5

patch -p1 < ../../nltk.patch

cd ..

cp ../Dockerfile .

sudo docker build -t aecay/annotald1 .
