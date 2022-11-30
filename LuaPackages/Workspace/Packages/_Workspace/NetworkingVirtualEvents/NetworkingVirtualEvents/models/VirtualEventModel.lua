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
			hostType = "user" :: types.HostType,
			hostId = 1,
			hostName = "Roblox",
			hasVerifiedBadge = true,
		},
		eventTime = {
			startTime = now,
			endTime = DateTime.fromUnixTimestamp(now.UnixTimestamp + 24 * 60 * 60),
		},
		universeId = 3531439676,
		eventStatus = "active" :: types.EventStatus,
		createdTime = now,
		updatedTime = now,
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
