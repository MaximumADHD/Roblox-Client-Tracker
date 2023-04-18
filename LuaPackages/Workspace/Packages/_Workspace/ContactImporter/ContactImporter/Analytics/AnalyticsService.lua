local ContactImporter = script:FindFirstAncestor("ContactImporter")
local Packages = ContactImporter.Parent
local EventIngestService = game:GetService("EventIngestService")

local AnalyticsPackage = require(Packages.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))
local setupSetRbxEventStream = require(script.Parent.setupSetRbxEventStream)

return {
	EventStream = { setRBXEventStream = setupSetRbxEventStream(EventIngestService) },
	Diag = AnalyticsPackage.Diag,
}
