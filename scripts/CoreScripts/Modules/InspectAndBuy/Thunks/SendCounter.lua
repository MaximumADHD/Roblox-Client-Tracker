local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)

local requiredServices = {
	Analytics,
}

--[[
	Reports counters analytics
]]
local function SendCounter(counterName)
	return Thunk.new(script.Name, requiredServices, function(_store, services)
		local analytics = services[Analytics]

		analytics.sendCounter(counterName)
	end)
end

return SendCounter