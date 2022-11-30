local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)

type Query = {
	cursor: string?,
	limit: number?,
	reverse: boolean?,
}

return function(roduxNetworking)
	local GetVirtualEventRsvps = roduxNetworking.GET(
		script,
		function(requestBuilder, virtualEventId: string, query: Query?)
			local request = requestBuilder(Http.Url.APIS_URL)
				:path("virtual-events")
				:path("v1")
				:path("virtual-events")
				:id(virtualEventId)
				:path("rsvps")

			if query then
				request = request:queryArgs(query)
			end

			return request
		end
	)

	return GetVirtualEventRsvps
end
