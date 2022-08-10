--!strict
local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.ArgCheck)
local Cryo = require(CorePackages.Cryo)

local EnableLoggingProtocolTelemetryEngineFeature = game:GetEngineFeature("EnableLoggingProtocolTelemetry")

type MessageBus = MessageBus.MessageBus
type FunctionDescriptor = MessageBus.FunctionDescriptor
type Table = MessageBus.Table
type Array<T> = { [number]: T }

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

export type TelemetryEventConfig = {
	eventName: string,
	backends: Array<string>,
	throttlingPercentage: number?,
	lastUpdated: Array<number>?,
	description: string?,
	links: string?,
}

-- Descriptor param validator
local paramsValidator = t.strictInterface({
	eventName = t.string,
	timestamp = t.optional(t.number),
	metadata = t.optional(t.keys(t.string)),
})

-- TODO: NFDN-2824 update param table format to use table reference and avoid duplication
local sendTelemetryValidator = t.strictInterface({
	eventType = t.string,
	eventName = t.string,
	backends = t.array(t.valueOf(TelemetryBackends)),
	throttlingPercentage = t.optional(t.number),
	lastUpdated = t.optional(t.array(t.integer)),
	description = t.optional(t.string),
	links = t.optional(t.string),
	customFields = t.optional(t.keys(t.string)),
	standardizedFields = t.optional(t.keys(t.valueOf(StandardizedFields))),
})

local LoggingProtocol = {
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
	-- // TODO: NFDN-2918 rename to match api function names
	SEND_ROBLOX_TELEMETRY_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "sendRobloxTelemetry"),
		validateParams = sendTelemetryValidator,
	},
}

LoggingProtocol.__index = LoggingProtocol

export type LoggingProtocol = {
	-- Static
	LOG_EVENT_WITH_TIMESTAMP_DESCRIPTOR: FunctionDescriptor,
	GET_TIMESTAMP_DESCRIPTOR: FunctionDescriptor,
	SEND_ROBLOX_TELEMETRY_DESCRIPTOR: FunctionDescriptor,

	default: LoggingProtocol,
	new: (messageBus: MessageBus?) -> LoggingProtocol,

	TelemetryBackends: Table,
	StandardizedFields: Table,

	-- Public
	logEventWithTimestamp: (LoggingProtocol, eventName: string, timestamp: number, metadata: Table?) -> (),
	logEvent: (LoggingProtocol, eventName: string, metadata: Table?) -> (),
	logEventOnce: (LoggingProtocol, eventName: string, metadata: Table?) -> (),
	getTimestamp: (LoggingProtocol) -> number,
	-- For RobloxTelemetry
	logRobloxTelemetryEvent: (
		LoggingProtocol,
		eventConfig: TelemetryEventConfig,
		standardizedFields: Array<string>?,
		customFields: Table?) -> (),
	logEphemeralCounterEvent: (LoggingProtocol, eventConfig: TelemetryEventConfig, incrementValue: number?) -> (),
	logEphemeralStatEvent: (LoggingProtocol, eventConfig: TelemetryEventConfig, statValue: number) -> (),

	-- Private
	messageBus: MessageBus,
}

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
	standardizedFields: Array<string>?,
	customFields: Table?
)
	if not EnableLoggingProtocolTelemetryEngineFeature then
		print("RobloxTelemetry event not enabled")
		return
	end
	-- TODO: NFDN-2824 update param table format to use table reference and avoid duplication
	local eventParams = Cryo.Dictionary.join(eventConfig, {
		eventType = "RobloxTelemetry",
		customFields = customFields,
	})
	if standardizedFields and #standardizedFields > 0 then
		eventParams.standardizedFields = {}
		for _, field in ipairs(standardizedFields) do
			eventParams.standardizedFields[field] = true
		end
	end

	self.messageBus.call(self.SEND_ROBLOX_TELEMETRY_DESCRIPTOR, eventParams)
end

function LoggingProtocol:logEphemeralCounterEvent(eventConfig: TelemetryEventConfig, incrementValue: number?)
	if not EnableLoggingProtocolTelemetryEngineFeature then
		print("EphemeralCounterEvent not enabled")
		return
	end
	-- NFDN-2919
end

function LoggingProtocol:logEphemeralStatEvent(eventConfig: TelemetryEventConfig, statValue: number)
	if not EnableLoggingProtocolTelemetryEngineFeature then
		print("EphemeralStatEvent not enabled")
		return
	end
	-- NFDN-2919
end

LoggingProtocol.default = LoggingProtocol.new()

return LoggingProtocol
