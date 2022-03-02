--[[
	This script uses a folder in the workspace to read configs
	from for testing. In general creating folders in the workspace
	can lead to unintended behaviour and should be used carefully.
]]

local Workspace = game:GetService("Workspace")

local hasInternalPermission = require(script.Parent.hasInternalPermission)()

local FLAGS_FOLDER = "AssetImporterFlags"

local inCLI = pcall(function()
	-- Process service only available in CLI
	return game:GetService("ProcessService")
end)

local function defineFlag(flagName, default)
	default = default or false
	return function()
		local folder = Workspace:FindFirstChild(FLAGS_FOLDER)
		if not folder or not folder:FindFirstChild(flagName) then
			return default
		end
		return folder[flagName].Value
	end
end

local DebugFlags = {}
DebugFlags.RunningUnderCLI = defineFlag("RunningUnderCLI", inCLI)
DebugFlags.RunTests = defineFlag("RunTests")
DebugFlags.LogTestsQuiet = defineFlag("LogTestsQuiet")
DebugFlags.LogAnalytics = defineFlag("LogAnalytics")
DebugFlags.RunDeveloperFrameworkTests = defineFlag("RunDeveloperFrameworkTests")
DebugFlags.EnableRoactConfigs = defineFlag("EnableRoactConfigs", DebugFlags.RunTests() or hasInternalPermission)
return DebugFlags
