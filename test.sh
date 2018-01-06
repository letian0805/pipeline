#!/bin/sh
dir=$(dirname $0)
cd $dir

rm -rf test.log

go test -bench="." tests/* | tee test.log
