local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

local Context = require(script.ContactImporterAnalyticsContext)
local setupFireAnalyticsEvents = require(script.setupFireAnalyticsEvents)

return {
	setupFireAnalyticsEvents = setupFireAnalyticsEvents,
	Context = Context,
	connect = ContextUtils.getConnect(Context),
	useAnalytics = require(script.useAnalytics),
	EventNames = require(script.Enums.EventNames),
	EntryPoints = require(script.Enums.ContactImporterEntryPoints),
	FieldNames = require(script.FieldNames),
}
