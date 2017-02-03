#!/usr/bin/env bash

mkdir ./volumes
mkdir ./values

if [ -n "$1" ]; then
    mkdir ./volumes/$1
    mkdir ./values/$1
fi