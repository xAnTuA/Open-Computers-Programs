local reactor = {
	redstoneFrequency = false, -- 4xxy where xx is transposer number and y is a transposer side
	status = false,
	mode = "smart",
	pattern = false
}

function reactor:new(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

return reactor
