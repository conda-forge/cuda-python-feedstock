#!/bin/bash

export CUDA_HOME="${PREFIX}/${SUBDIR}"

DIR_NAME="$(echo $PKG_NAME | tr '-' '_')"
if [ "$PKG_NAME" = "cuda-bindings" ]; then
    DIR_NAME=cuda_bindings_13
fi
cd $DIR_NAME
export SETUPTOOLS_SCM_PRETEND_VERSION=${PKG_VERSION}
$PYTHON -m pip install . --no-deps -vv
