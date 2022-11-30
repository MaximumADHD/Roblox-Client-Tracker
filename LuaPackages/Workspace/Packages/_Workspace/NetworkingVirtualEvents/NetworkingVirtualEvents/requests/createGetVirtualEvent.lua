local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)

return function(roduxNetworking)
	local GetVirtualEvent = roduxNetworking.GET(script, function(requestBuilder, virtualEventId: string)
		return requestBuilder(Http.Url.APIS_URL)
			:path("virtual-events")
			:path("v1")
			:path("virtual-events")
			:id(virtualEventId)
	end)

	return GetVirtualEvent
end
