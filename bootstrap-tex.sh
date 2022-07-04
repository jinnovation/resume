#!/usr/bin/env bash

set -exio pipefail

sudo tlmgr update --self;

pkgs=(
    enumitem
    environ
    fontawesome5
    fontawesome
    fontspec
    luainputenc
    preprint
    tcolorbox
    titlesec
);

for pkg in ${pkgs[@]}
do
    echo $pkg
done

