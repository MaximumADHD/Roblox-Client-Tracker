local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local constants = require(NetworkingVirtualEvents.constants)

return function(roduxNetworking)
	local GetVirtualEvent = roduxNetworking.GET(script, function(requestBuilder)
		return requestBuilder(constants.API_URL):path("v1"):path("virtual-events"):path("my-events")
	end)

	return GetVirtualEvent
end
