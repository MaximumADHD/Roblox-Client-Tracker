local CorePackages = game:GetService("CorePackages")
local MessageBusPackage = require(CorePackages.Workspace.Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)

local Types = require(script.Parent.LoggingProtocolTypes)

local EnableLoggingProtocolTelemetryEngineFeature = game:GetEngineFeature("EnableLoggingProtocolTelemetry2")
local EnableLoggingProtocolEphemeralEventsEngineFeature = game:GetEngineFeature("EnableLoggingProtocolEphemeralEvents")

type MessageBus = MessageBusPackage.MessageBus
type FunctionDescriptor = MessageBusPackage.FunctionDescriptor
type Table = MessageBusPackage.Table
type Array<T> = MessageBusPackage.Array<T>

export type TelemetryEventConfig = Types.TelemetryEventConfig
export type LoggingProtocol = Types.LoggingProtocol

export type LoggingProtocolModule = LoggingProtocol & {
	default: LoggingProtocol,
	new: (messageBus: MessageBus?) -> LoggingProtocol,
}

type RobloxTelemetryParam = {
	eventType: "RobloxTelemetry",
	config: TelemetryEventConfig,
	data: {
		standardizedFields: Array<Types.StandardizedField>?,
		customFields: Table?,
	},
}
type EphemeralCounterParam = {
	eventType: "EphemeralCounter",
	config: TelemetryEventConfig,
	data: {
		incrementValue: number,
	}?
}
type EphemeralStatParam = {
	eventType: "EphemeralStat",
	config: TelemetryEventConfig,
	data: {
		statValue: number,
	},
}
type TelemetryEventParam = RobloxTelemetryParam | EphemeralCounterParam | EphemeralStatParam

local NAME = "Logging"
local loggedOnce = {}

-- TelemetryBackend enums are declared in RobloxTelemetryDefinition.h as unsigned 32bits integer
-- items below match the names
local TelemetryBackends = {
	UNSPECIFIED = "UNSPECIFIED",
	EventIngest = "EventIngest",
	Points = "Points",
	EphemeralCounter = "EphemeralCounter",
	EphemeralStat = "EphemeralStat",
}

-- https://sourcegraph.rbx.com/github.rbx.com/GameEngine/game-engine@dda730284c76da35e23d7eed82ac3f9c674b784f/-/blob/Client/RobloxTelemetry/include/RobloxTelemetry/RobloxTelemetry.h?L251
-- TODO: APPFDN-1454 add missing fields
local StandardizedFields = {
	addPlaceId = "addPlaceId",
	addUniverseId = "addUniverseId",
	addPlaceInstanceId = "addPlaceInstanceId",
	addSessionId = "addSessionId",
}

-- Descriptor param validator
local paramsValidator = t.strictInterface({
	eventName = t.string,
	timestamp = t.optional(t.number),
	metadata = t.optional(t.keys(t.string)),
})

local LoggingProtocol: LoggingProtocolModule = {
	TelemetryBackends = TelemetryBackends,
	StandardizedFields = StandardizedFields,

	LOG_EVENT_WITH_TIMESTAMP_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "logEventWithTimestamp"),
		validateParams = paramsValidator,
	},
	GET_TIMESTAMP_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "getTimestamp"),
		validateParams = t.table,
	},
	LOG_EVENT_FROM_LUA_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "logEventFromLua"),
		validateParams = t.interface({
			eventType = t.string,
			config = t.optional(t.strictInterface({
				eventName = t.string,
				backends = t.array(t.valueOf(TelemetryBackends)),
				throttlingPercentage = t.optional(t.number),
				lastUpdated = t.optional(t.array(t.integer)),
				description = t.optional(t.string),
				links = t.optional(t.string),
			})),
			data = t.optional(t.table),
		}),
	},
} :: LoggingProtocolModule

(LoggingProtocol :: any).__index = LoggingProtocol

function LoggingProtocol.new(messageBus: MessageBus?): LoggingProtocol
	local self = {
		messageBus = messageBus or MessageBus,
	}
	setmetatable(self, LoggingProtocol)
	return (self :: any) :: LoggingProtocol
end

function LoggingProtocol:logEventWithTimestamp(eventName: string, timestamp: number, metadata: Table?): ()
	ArgCheck.isType(eventName, "string", "eventName")
	ArgCheck.isType(timestamp, "number", "timestamp")
	local params = {
		eventName = eventName,
		timestamp = timestamp,
		metadata = metadata,
	}
	self.messageBus.call(self.LOG_EVENT_WITH_TIMESTAMP_DESCRIPTOR, params)
end

function LoggingProtocol:logEvent(eventName: string, metadata: Table?): ()
	ArgCheck.isType(eventName, "string", "eventName")
	self:logEventWithTimestamp(eventName, 0, metadata)
end

function LoggingProtocol:logEventOnce(eventName: string, metadata: Table?): ()
	ArgCheck.isType(eventName, "string", "eventName")
	if loggedOnce[eventName] == nil then
		loggedOnce[eventName] = true
		self:logEvent(eventName, metadata)
	end
end

-- timestamp is ms
function LoggingProtocol:getTimestamp(): number
	return self.messageBus.call(self.GET_TIMESTAMP_DESCRIPTOR, {})
end

function LoggingProtocol:logRobloxTelemetryEvent(
	eventConfig: TelemetryEventConfig,
	standardizedFields: Array<Types.StandardizedField>?,
	customFields: Table?
)
	if not EnableLoggingProtocolTelemetryEngineFeature then
		print("RobloxTelemetry event not enabled")
		return
	end

	local params: TelemetryEventParam = {
		eventType = "RobloxTelemetry",
		config = eventConfig,
		data = {
			standardizedFields = standardizedFields,
			customFields = customFields,
		}
	}
	self.messageBus.call(self.LOG_EVENT_FROM_LUA_DESCRIPTOR, params)
end

function LoggingProtocol:logEphemeralCounterEvent(eventConfig: TelemetryEventConfig, incrementValue: number?)
	if not EnableLoggingProtocolEphemeralEventsEngineFeature then
		print("logEphemeralCounterEvent not enabled")
		return
	end

	local params: TelemetryEventParam = {
		eventType = "EphemeralCounter",
		config = eventConfig,
		data = if incrementValue then {
			incrementValue = incrementValue,
		} else nil
	}

	self.messageBus.call(self.LOG_EVENT_FROM_LUA_DESCRIPTOR, params)
end

function LoggingProtocol:logEphemeralStatEvent(eventConfig: TelemetryEventConfig, statValue: number)
	if not EnableLoggingProtocolEphemeralEventsEngineFeature then
		print("logEphemeralStatEvent not enabled")
		return
	end

	local params: TelemetryEventParam = {
		eventType = "EphemeralStat",
		config = eventConfig,
		data = {
			statValue = statValue,
		}
	}

	self.messageBus.call(self.LOG_EVENT_FROM_LUA_DESCRIPTOR, params)
end

LoggingProtocol.default = LoggingProtocol.new()

return LoggingProtocol
