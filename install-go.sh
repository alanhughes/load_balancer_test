#!/bin/sh
GOPATH=/home/vagrant/work
mkdir -p $GOPATH/src/app
cp /vagrant/hello.go $GOPATH/src/app
go install app
$GOPATH/bin/app
