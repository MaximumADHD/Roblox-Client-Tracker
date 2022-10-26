local types = require(script.types)

export type EventStatus = types.EventStatus
export type HostType = types.HostType
export type RsvpStatus = types.RsvpStatus
export type EventTime = types.EventTime
export type EventTimeUtc = types.EventTimeUtc
export type Host = types.Host
export type VirtualEventResponse = types.VirtualEventResponse
export type PaginatedVirtualEventResponse = types.PaginatedVirtualEventResponse
export type CreateVirtualEventRequest = types.CreateVirtualEventRequest
export type UpdateVirtualEventRequest = types.UpdateVirtualEventRequest
export type DeleteVirtualEventResponse = types.DeleteVirtualEventResponse

return {
	config = require(script.config),
	createMockVirtualEventResponse = require(script.createMockVirtualEventResponse),
}
