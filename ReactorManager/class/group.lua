local transposer = require("transposer")

local group = {
	transposer = false,
	reactors = {}
}

function group:new(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

function group:getTotalEnergyOutput()

end

return group
