#!/usr/bin/env bash

cd "$(dirname "$(realpath "$0")")" || exit 9

./ansible-proot.sh "ansible -i inventory.yml host $*"
