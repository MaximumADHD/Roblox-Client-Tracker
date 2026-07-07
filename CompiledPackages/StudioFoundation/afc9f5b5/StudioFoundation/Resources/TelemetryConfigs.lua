local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local isFTF = false
pcall(function()
	local TestLoader = require(Packages.TestLoader)
	isFTF = TestLoader.isFTF()
end)

local FIntStudioDialogShownThrottleHundredthsPercent =
	game:DefineFastInt("StudioDialogShownThrottleHundredthsPercent", 10000)
local FIntStudioDialogInteractedThrottleHundredthsPercent =
	game:DefineFastInt("StudioDialogInteractedThrottleHundredthsPercent", 10000)
local FIntStudioDialogDestroyedThrottleHundredthsPercent =
	game:DefineFastInt("StudioDialogDestroyedThrottleHundredthsPercent", 10000)

local TelemetryConfigs = {}

-- Default metadata (extra dimensions) to be included with every telemetry event
-- For non-event configs, make sure the dimensions are low cardinality (not too many unique values)
TelemetryConfigs.DEFAULT_METADATA = table.freeze({
	customFields = {
		isFtf = isFTF,
	},
})

-- Dialog events
TelemetryConfigs.DIALOG_SHOWN = table.freeze({
	eventName = "StudioDialogShown",
	backends = { "EventIngest", "Points" },
	throttlingPercentage = FIntStudioDialogShownThrottleHundredthsPercent,
	lastUpdated = { 2026, 2, 17 },
	description = "Event sent when dialogs are shown in Studio",
})
TelemetryConfigs.DIALOG_INTERACTED = table.freeze({
	eventName = "StudioDialogInteracted",
	backends = { "EventIngest", "Points" },
	throttlingPercentage = FIntStudioDialogInteractedThrottleHundredthsPercent,
	lastUpdated = { 2026, 2, 17 },
	description = "Event sent when Studio dialogs are interacted with by the user",
})
TelemetryConfigs.DIALOG_DESTROYED = table.freeze({
	eventName = "StudioDialogDestroyed",
	backends = { "EventIngest", "Points" },
	throttlingPercentage = FIntStudioDialogDestroyedThrottleHundredthsPercent,
	lastUpdated = { 2026, 2, 17 },
	description = "Event sent when Studio dialogs are torn down",
})

return table.freeze(TelemetryConfigs)
