#!/bin/bash

_DIR=$(realpath "$0")
_DIR=$(dirname "$_DIR")
pushd "$_DIR" || exit 3

ansible-playbook -b --inventory ./hosts \
	-vv server-setup.yml

popd > /dev/null || echo ""
