local event = require("event")
local reactorManager = require("reactorManager")
local config = require("config")

local program = {
	activeEvents = {}
}

function program:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function program:handleRedstoneChange(a,b,c,redstoneStrengh)
	if(redstoneStrengh == 15) then reactorManager:handleTick() end
end

function program:handleUserInput(input)
	if not input then return false end
	print(input)
	return true
end

function program:main()
	print("Reactor Manager has started")
	self.activeEvents["redstone_changed"] = event.listen("redstone_changed",self.handleRedstoneChange)

	while true do
		io.write("Reactor Manager > ")
		if not program:handleUserInput(io.read()) then
			print("Send interupt signal")
			break
		end
	end
end


function program:onClose(success, result)
	if not success then
		config.errorCallback(result)
	end

	print("Reactor Manager is closing")

	print("Unbinding events...")
	for _, id in pairs(self.activeEvents) do
		event.cancel(id)
	end

	print("Turning off reactors...")
	if reactorManager.emergencyShutdown() then
		print("Successfuly closed")
	else
		print("Failed to turn off reactors")
	end
end

function program:init()
	self:onClose(pcall(self.main,self))
end

return program
