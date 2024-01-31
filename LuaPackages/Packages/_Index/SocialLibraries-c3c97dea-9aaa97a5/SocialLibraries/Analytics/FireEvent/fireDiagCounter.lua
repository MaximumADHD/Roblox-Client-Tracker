--!strict
local Types = require(script.Parent.Types)
local getEventInfo = require(script.Parent.getEventInfo)
local optionallyLog = require(script.Parent.optionallyLog)
local compose = require(script.Parent.Parent.Parent.RoduxTools.compose)
local reportCounter = require(script.Parent.reportCounter)

local eventFormatter = function(eventInfo: Types.DiagEventAction): string
	return "Fired diagCounter: "
		.. eventInfo.name
		.. ", count: "
		.. (eventInfo.count and tostring(eventInfo.count) or "1")
end

return function(setup: { diagImpl: any, eventList: Types.DiagEventList, loggerImpl: Types.Logger? })
	return function(eventName: Types.Enumerate)
		return compose(
			reportCounter(setup.diagImpl),
			optionallyLog(setup.loggerImpl, eventFormatter),
			getEventInfo(setup.eventList)
		)(eventName)
	end
end
