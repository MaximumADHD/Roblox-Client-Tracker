local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local EventIngestService = game:GetService("EventIngestService")
local HttpService = game:GetService("HttpService")

local getPlatformTarget = require(VirtualEvents.Parent.Analytics).getPlatformTarget
local logger = require(VirtualEvents.logger)

local function sendEventDeferred(eventName: string, payload: { [string]: any })
	logger:debug(string.format("Fired %q with payload %s", eventName, HttpService:JSONEncode(payload)))
	EventIngestService:SendEventDeferred(getPlatformTarget(), "virtualEvents", eventName, payload)
end

return sendEventDeferred
