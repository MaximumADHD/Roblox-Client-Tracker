local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local RunService = game:GetService("RunService")
local TelemetryService = game:GetService("TelemetryService")

-- Shared with the Studio Visualization Modes plugin: both log the same event so results can be aggregated and split
-- by the "ui" field. Like the other SLIM events it goes to both Points (Elasticsearch/Kibana) and EventIngest (Hive/
-- Superset). Deliberately no userId; clientId is enough to tell distinct clients apart.
local SlimTintModeEventConfig = {
	eventName = "SlimTintModeSelected",
	backends = { "Points", "EventIngest" },
	-- Hundredths of a percent; Luau defaults to 0 (nothing sent), so this must be set to send every event.
	throttlingPercentage = 10000,
	lastUpdated = { 2026, 10, 13 },
	description = [[
		SLIM tint mode selected by a user. Shared by the Developer Console Debug Visualizations tab
		(ui = "DevConsole") and the Studio Visualization Modes plugin (ui = "VisualizationModes").
		The app field is "Studio" or "Player", since the Developer Console runs in both.
	]],
}

local DebugVisualizationsTelemetry = {}

function DebugVisualizationsTelemetry.logSlimTintModeSelected(tintMode: EnumItem)
	-- Clearing the tint isn't selecting a mode, so it isn't counted.
	if tintMode.Name == "None" then
		return
	end

	local customFields = {
		tintMode = tintMode.Name,
		ui = "DevConsole",
		-- The Developer Console runs in both Studio and the Player.
		app = if RunService:IsStudio() then "Studio" else "Player",
		clientId = RbxAnalyticsService:GetClientId(),
	}
	TelemetryService:LogEvent(SlimTintModeEventConfig, { customFields = customFields })
end

return DebugVisualizationsTelemetry
