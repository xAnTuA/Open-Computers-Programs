local args = {...}
if not args[1] then print("Component not specified") return end

local comp = require("component")
local targetComp = assert(comp[args[1]],"component not found")

for methodName, value in pairs(comp.methods(targetComp.address)) do
	print(value,":",methodName)
end
