local transposer = {
	address = false
}

function transposer:new(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

function transposer:GetSides()
	-- get all sides / check the name of them and assign what it is 
end

return transposer
