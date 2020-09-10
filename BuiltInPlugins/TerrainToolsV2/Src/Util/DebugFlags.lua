local Workspace = game:GetService("Workspace")

local FLAGS_FOLDER = "TerrainToolsFlags"

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
DebugFlags.RunningUnderCLI = defineFlag("RunningUnderCLI")
-- TODO: Maybe flag combo, if RunningUnderCLI is true then RunTests is also true?
DebugFlags.RunTests = defineFlag("RunTests")
DebugFlags.LogTestsQuiet = defineFlag("LogTestsQuiet")
DebugFlags.RunDeveloperFrameworkTests = defineFlag("RunDeveloperFrameworkTests")
DebugFlags.LogAnalytics = defineFlag("LogAnalytics")
return DebugFlags
