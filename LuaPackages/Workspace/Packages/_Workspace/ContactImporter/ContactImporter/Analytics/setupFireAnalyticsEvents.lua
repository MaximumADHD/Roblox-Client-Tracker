local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local EventNames = require(script.Parent.Enums.EventNames)
local fireReportStats = require(script.Parent.fireReportStats)
local fireEventStream = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local fireDiagCounter = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local AnalyticsEvents = require(script.Parent.AnalyticsEvents)
local DiagEvents = require(script.Parent.DiagEvents)

return function(setup: {
	diag: any,
	eventStreamImpl: any,
	loggerImpl: any?,
	defaultAnalyticsInfo: { uid: string, entry: any },
})
	local configuredFireEventStream = fireEventStream({
		eventStreamImpl = setup.eventStreamImpl,
		eventList = AnalyticsEvents,
		infoForAllEvents = setup.defaultAnalyticsInfo,
	})

	local configuredFireDiagCounter = fireDiagCounter({
		diagImpl = setup.diag,
		eventList = DiagEvents,
	})

	local configuredFireReportStats = fireReportStats({
		diagImpl = setup.diag,
		eventList = DiagEvents,
	})

	return function(eventName: any, additionalInfo: any?)
		if DiagEvents[eventName] then
			if eventName == EventNames.ContactImportingTime then
				configuredFireReportStats(EventNames.ContactImportingTime, additionalInfo)
			else
				configuredFireDiagCounter(eventName)
			end
		end

		if AnalyticsEvents[eventName] then
			configuredFireEventStream(eventName, additionalInfo)
		end
	end
end
