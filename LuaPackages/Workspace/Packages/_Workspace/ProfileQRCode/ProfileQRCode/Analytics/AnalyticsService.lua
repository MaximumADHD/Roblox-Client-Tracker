local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local EventIngestService = game:GetService("EventIngestService")

local AnalyticsPackage = require(Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))
local setupSetRbxEventStream = require(script.Parent.setupSetRbxEventStream)

return {
	EventStream = { setRBXEventStream = setupSetRbxEventStream(EventIngestService) },
	Diag = AnalyticsPackage.Diag,
}
