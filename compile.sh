#!/bin/sh

if [ $# == 0 ]
then
    echo "fatal: not enough arguments ($# supplied)" >&2
    exit 1
fi

cat "$1" | ./compile > out.c

cc out.c -o bf.out
