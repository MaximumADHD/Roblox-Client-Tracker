local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Rodux = require(VirtualEvents.Parent.Rodux)
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking

local function installReducer()
	return Rodux.combineReducers({
		networkStatus = RoduxNetworking.installReducer(),
		events = require(VirtualEvents.Reducers.events),
		legacy = require(VirtualEvents.Reducers.legacy),
		media = require(VirtualEvents.Reducers.media),
		experienceDetails = require(VirtualEvents.Reducers.experienceDetails),
		rsvps = require(VirtualEvents.Reducers.rsvps),
	})
end

return installReducer
