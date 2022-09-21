local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local types = require(NetworkingVirtualEvents.types)

local function createMockVirtualEventResponse(eventId: number): types.VirtualEventResponse
	return {
		id = eventId,
		title = "Event Title",
		description = "Event description...",
		host = {
			hostTypeId = "hostTypeId",
			hostTargetId = 12345678,
		},
		eventTime = {
			startUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate(),
			endUtc = DateTime.fromLocalTime(2022, 1, 7):ToIsoDate(),
		},
		status = "Foo",
		universeId = 123123123,
		createdUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate(),
		updatedUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate(),
	}
end

return createMockVirtualEventResponse
