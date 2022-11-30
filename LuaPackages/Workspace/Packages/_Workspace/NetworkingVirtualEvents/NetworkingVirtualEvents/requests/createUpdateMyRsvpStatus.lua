local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)
local types = require(NetworkingVirtualEvents.types)

return function(roduxNetworking)
	local UpdateMyRsvpStatus = roduxNetworking.POST(
		script,
		function(requestBuilder, virtualEventId: string, rsvpStatus: types.RsvpStatus)
			local request = requestBuilder(Http.Url.APIS_URL)
				:path("virtual-events")
				:path("v1")
				:path("virtual-events")
				:id(virtualEventId)
				:path("rsvps")
				:body({
					rsvpStatus = rsvpStatus,
				})

			return request
		end
	)

	return UpdateMyRsvpStatus
end
