#!/bin/bash

ZOOKEEPR_REPO=${ZOOKEEPR_REPO:-git@github.com:jamezpolley/zookeepr.git}
PIL_SRC=${PIL_SRC:-http://effbot.org/downloads/Imaging-1.1.7.tar.gz}

mkdir -p src
if [ ! -e src/zookeepr ]; then
    git clone git@github.com:jamezpolley/zookeepr.git src/zookeepr
fi

if [ ! -e src/Imaging-1.1.7.tar.gz ]; then
    pushd src
    curl -L -O http://effbot.org/downloads/Imaging-1.1.7.tar.gz
    popd
fi

virtualenv .
source bin/activate && pip install -r requirements.txt

