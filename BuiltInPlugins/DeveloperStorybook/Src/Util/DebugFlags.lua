local Workspace = game:GetService("Workspace")

local FLAGS_FOLDER = "DeveloperStorybookFlags"

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
DebugFlags.RunDeveloperFrameworkTests = defineFlag("RunDeveloperFrameworkTests")
DebugFlags.RunningUnderCLI = defineFlag("RunningUnderCLI")
DebugFlags.RunTests = defineFlag("RunTests")
return DebugFlags
