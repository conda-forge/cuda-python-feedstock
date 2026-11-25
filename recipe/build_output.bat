set "CUDA_HOME=%PREFIX%\\%SUBDIR%"
set "LIB=%PREFIX%\\%SUBDIR%\\lib\\%TARGET_NAME%;%LIB%"

set DIR_NAME=%PKG_NAME:-=_%
if "%PKG_NAME%"=="cuda-bindings" set DIR_NAME=cuda_bindings_12
cd "%DIR_NAME%" || exit /b 1
set "SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%"
"%PYTHON%" -m pip install . --no-deps -vv
