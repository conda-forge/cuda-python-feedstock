set "CUDA_HOME=%PREFIX%\\%SUBDIR%"
set "LIB=%PREFIX%\\%SUBDIR%\\lib\\%target_name%;%LIB%"

set DIR_NAME=%PKG_NAME:-=_%
cd %DIR_NAME%
IF "%DIR_NAME%"=="cuda_bindings" (
  REM The upstream setup.py calls get_version() without dist_name
  REM so only the generic SETUPTOOLS_SCM_PRETEND_VERSION is honored.
  set SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%
)
%PYTHON% -m pip install . --no-deps -vv
