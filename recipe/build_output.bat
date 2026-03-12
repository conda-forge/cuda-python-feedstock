set DIR_NAME=%PKG_NAME:-=_%
cd %DIR_NAME%
if "%DIR_NAME%"=="cuda_python" (
  rem The upstream setup.py calls get_version() without dist_name,
  rem so only the generic SETUPTOOLS_SCM_PRETEND_VERSION is honored.
  set SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%
)
if "%DIR_NAME%"=="cuda_bindings" (
  rem The upstream setup.py calls get_version() without dist_name,
  rem so only the generic SETUPTOOLS_SCM_PRETEND_VERSION is honored.
  set SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%
)
%PYTHON% -m pip install . --no-deps -vv
