local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)
local types = require(NetworkingVirtualEvents.types)

return function(roduxNetworking)
	local UpdateVirtualEvent = roduxNetworking.POST(
		script,
		function(requestBuilder, virtualEventId: string, payload: types.UpdateVirtualEventRequest)
			local eventTime = payload.eventTime

			return requestBuilder(Http.Url.APIS_URL)
				:path("virtual-events")
				:path("v1")
				:path("virtual-events")
				:id(virtualEventId)
				:body({
					title = payload.title,
					description = payload.description,
					eventTime = if eventTime
						then {
							startTime = eventTime.startTime:ToIsoDate(),
							endTime = eventTime.endTime:ToIsoDate(),
						}
						else nil,
					universeId = payload.universeId,
				})
		end
	)

	return UpdateVirtualEvent
end
