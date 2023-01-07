local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local DiagEvents = require(script.Parent.DiagEvents)
local fireEventStream = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local fireDiagCounter = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local AnalyticsEvents = require(script.Parent.AnalyticsEvents)

return function(setup: { diag: any, eventStreamImpl: any, loggerImpl: any?, defaultAnalyticsInfo: { uid: string, entry: any } })
	local configuredFireEventStream = fireEventStream({
		eventStreamImpl = setup.eventStreamImpl,
		eventList = AnalyticsEvents,
		infoForAllEvents = setup.defaultAnalyticsInfo,
	})

	local configuredFireDiagCounter = fireDiagCounter({
		diagImpl = setup.diag,
		eventList = DiagEvents,
	})

	return function(eventName: any, additionalInfo: any?)
		configuredFireDiagCounter(eventName)
		configuredFireEventStream(eventName, additionalInfo)
	end
end
