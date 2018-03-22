#!/bin/sh

mkdir -p xmrig-proxy/build

cd xmrig-proxy/build

cmake ..

make

cd ../..
