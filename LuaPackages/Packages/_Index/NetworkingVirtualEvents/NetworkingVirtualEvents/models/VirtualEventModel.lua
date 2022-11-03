local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local types = require(NetworkingVirtualEvents.types)

local VirtualEventModel = {}

function VirtualEventModel.mock(id: string): types.VirtualEvent
	local now = DateTime.now()

	return {
		id = id,
		title = "Event Name",
		description = "Event description goes here...",
		host = {
			hostType = "user",
			hostId = 1,
			hostName = "Roblox",
			hasVerifiedBadge = true,
		},
		eventTime = {
			startTime = now,
			endTime = DateTime.fromUnixTimestamp(now.UnixTimestamp + 24 * 60 * 60),
		},
		universeId = 3531439676,
		eventStatus = "active",
		createdTime = now,
		updatedTime = now,
		userRsvpStatus = "none",
	}
end

function VirtualEventModel.fromResponse(response: types.VirtualEventResponse): types.VirtualEvent
	return {
		id = response.id,
		title = response.title,
		description = response.description,
		host = response.host,
		eventTime = {
			startTime = DateTime.fromIsoDate(response.eventTime.startUtc),
			endTime = DateTime.fromIsoDate(response.eventTime.endUtc),
		},
		universeId = response.universeId,
		eventStatus = response.eventStatus,
		createdTime = DateTime.fromIsoDate(response.createdUtc),
		updatedTime = DateTime.fromIsoDate(response.updatedUtc),
		userRsvpStatus = response.userRsvpStatus,
	}
end

return VirtualEventModel
