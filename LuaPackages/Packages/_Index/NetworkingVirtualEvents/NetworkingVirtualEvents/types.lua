export type Config = {
	roduxNetworking: any,
}

export type EventStatus = "unpublished" | "active" | "cancelled"
export type HostType = "user" | "group"

export type EventTime = {
	startTime: string,
	endTime: string,
}

export type EventTimeUtc = {
	startUtc: string,
	endUtc: string,
}

export type Host = {
	hostType: HostType,
	hostId: number,
}

export type VirtualEventResponse = {
	id: string,
	title: string,
	description: string,
	eventTime: EventTimeUtc,
	host: Host,
	universeId: number,
	eventStatus: EventStatus,
	createdUtc: string,
	updatedUtc: string,
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

return {}
