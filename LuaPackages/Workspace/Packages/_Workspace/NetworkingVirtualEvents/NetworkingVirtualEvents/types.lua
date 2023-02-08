export type Config = {
	roduxNetworking: any,
}

export type EventStatus = "unpublished" | "active" | "cancelled"
export type RsvpStatus = "none" | "going" | "maybeGoing" | "notGoing"
export type HostType = "user" | "group"
export type EventFilterBy = "upcoming" | "past" | "drafts"
export type EventSortBy = "createdUtc" | "startUtc"
export type SortOrder = "asc" | "desc"

export type EventTime = {
	startTime: DateTime,
	endTime: DateTime,

	startUtc: string?,
	endUtc: string?,
}

export type EventTimeUtc = {
	startUtc: string,
	endUtc: string,
}

export type Host = {
	hostType: HostType,
	hostId: number,
	hostName: string,
	hasVerifiedBadge: boolean,
}

type VirtualEventBase = {
	id: string,
	title: string,
	description: string,
	host: Host,
	universeId: number,
	eventStatus: EventStatus,
	userRsvpStatus: RsvpStatus,
}

export type VirtualEventResponse = VirtualEventBase & {
	eventTime: EventTimeUtc,
	createdUtc: string,
	updatedUtc: string,
}

export type VirtualEvent = VirtualEventBase & {
	eventTime: EventTime,
	createdTime: DateTime,
	updatedTime: DateTime,
}

type PaginatedResponse<T> = {
	nextPageCursor: string,
	previousPageCursor: string,
	data: { T },
}

export type PaginatedVirtualEventResponse = PaginatedResponse<VirtualEventResponse>

export type CreateVirtualEventRequest = {
	title: string,
	description: string,
	eventTime: EventTime,
	universeId: number,
}

export type UpdateVirtualEventRequest = {
	title: string?,
	description: string?,
	eventTime: EventTime?,
	universeId: number?,
}

export type DeleteVirtualEventResponse = {
	isDeleted: boolean,
}

export type RsvpResponse = {
	userId: number,
	rsvpStatus: RsvpStatus,
}

export type RsvpCounters = {
	none: number,
	going: number,
	maybeGoing: number,
	notGoing: number,
}

export type RsvpCounterResponse = {
	counters: RsvpCounters,
}

export type PaginatedRsvpResponse = PaginatedResponse<RsvpResponse>

return {}
