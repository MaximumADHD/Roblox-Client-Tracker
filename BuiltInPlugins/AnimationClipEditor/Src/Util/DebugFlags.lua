local Workspace = game:GetService("Workspace")

local FLAGS_FOLDER = "AnimationClipEditorFlags"

local inCLI = pcall(function()
	-- Process service only available in CLI
	return game:GetService("ProcessService")
end)

local function defineFlag(flagName: string, default: boolean): (() -> boolean)
	default = default or false
	return function()
		local folder = Workspace:FindFirstChild(FLAGS_FOLDER)
		if not folder or not folder:FindFirstChild(flagName) then
			return default
		end
		return folder[flagName].Value
	end
end

local DebugFlags = {
	RunTests = defineFlag("RunTests"),
	RunRhodiumTests = defineFlag("RunRhodiumTests"),
	LogRoduxEvents = defineFlag("LogRoduxEvents"),
	LogAnalytics = defineFlag("LogAnalytics"),
	RunningUnderCLI = defineFlag("RunningUnderCLI", inCLI),
}

return DebugFlags
