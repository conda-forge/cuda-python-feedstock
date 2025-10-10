# distutils: language=c++
# distutils: extra_compile_args = -std=c++17

from cuda.bindings.cydriver cimport CUresult
from cuda.bindings.cyruntime cimport cudaError_t
from cuda.bindings.cynvrtc cimport nvrtcResult

def test():
    print("ok:", <CUresult>0, <cudaError_t>0, <nvrtcResult>0)
