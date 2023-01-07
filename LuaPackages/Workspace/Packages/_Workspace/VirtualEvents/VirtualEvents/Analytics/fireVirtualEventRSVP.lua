local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local enums = require(VirtualEvents.enums)
local types = require(VirtualEvents.types)
local sendEventDeferred = require(script.Parent.sendEventDeferred)

type Payload = {
	virtualEventId: string,
	universeId: string,
	channel: string,
	status: types.RsvpStatus,
	attendanceCount: number?,
}

return function(payload: Payload)
	sendEventDeferred(enums.AnalyticsEvent.VirtualEventRSVP, payload)
end
