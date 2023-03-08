local DiscoverabilityModal = script.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

local Context = require(script.DiscoverabilityModalAnalyticsContext)
local setupFireAnalyticsEvents = require(script.setupFireAnalyticsEvents)

return {
	setupFireAnalyticsEvents = setupFireAnalyticsEvents,
	Context = Context,
	connect = ContextUtils.getConnect(Context),
	EventNames = require(script.Enums.EventNames),
	useAnalytics = require(script.useAnalytics),
	EntryPoints = require(script.Enums.EntryPoints),
	AnalyticsService = require(script.AnalyticsService),
}
