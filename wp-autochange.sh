#!/bin/bash

script_dir=$(dirname $(readlink -f $0))

while true; do
    feh --recursive --randomize --bg-fill ~/Pictures/wallpapers
    sleep 5m
done
