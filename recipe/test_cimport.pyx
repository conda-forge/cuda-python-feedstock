from cuda.bindings.driver cimport CUresult
from cuda.bindings.runtime cimport cudaError_t
from cuda.bindings.nvrtc cimport nvrtcResult

def test():
    print("ok:", <CUresult>0, <cudaError_t>0, <nvrtcResult>0)
