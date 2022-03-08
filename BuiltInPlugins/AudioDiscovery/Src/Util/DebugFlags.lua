--[[
	This script uses a folder in the workspace to read configs
	from for testing. In general creating folders in the workspace
	can lead to unintended behaviour and should be used carefully.
]]

local Workspace = game:GetService("Workspace")

local FLAGS_FOLDER = "AudioDiscoveryFlags"

local inStudio, hasInternalPermission = pcall(function()
	-- Currently not available in CLI
	return game:GetService("StudioService"):HasInternalPermission()
end)

local function defineFlag(flagName, default: boolean?)
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
DebugFlags.RunningUnderCLI = defineFlag("RunningUnderCLI")
DebugFlags.RunTests = defineFlag("RunTests", false)
DebugFlags.LogTestsQuiet = defineFlag("LogTestsQuiet")
DebugFlags.LogAnalytics = defineFlag("LogAnalytics")
DebugFlags.RunDeveloperFrameworkTests = defineFlag("RunDeveloperFrameworkTests")
DebugFlags.EnableRoactConfigs = defineFlag("EnableRoactConfigs", inStudio and hasInternalPermission)
return DebugFlags
