local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)

return function(roduxNetworking)
	local DeleteVirtualEvent = roduxNetworking.POST(script, function(requestBuilder, virtualEventId: string)
		return requestBuilder(Http.Url.APIS_URL)
			:path("virtual-events")
			:path("v1")
			:path("virtual-events")
			:id(virtualEventId)
	end)

	return DeleteVirtualEvent
end
