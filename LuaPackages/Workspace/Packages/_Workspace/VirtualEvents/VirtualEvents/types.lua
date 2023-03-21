local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)

local types = {}

export type EventTimerStatus = "UpcomingImminent" | "Upcoming" | "Ongoing" | "ElapsedImminent" | "Elapsed" | "Deleted"

-- When cleaning up FFlagVirtualEventsGraphQL, switch these types to use the
-- ones in GraphQLServer
export type Host = NetworkingVirtualEvents.Host
export type VirtualEvent = NetworkingVirtualEvents.VirtualEvent
export type VirtualEventResponse = NetworkingVirtualEvents.VirtualEventResponse
export type EventStatus = NetworkingVirtualEvents.EventStatus
export type RsvpResponse = NetworkingVirtualEvents.RsvpResponse
export type RsvpStatus = NetworkingVirtualEvents.RsvpStatus
export type RsvpCounters = NetworkingVirtualEvents.RsvpCounters

export type Event = {
	name: string,
	description: string,
	host: Host,
	thumbnailImageUrl: string,
	experienceId: number,
	startTime: DateTime,
	endTime: DateTime,
	bannerImageUrl: string?,
}

return types
