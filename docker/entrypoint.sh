#!/bin/bash
set -e

export DATA_DIR=~/data
export DC_DATA_DIR=$DATA_DIR/pdc
export DC_SOURCE_DIR=~/code
export PDC_BUILD_DIR=$DC_SOURCE_DIR/build
export POSER_BUILD_DIR=$PDC_BUILD_DIR/poser


function use_pytorch_dense_correspondence()
{
    source $DC_SOURCE_DIR/config/setup_environment.sh
    echo "using pdc"
}

export -f use_pytorch_dense_correspondence

use_director(){
    export PATH=$PATH:~/director/bin
}

export -f use_director

activate_pytorch_virtualenv(){
    source ~/venv_pytorch_1_0/bin/activate
}

export -f activate_pytorch_virtualenv

exec "$@"

cd $DC_SOURCE_DIR
