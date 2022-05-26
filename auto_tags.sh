#!/bin/bash

V1= $(git tag --list | awk -F . '{print $1}' | sort -n | uniq)
git tag --list | grep "^$V1" > /tmp/out1

V2= $(cat /tmp/out1 | awk -F . '{print $2}' | sort -n | uniq)
cat /tmp/out1 | grep "^$V1\.$V2.*" > /tmp/out2

V3= $(cat /tmp/out2 | awk -F . '{print $3}' | sort -n | uniq)
echo "$V1.$V2.$V3"


