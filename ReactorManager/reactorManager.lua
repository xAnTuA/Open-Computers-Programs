local comp = require("component")
local config = require("config")

local reactorManager = {
	status = false
}

function reactorManager:init()
	print("Initializing Reactor Manager...")
	-- if config.useCache then loadCached() end
	self:createGroups()
end

function reactorManager:createGroups()
	local transposers = comp.list("transposer",true)
	-- create grup for each, next use each of transposer to get the info about reactors
end

function reactorManager:handleTick()

end

return reactorManager
