local workspace = game:GetService("Workspace")
local flags = workspace:FindFirstChild("AnimationClipEditorFlags")

local DebugFlags = {}

function DebugFlags.RunTests()
	if flags then
		return flags:FindFirstChild("RunTests") and flags.RunTests.Value
	else
		return false
	end
end

function DebugFlags.RunRhodiumTests()
	if flags then
		return flags:FindFirstChild("RunRhodiumTests") and flags.RunRhodiumTests.Value
	else
		return false
	end
end

function DebugFlags.LogRoduxEvents()
	if flags then
		return flags:FindFirstChild("LogRoduxEvents") and flags.LogRoduxEvents.Value
	else
		return false
	end
end

function DebugFlags.LogAnalytics()
	if flags then
		return flags:FindFirstChild("LogAnalytics") and flags.LogAnalytics.Value
	else
		return false
	end
end

return DebugFlags