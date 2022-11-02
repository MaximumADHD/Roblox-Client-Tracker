local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local constants = require(NetworkingVirtualEvents.constants)
local types = require(NetworkingVirtualEvents.types)

return function(roduxNetworking)
	local UpdateVirtualEvent = roduxNetworking.POST(
		script,
		function(requestBuilder, eventId: number, payload: types.UpdateVirtualEventRequest)
			local eventTime = payload.eventTime

			return requestBuilder(constants.API_URL)
				:path("virtual-events")
				:path("v1")
				:path("virtual-events")
				:id(eventId)
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
