#!/usr/bin/env bash
set -e
set -x

mkdir -p tmp
echo barcode | gzip > tmp/barcode.gz
echo bazar | gzip > tmp/bazar.gz

cargo run -- ./tmp/barcode.gz ./tmp/bazar.gz


echo barcode > ./tmp/barcode
echo bazar > ./tmp/bazar

cargo run -- ./tmp/barcode ./tmp/bazar
