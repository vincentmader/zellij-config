#!/bin/sh

layout="mxyz"
path=$(dirname "$(realpath $0)")
path="$path/../zellij-config/layouts/$layout.kdl"

zellij --layout "$path"
