local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local enums = require(VirtualEvents.enums)
local sendEventDeferred = require(script.Parent.sendEventDeferred)

type Payload = {
	virtualEventId: string,
	virtualEventLink: string,
	universeId: string,
	attendanceCount: number?,
}

return function(payload: Payload)
	sendEventDeferred(enums.AnalyticsEvent.VirtualEventLinkCopied, payload)
end
