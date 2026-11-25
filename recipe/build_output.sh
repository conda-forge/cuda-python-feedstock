#!/bin/bash

export CUDA_HOME="${PREFIX}/${SUBDIR}"

DIR_NAME="${PKG_NAME//-/_}"
if [[ "$PKG_NAME" == "cuda-bindings" ]]; then
    DIR_NAME=cuda_bindings_12
fi
cd "$DIR_NAME" || exit 1
export SETUPTOOLS_SCM_PRETEND_VERSION="$PKG_VERSION"
"$PYTHON" -m pip install . --no-deps -vv
