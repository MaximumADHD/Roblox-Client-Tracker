local Workspace = game:GetService("Workspace")

local function getDebugFlagValue(flagName)
	local val = Workspace:FindFirstChild(flagName)
	if val then
		return val.Value
	end
	return false
end

local DebugFlags = {}

function DebugFlags.shouldRunTests()
	return getDebugFlagValue("RunToolboxTests")
end

function DebugFlags.shouldDisableTooltips()
	return getDebugFlagValue("ToolboxDisableTooltips")
end

function DebugFlags.shouldDebugUrls()
	return getDebugFlagValue("ToolboxDebugUrls")
end

function DebugFlags.shouldDebugState()
	return getDebugFlagValue("ToolboxDebugState")
end

function DebugFlags.shouldLogAnalytics()
	return getDebugFlagValue("ToolboxLogAnalytics")
end

function DebugFlags.shouldDebugWarnings()
	return getDebugFlagValue("ToolboxDebugWarnings")
end

function DebugFlags.shouldLogSettings()
	return getDebugFlagValue("ToolboxLogSettings")
end

return DebugFlags
