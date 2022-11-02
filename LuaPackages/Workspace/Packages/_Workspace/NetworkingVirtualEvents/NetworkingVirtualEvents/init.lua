local CorePackages = game:GetService("CorePackages")
local Package = require(CorePackages.Packages.NetworkingVirtualEvents)

export type EventStatus = Package.EventStatus
export type HostType = Package.HostType
export type RsvpStatus = Package.RsvpStatus
export type EventTime = Package.EventTime
export type EventTimeUtc = Package.EventTimeUtc
export type Host = Package.Host
export type VirtualEventResponse = Package.VirtualEventResponse
export type PaginatedVirtualEventResponse = Package.PaginatedVirtualEventResponse
export type CreateVirtualEventRequest = Package.CreateVirtualEventRequest
export type UpdateVirtualEventRequest = Package.UpdateVirtualEventRequest
export type DeleteVirtualEventResponse = Package.DeleteVirtualEventResponse

return Package
