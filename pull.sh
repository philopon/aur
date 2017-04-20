#!/usr/bin/bash -e

while read repo; do
    git subtree pull --prefix=$repo --squash https://aur.archlinux.org/$repo.git master
done < subtree
