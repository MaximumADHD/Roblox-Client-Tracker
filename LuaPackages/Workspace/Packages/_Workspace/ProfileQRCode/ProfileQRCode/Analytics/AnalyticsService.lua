local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local EventIngestService = game:GetService("EventIngestService")

local getPlatformTarget = require(Packages.Analytics).getPlatformTarget
local AnalyticsService = require(Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))

local function setRBXEventStream(eventName: string, payload: { [string]: any })
	EventIngestService:SetRBXEventStream(getPlatformTarget(), "virtualEvents", eventName, payload)
end

return {
	EventStream = { setRBXEventStream = setRBXEventStream },
	Diag = AnalyticsService,
}
