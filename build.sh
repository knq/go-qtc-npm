#!/bin/bash

set -ex

PACKAGE=github.com/valyala/quicktemplate/qtc

go get -u $PACKAGE

for PLATFORM in linux darwin; do
  GOOS=$PLATFORM GOARCH=amd64 go build -o vendor/go-qtc-$PLATFORM $PACKAGE
done
