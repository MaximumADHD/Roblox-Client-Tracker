local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local enums = require(VirtualEvents.enums)
local sendEventDeferred = require(script.Parent.sendEventDeferred)

type Payload = {
	virtualEventId: string,
	universeId: string,
	channel: string,
}

return function(payload: Payload)
	sendEventDeferred(enums.AnalyticsEvent.EventDetailsPageVisit, payload)
end
