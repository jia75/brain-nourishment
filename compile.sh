#!/bin/sh

if [ $# == 0 ]
then
    echo "fatal: not enough arguments ($# supplied)" >&2
    exit 1
fi

./compile $@

cc out.c -o bf.out
