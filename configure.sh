#!/bin/bash

ZOOKEEPR_REPO=${ZOOKEEPR_REPO:-git@github.com:jamezpolley/zookeepr.git}

mkdir -p src
if [ ! -e src/zookeepr ]; then
    git clone git@github.com:jamezpolley/zookeepr.git src/zookeepr
fi
