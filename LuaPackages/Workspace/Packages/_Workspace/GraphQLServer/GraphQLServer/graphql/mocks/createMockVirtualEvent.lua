local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local generatedTypes = require(GraphQLServer.graphql.generatedTypes)

local function createMockVirtualEvent(id: string): generatedTypes.VirtualEvent
	local startTime = DateTime.now()
	local endTime = DateTime.fromUnixTimestamp(startTime.UnixTimestamp + 24 * 60 * 60)

	return {
		id = id,
		title = "Event Name",
		description = "Event description goes here...",
		host = {
			hostType = "user" :: generatedTypes.HostType,
			hostId = "1",
			hostName = "Roblox",
			hasVerifiedBadge = true,
		},
		eventTime = {
			startUtc = startTime:ToIsoDate(),
			endUtc = endTime:ToIsoDate(),

			-- Kept for backwards compatibility with RoduxNetworking
			startTime = startTime,
			endTime = endTime,
		},
		universeId = "3531439676",
		eventStatus = "active" :: generatedTypes.EventStatus,
		createdTime = startTime,
		updatedTime = startTime,
		userRsvpStatus = "none" :: generatedTypes.RsvpStatus,
		experienceDetails = {
			id = "3531439676",
			name = "Experience Name",
			playing = 50000,
		},
		rsvpCounters = {
			going = 2500,
			notGoing = 0,
			none = 0,
			maybeGoing = 0,
		},
		rsvps = {
			{
				userId = "957765952",
				rsvpStatus = "going" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "35392",
				rsvpStatus = "going" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "4416634",
				rsvpStatus = "going" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "1893522417",
				rsvpStatus = "going" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "1343930",
				rsvpStatus = "going" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "29819622",
				rsvpStatus = "notGoing" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "1668748746",
				rsvpStatus = "notGoing" :: generatedTypes.RsvpStatus,
			},
			{
				userId = "308199922",
				rsvpStatus = "notGoing" :: generatedTypes.RsvpStatus,
			},
		},
	}
end

return createMockVirtualEvent
