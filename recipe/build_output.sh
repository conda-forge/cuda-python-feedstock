#!/bin/bash

export CUDA_HOME="${PREFIX}/${SUBDIR}"

DIR_NAME="$(echo $PKG_NAME | tr '-' '_')"
cd $DIR_NAME
export SETUPTOOLS_SCM_PRETEND_VERSION=${PKG_VERSION}
$PYTHON -m pip install . --no-deps -vv
