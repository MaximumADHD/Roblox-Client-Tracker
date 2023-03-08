local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local DiagEvents = require(script.Parent.DiagEvents)
local fireEventStream = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local fireDiagCounter = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local AnalyticsEvents = require(script.Parent.AnalyticsEvents)
local SelfViewProfileDiscoverabilityUpsellIXP =
	require(DiscoverabilityModal.Flags.SelfViewProfileDiscoverabilityUpsellIXP)

return function(setup: {
	eventStreamImpl: any?,
	diag: any?,
	analytics: { Diag: any?, EventStream: any? }?,
	loggerImpl: any?,
	defaultAnalyticsInfo: { uid: string, entry: any },
})
	local configuredFireEventStream = fireEventStream({
		eventStreamImpl = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled() and setup.analytics
			then setup.analytics.EventStream
			else setup.eventStreamImpl,
		eventList = AnalyticsEvents,
		infoForAllEvents = setup.defaultAnalyticsInfo,
	})

	local configuredFireDiagCounter = fireDiagCounter({
		diagImpl = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled() and setup.analytics
			then setup.analytics.Diag
			else setup.diag,
		eventList = DiagEvents,
	})

	return function(eventName: any, additionalInfo: any?)
		configuredFireDiagCounter(eventName)
		configuredFireEventStream(eventName, additionalInfo)
	end
end
