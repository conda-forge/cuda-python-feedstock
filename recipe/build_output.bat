set "CUDA_HOME=%PREFIX%\\%SUBDIR%"
set "LIB=%PREFIX%\\%SUBDIR%\\lib\\%TARGET_NAME%;%LIB%"

set DIR_NAME=%PKG_NAME:-=_%
if "%PKG_NAME%"=="cuda-bindings" (
  set DIR_NAME=cuda_bindings_12
  rem The CUDA 12 backend needs the shared helper even if the archive link is unavailable.
  "%PYTHON%" -c "from pathlib import Path; from shutil import copyfile; target = Path('cuda_bindings_12/_build_shared.py'); target.unlink(missing_ok=True); copyfile('cuda_bindings_13/_build_shared.py', target)"
  if errorlevel 1 exit /b 1
)
cd "%DIR_NAME%" || exit /b 1
set "SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%"
"%PYTHON%" -m pip install . --no-deps -vv
