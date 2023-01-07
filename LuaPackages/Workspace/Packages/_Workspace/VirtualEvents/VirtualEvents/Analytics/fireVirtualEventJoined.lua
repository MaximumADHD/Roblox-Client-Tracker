local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local enums = require(VirtualEvents.enums)
local sendEventDeferred = require(script.Parent.sendEventDeferred)

type Payload = {
	virtualEventId: string,
	universeId: string,
	channel: string,
	attendanceCount: number?,
}

return function(payload: Payload)
	sendEventDeferred(enums.AnalyticsEvent.VirtualEventJoined, payload)
end
