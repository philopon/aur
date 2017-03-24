#!/usr/bin/bash

mkdir -p repo

REPO_NAME=home

[[ -e config.sh ]] && source config.sh

for pkg in */*.pkg.tar.xz; do
	if [[ `dirname $pkg` == "repo" ]]; then
		continue
	fi
	echo $pkg
	cp $pkg repo
done

cd repo
repo-add $REPO_NAME.db.tar.xz *.pkg.tar.xz
