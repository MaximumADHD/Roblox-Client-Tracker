local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)

local DiagActionList = require(script.Parent.DiagActionList)
local fireEventStream = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local fireDiagCounter = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local EventStreamActionList = require(script.Parent.EventStreamActionList)

return function(setup: {
	analytics: { Diag: any, EventStream: any },
	loggerImpl: any?,
	infoForAllEvents: { uid: string },
})
	local fireEventStream = fireEventStream({
		eventStreamImpl = setup.analytics.EventStream,
		eventList = EventStreamActionList,
		infoForAllEvents = setup.infoForAllEvents,
	})

	local fireDiagCounter = fireDiagCounter({
		diagImpl = setup.analytics.Diag,
		eventList = DiagActionList,
	})

	return function(eventName: any, additionalInfo: any?)
		if DiagActionList[eventName] then
			fireDiagCounter(eventName)
		end

		return fireEventStream(eventName, additionalInfo)
	end
end
