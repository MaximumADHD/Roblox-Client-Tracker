local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local EventIngestService = game:GetService("EventIngestService")

local getPlatformTarget = require(VirtualEvents.Parent.Analytics).getPlatformTarget

local function sendEventDeferred(eventName: string, payload: { [string]: any })
	EventIngestService:SendEventDeferred(getPlatformTarget(), "virtualEvents", eventName, payload)
end

return sendEventDeferred
