require "fbtorch"
require "cunn"
require "cutorch"
require "nngraph"
local params=torch.reload("./parse")
cutorch.setDevice(params.gpu_index)
model=torch.reload("./model")
model:Initial(params)
model:train()
