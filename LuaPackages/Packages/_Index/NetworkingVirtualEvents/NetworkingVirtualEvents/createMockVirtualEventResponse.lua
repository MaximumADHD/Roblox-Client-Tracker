local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local types = require(NetworkingVirtualEvents.types)

local function createMockVirtualEventResponse(eventId: string): types.VirtualEventResponse
	return {
		id = eventId,
		title = "Event Title",
		description = "Event description...",
		host = {
			hostType = "user",
			hostId = 12345678,
			isPremium = false,
			hasVerifiedBadge = false,
		},
		eventTime = {
			startUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate(),
			endUtc = DateTime.fromLocalTime(2022, 1, 7):ToIsoDate(),
		},
		eventStatus = "active",
		createdUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate(),
		updatedUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate(),
		userRsvpStatus = "none",
		universeId = 1, -- TODO: remove after EN-1515 is merged
		universe = {
			universeId = 1,
			isPrivate = false,
		},
	}
end

return createMockVirtualEventResponse
