#!/bin/bash

set -x

echo Cloning submodules
vcsh foreach submodule update --recursive --init

# Configure oh-my-fish if fish is installed
if which fish > /dev/null ; then
	echo Installing oh-my-fish
	( cd ~/.local/omf/ && ./bin/install --offline )
	fish -c "fish_vi_key_bindings"
fi
