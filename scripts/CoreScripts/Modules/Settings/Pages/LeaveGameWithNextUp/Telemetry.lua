--!strict

local CorePackages = game:GetService("CorePackages")

local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)
local Cryo = require(CorePackages.Packages.Cryo)

local NextUpState = require(script.Parent.NextUpState)

local FFlagEnableNextUpImageLatencyTelemetry = require(script.Parent.Flags.FFlagEnableNextUpImageLatencyTelemetry)

local defaultLoggingProtocol = LoggingProtocol.default
type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

local NextUpSortViewActionType = if FFlagEnableNextUpImageLatencyTelemetry
	then {
		LeaveGame = "LeaveGame",
		CloseExitModalClick = "CloseExitModalClick",
		CloseExitModalEscape = "CloseExitModalEscape",
		JoinGame = "JoinGame",
	}
	else nil :: never

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

local NextUpExitModalActionConfig: TelemetryEventConfig = if FFlagEnableNextUpImageLatencyTelemetry
	then {
		eventName = "InGameNextUpExitMenuSortView",
		backends = {
			LoggingProtocol.TelemetryBackends.EventIngest,
		},
		throttlingPercentage = game:DefineFastInt("InGameNextUpSortViewEventThrottlingPercentage", 0),
		lastUpdated = { 25, 7, 22 },
		description = [[Next-up sort views from the In-Game Exit Modal]],
	}
	else nil :: never

local secondsToMilliseconds = if FFlagEnableNextUpImageLatencyTelemetry
	then function(seconds: number)
		return seconds * 1000
	end
	else nil :: never

local logNextUpExitModalAction = if FFlagEnableNextUpImageLatencyTelemetry
	then function(action: string)
		local sortLatencySeconds = NextUpState.getNextUpComponentSortLatency()
		local tileLatenciesMs = Cryo.List.map(NextUpState.getNextUpTileImageTextureLatencies(), secondsToMilliseconds)
		defaultLoggingProtocol:logRobloxTelemetryEvent(NextUpExitModalActionConfig, {}, {
			action = action,
			sortLatency = if sortLatencySeconds then secondsToMilliseconds(sortLatencySeconds) else nil,
			tileLatencies = if #tileLatenciesMs > 0 then table.concat(tileLatenciesMs, ",") else nil,
		})
	end
	else nil :: never

return {
	logRequestLatency = logRequestLatency,

	logNextUpSortView = if FFlagEnableNextUpImageLatencyTelemetry then nil :: never else logNextUpSortView,

	NextUpSortViewActionType = if FFlagEnableNextUpImageLatencyTelemetry
		then NextUpSortViewActionType
		else nil :: never,
	logNextUpExitModalAction = if FFlagEnableNextUpImageLatencyTelemetry
		then logNextUpExitModalAction
		else nil :: never,
}
