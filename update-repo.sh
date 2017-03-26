#!/usr/bin/bash

mkdir -p repo

REPO_NAME=home

[[ -e config.sh ]] && source config.sh

rsync -avu --exclude "repo/*" */*.pkg.tar.xz repo

cd repo
repo-add "$@" $REPO_NAME.db.tar.xz *.pkg.tar.xz
