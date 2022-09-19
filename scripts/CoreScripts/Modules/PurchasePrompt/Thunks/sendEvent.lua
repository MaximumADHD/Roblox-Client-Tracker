--!nonstrict
local Root = script.Parent.Parent

local Analytics = require(Root.Services.Analytics)
local Thunk = require(Root.Thunk)

local requiredServices = {
	Analytics,
}

local function sendEvent(name, data)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		analytics.signalEvent(name, data)
	end)
end

return sendEvent
