local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local DiagActionList = require(script.Parent.DiagActionList)
local fireEventStream = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local fireDiagCounter = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local EventStreamActionList = require(script.Parent.EventStreamActionList)
local AnalyticsService = dependencies.AnalyticsService

return function(setup: {
	analytics: { Diag: any, EventStream: any },
	loggerImpl: any?,
	infoForAllEvents: { uid: string, recommendationSessionId: string? },
})
	local fireEventStream = fireEventStream({
		eventStreamImpl = setup.analytics.EventStream,
		eventList = EventStreamActionList,
		infoForAllEvents = setup.infoForAllEvents,
	})

	local fireDiagCounter = fireDiagCounter({
		diagImpl = if not setup.analytics.Diag then AnalyticsService.Diag else setup.analytics.Diag,
		eventList = DiagActionList,
	})

	return function(eventName: any, additionalInfo: any?)
		if fireDiagCounter then
			if DiagActionList[eventName] then
				fireDiagCounter(eventName)
			end
		end

		return fireEventStream(eventName, additionalInfo)
	end
end
