--!strict
local SocialLibraries = script.Parent.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local llama = dependencies.llama
local Types = require(script.Parent.Types)
local toStringAdditionalArgs = require(script.Parent.toStringAdditionalArgs)
local getEventInfo = require(script.Parent.getEventInfo)
local optionallyLog = require(script.Parent.optionallyLog)
local compose = require(script.Parent.Parent.Parent.RoduxTools.compose)
local isEnum = require(script.Parent.Parent.Parent.Utils.isEnum)

local formatEnumList = function(dictionary: { [string]: any }?)
	return llama.Dictionary.map(dictionary or {}, function(value)
		if isEnum(value) then
			return value.rawValue()
		end

		return value
	end)
end

local formatNewAdditionalInfo = function(additionalInfo: Types.AdditionalInfo?, formatRulesForAdditionalInfo: any)
	if not additionalInfo or not formatRulesForAdditionalInfo then
		return {}
	end

	return llama.Dictionary.map(additionalInfo, function(fieldValue, fieldName)
		local fieldInfo = formatRulesForAdditionalInfo[fieldName]
		if fieldInfo then
			return if type(fieldInfo) == "function" then fieldInfo(fieldValue) else fieldValue
		else
			return llama.None
		end
	end)
end

local stringifyEventDetails = function(eventInfo: { context: string, eventType: string, additionalInfo: any? })
	return string.format(
		"context: (%s), eventName: (%s), additionalInfo: (%s)",
		eventInfo.context,
		eventInfo.eventType,
		toStringAdditionalArgs(eventInfo.additionalInfo)
	)
end

local setRBXEventStream = function(eventStreamImpl)
	return function(eventInfo: { context: string, eventType: string, additionalInfo: any? })
		eventStreamImpl:setRBXEventStream(eventInfo.context, eventInfo.eventType, eventInfo.additionalInfo)

		return eventInfo
	end
end

return function(
	setup: {
		eventStreamImpl: any,
		eventList: Types.EventStreamList,
		infoForAllEvents: (Types.AdditionalInfo)?,
		loggerImpl: Types.Logger?,
	}
)
	local eventInfoGetter = getEventInfo(setup.eventList)

	return function(eventName: Types.Enumerate, additionalInfo: (Types.AdditionalInfo)?)
		local specificEventInfo = eventInfoGetter(eventName)

		compose(optionallyLog(setup.loggerImpl, stringifyEventDetails), setRBXEventStream(setup.eventStreamImpl))({
			context = specificEventInfo.context.rawValue(),
			eventType = specificEventInfo.eventType.rawValue(),
			additionalInfo = llama.Dictionary.join(
				setup.infoForAllEvents or {},
				formatEnumList(specificEventInfo.additionalInfo),
				formatNewAdditionalInfo(additionalInfo, specificEventInfo.formatRulesForAdditionalInfo)
			),
		})

		return eventName, additionalInfo
	end
end
