local action = {}
local config = require("config")

function action.ChangeCoolant(reactor,invSlot)
	reactor.transposer.transferItem(reactor.transposerSide,config.sysTransposerSide )
end

function action.InsertItem(reactor.invSlot)

end

function action.EmptySlot(reactor,invSlot)
	reactor.transposer.address
end
