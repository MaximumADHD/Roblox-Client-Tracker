local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)

return function(roduxNetworking)
	local GetVirtualEvent = roduxNetworking.GET(script, function(requestBuilder)
		return requestBuilder(Http.Url.APIS_URL)
			:path("virtual-events")
			:path("v1")
			:path("virtual-events")
			:path("my-events")
	end)

	return GetVirtualEvent
end
