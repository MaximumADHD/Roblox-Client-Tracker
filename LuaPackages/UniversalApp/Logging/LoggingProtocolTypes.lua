local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

export type TelemetryEventConfig = {
	eventName: string,
	backends: Types.Array<string>,
	throttlingPercentage: number?,
	lastUpdated: Types.Array<number>?,
	description: string?,
	links: string?,
}

export type LoggingProtocol = {
	-- Static
	LOG_EVENT_WITH_TIMESTAMP_DESCRIPTOR: Types.FunctionDescriptor,
	GET_TIMESTAMP_DESCRIPTOR: Types.FunctionDescriptor,
	SEND_ROBLOX_TELEMETRY_DESCRIPTOR: Types.FunctionDescriptor,

	TelemetryBackends: Types.Table,
	StandardizedFields: Types.Table,

	-- Public
	logEventWithTimestamp: (LoggingProtocol, eventName: string, timestamp: number, metadata: Types.Table?) -> (),
	logEvent: (LoggingProtocol, eventName: string, metadata: Types.Table?) -> (),
	logEventOnce: (LoggingProtocol, eventName: string, metadata: Types.Table?) -> (),
	getTimestamp: (LoggingProtocol) -> number,
	-- For RobloxTelemetry
	logRobloxTelemetryEvent: (
		LoggingProtocol,
		eventConfig: TelemetryEventConfig,
		standardizedFields: Types.Array<string>?,
		customFields: Types.Table?) -> (),
	logEphemeralCounterEvent: (LoggingProtocol, eventConfig: TelemetryEventConfig, incrementValue: number?) -> (),
	logEphemeralStatEvent: (LoggingProtocol, eventConfig: TelemetryEventConfig, statValue: number) -> (),

	-- Private
	messageBus: Types.MessageBus,
}

return nil
