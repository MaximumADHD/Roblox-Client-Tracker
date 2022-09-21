local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local constants = require(NetworkingVirtualEvents.constants)
local types = require(NetworkingVirtualEvents.types)

return function(roduxNetworking)
	local UpdateVirtualEvent = roduxNetworking.POST(
		script,
		function(requestBuilder, eventId: number, payload: types.UpdateVirtualEventRequest)
			return requestBuilder(constants.API_URL):path("v1"):path("virtual-events"):id(eventId):body({
				title = payload.title,
				description = payload.description,
				eventTime = {
					startTime = payload.eventTime.startTime:ToIsoDate(),
					endTime = payload.eventTime.endTime:ToIsoDate(),
				},
				universeId = payload.universeId,
			})
		end
	)

	return UpdateVirtualEvent
end
