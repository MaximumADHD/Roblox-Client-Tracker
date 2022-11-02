local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local constants = require(NetworkingVirtualEvents.constants)

return function(roduxNetworking)
	local GetVirtualEvent = roduxNetworking.GET(script, function(requestBuilder, eventId: number)
		return requestBuilder(constants.API_URL):path("virtual-events"):path("v1"):path("virtual-events"):id(eventId)
	end)

	return GetVirtualEvent
end
