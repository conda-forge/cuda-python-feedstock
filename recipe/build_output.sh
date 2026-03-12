#!/bin/bash

DIR_NAME="$(echo $PKG_NAME | tr '-' '_')"
cd $DIR_NAME
if [[ ${DIR_NAME} == "cuda_python" ]]; then
  # Release archives do not contain .git metadata; provide the exact version to not choke setuptools-scm
  export SETUPTOOLS_SCM_PRETEND_VERSION_FOR_CUDA_PYTHON=${PKG_VERSION}
fi
$PYTHON -m pip install . --no-deps -vv
