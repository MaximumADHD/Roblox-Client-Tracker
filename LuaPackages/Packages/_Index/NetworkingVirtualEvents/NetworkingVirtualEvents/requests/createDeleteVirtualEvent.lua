local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local constants = require(NetworkingVirtualEvents.constants)

return function(roduxNetworking)
	local DeleteVirtualEvent = roduxNetworking.POST(script, function(requestBuilder, virtualEventId: string)
		return requestBuilder(constants.API_URL)
			:path("virtual-events")
			:path("v1")
			:path("virtual-events")
			:id(virtualEventId)
	end)

	return DeleteVirtualEvent
end
