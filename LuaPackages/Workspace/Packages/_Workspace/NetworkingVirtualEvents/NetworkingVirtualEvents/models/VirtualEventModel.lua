local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local types = require(NetworkingVirtualEvents.types)

local VirtualEventModel = {}

function VirtualEventModel.mock(id: string): types.VirtualEvent
	local startTime = DateTime.now()
	local endTime = DateTime.fromUnixTimestamp(startTime.UnixTimestamp + 24 * 60 * 60)

	return {
		id = id,
		title = "Event Name",
		description = "Event description goes here...",
		host = {
			hostType = "user" :: types.HostType,
			hostId = 1,
			hostName = "Roblox",
			hasVerifiedBadge = true,
		},
		eventTime = {
			startTime = startTime,
			endTime = endTime,

			-- Added for GraphQL compatibility
			startUtc = startTime:ToIsoDate(),
			endUtc = startTime:ToIsoDate(),
		},
		universeId = 3531439676,
		eventStatus = "active" :: types.EventStatus,
		createdTime = startTime,
		updatedTime = startTime,
		userRsvpStatus = "none" :: types.RsvpStatus,
	}
end

function VirtualEventModel.fromResponse(response: types.VirtualEventResponse): types.VirtualEvent?
	local startTime = DateTime.fromIsoDate(response.eventTime.startUtc)
	local endTime = DateTime.fromIsoDate(response.eventTime.endUtc)
	local createdTime = DateTime.fromIsoDate(response.createdUtc)
	local updatedTime = DateTime.fromIsoDate(response.updatedUtc)

	if startTime and endTime and createdTime and updatedTime then
		return {
			id = response.id,
			title = response.title,
			description = response.description,
			host = response.host,
			eventTime = {
				startTime = startTime,
				endTime = endTime,

				-- Added for GraphQL compatibility
				startUtc = response.eventTime.startUtc,
				endUtc = response.eventTime.endUtc,
			},
			universeId = response.universeId,
			eventStatus = response.eventStatus,
			createdTime = createdTime,
			updatedTime = updatedTime,
			userRsvpStatus = response.userRsvpStatus,
		}
	else
		return nil
	end
end

return VirtualEventModel
