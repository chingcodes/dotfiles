#!/bin/bash

set -x

if [ ! -z "$VCSH_REPO_NAME" ]; then
	echo Make sure you are in a vcsh configured shell
	exit 1
fi

echo Cloning submodules
git submodule update --recursive --init


# Configure oh-my-fish if fish is installed
if which fish > /dev/null ; then
	echo Installing oh-my-fish
	( cd ~/.local/omf/ && ./bin/install --offline )
	fish -c "fish_vi_key_bindings"
fi
