local reactorPattern = {
	coolantsSameType = false,
	rodsSameType = false,
	pattern = {}
}

function reactorPattern:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o -- new instance		
end

function reactorPattern:GetCoolantPositions()

end

function reactorPattern:GetCoolantCalculatedLife()
end

return reactorPattern
