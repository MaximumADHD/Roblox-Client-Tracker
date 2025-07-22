--!strict

local CorePackages = game:GetService("CorePackages")

local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

local defaultLoggingProtocol = LoggingProtocol.default
type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

local RequestLatencyConfig: TelemetryEventConfig = {
	eventName = "InGameNextUpExitMenuSortRequestLatency",
	backends = {
		LoggingProtocol.TelemetryBackends.Stats,
	},
	lastUpdated = { 25, 7, 16 },
	description = [[Request latency for In-Game Exit Page network requests]],
}

local function logRequestLatency(endpointName: string, requestLatencyMs: number)
	defaultLoggingProtocol:logRobloxTelemetryStat(RequestLatencyConfig, requestLatencyMs, {
		endpointName = endpointName,
	})
end

local NextUpSortViewConfig: TelemetryEventConfig = {
	eventName = "InGameNextUpExitMenuSortView",
	backends = {
		LoggingProtocol.TelemetryBackends.Counter,
	},
	lastUpdated = { 25, 7, 16 },
	description = [[Next-up sort views from the In-Game Exit Modal]],
}

local function logNextUpSortView(tilesLoaded: boolean)
	defaultLoggingProtocol:logRobloxTelemetryCounter(NextUpSortViewConfig, 1.0, {
		tilesLoaded = tostring(tilesLoaded),
	})
end

return {
	logRequestLatency = logRequestLatency,
	logNextUpSortView = logNextUpSortView,
}
