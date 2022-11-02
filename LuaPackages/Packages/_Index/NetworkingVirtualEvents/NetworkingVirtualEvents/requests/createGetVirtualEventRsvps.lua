local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local constants = require(NetworkingVirtualEvents.constants)

type Query = {
	cursor: string,
	limit: number?,
	reverse: boolean?,
}

return function(roduxNetworking)
	local GetVirtualEventRsvps = roduxNetworking.GET(script, function(requestBuilder, eventId: number, query: Query?)
		local request = requestBuilder(constants.API_URL)
			:path("virtual-events")
			:path("v1")
			:path("virtual-events")
			:id(eventId)
			:path("rsvps")

		if query then
			request = request:queryArgs(query)
		end

		return request
	end)

	return GetVirtualEventRsvps
end
