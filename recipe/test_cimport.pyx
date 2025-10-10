# distutils: language=c++
# distutils: extra_compile_args = -std=c++17

from cuda.ccuda cimport CUresult
from cuda.ccudart cimport cudaError_t
from cuda.cnvrtc cimport nvrtcResult

def test():
    print("ok:", <CUresult>0, <cudaError_t>0, <nvrtcResult>0)
