local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)

return function(roduxNetworking)
	local GetVirtualEventRsvpCounts = roduxNetworking.GET(script, function(requestBuilder, virtualEventId: string)
		return requestBuilder(Http.Url.APIS_URL)
			:path("virtual-events")
			:path("v1")
			:path("virtual-events")
			:id(virtualEventId)
			:path("rsvps")
			:path("counters")
	end)

	return GetVirtualEventRsvpCounts
end
