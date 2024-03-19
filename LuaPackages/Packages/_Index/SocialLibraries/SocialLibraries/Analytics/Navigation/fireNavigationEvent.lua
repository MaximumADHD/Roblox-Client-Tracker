--!strict
local fireEventStream = require(script.Parent.Parent.FireEvent.fireEventStream)
local fireDiagCounter = require(script.Parent.Parent.FireEvent.fireDiagCounter)
local DiagEventList = require(script.Parent.DiagEventList)
local EventStreamEventList = require(script.Parent.EventStreamEventList)
local Types = require(script.Parent.Parent.FireEvent.Types)

return function(setup: { analytics: { Diag: any, EventStream: any }, loggerImpl: any?, infoForAllEvents: (Types.AdditionalInfo)? })
	local fireEventStream = fireEventStream({
		eventStreamImpl = setup.analytics.EventStream,
		eventList = EventStreamEventList,
		loggerImpl = setup.loggerImpl,
		infoForAllEvents = setup.infoForAllEvents,
	})
	local fireDiagCounter = fireDiagCounter({
		diagImpl = setup.analytics.Diag,
		eventList = DiagEventList,
		loggerImpl = setup.loggerImpl,
	})

	return function(eventName: Types.Enumerate, additionalInfo: any?)
		if EventStreamEventList[eventName] then
			fireEventStream(eventName, additionalInfo)
		end

		if DiagEventList[eventName] then
			fireDiagCounter(eventName)
		end

		return DateTime.now()
	end
end
