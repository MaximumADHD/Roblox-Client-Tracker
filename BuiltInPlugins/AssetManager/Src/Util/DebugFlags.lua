local Workspace = game:GetService("Workspace")

local FLAGS_FOLDER = "AssetManagerFlags"

local hasInternalPermission = require(script.Parent.hasInternalPermission)()

local inCLI = pcall(function()
	-- Process service only available in CLI
	return game:GetService("ProcessService")
end)

local function defineFlag(flagName: string, default: boolean?): (() -> boolean)
	default = default or false
	return function()
		local folder = Workspace:FindFirstChild(FLAGS_FOLDER)
		if not folder or not folder:FindFirstChild(flagName) then
			return default
		end
		return folder[flagName].Value
	end
end

export type DebugFlags = {
	RunningUnderCLI: () -> boolean,
	RunTests: () -> boolean,
	LogTestsQuiet: () -> boolean,
	LogAnalytics: () -> boolean,
	RunDeveloperFrameworkTests: () -> boolean,
	EnableRoactConfigs: () -> boolean,
}

local DebugFlags: DebugFlags = {
	RunningUnderCLI = defineFlag("RunningUnderCLI", inCLI),
	RunTests = defineFlag("RunTests", false),
	LogTestsQuiet = defineFlag("LogTestsQuiet"),
	LogAnalytics = defineFlag("LogAnalytics"),
	RunDeveloperFrameworkTests = defineFlag("RunDeveloperFrameworkTests"),
	EnableRoactConfigs = defineFlag("EnableRoactConfigs", inCLI or hasInternalPermission),
}

return DebugFlags
