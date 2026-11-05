set "CUDA_HOME=%PREFIX%\\%SUBDIR%"
set "LIB=%PREFIX%\\%SUBDIR%\\lib\\%TARGET_NAME%;%LIB%"

set DIR_NAME=%PKG_NAME:-=_%
if "%PKG_NAME%"=="cuda-bindings" set DIR_NAME=cuda_bindings_13
cd %DIR_NAME%
set SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%
%PYTHON% -m pip install . --no-deps -vv
