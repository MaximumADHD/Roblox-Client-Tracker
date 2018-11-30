-- Do not ship this file
-- Run this file in Studio to generate the folder with debug flags

local flags = {
	RunToolboxTests = false,
	ToolboxDebugState = false,
	ToolboxDebugUrls = false,
	ToolboxDebugWarnings = false,
	ToolboxDisableTooltips = false,
	ToolboxLogAnalytics = false,
	ToolboxLogSettings = false,
	ToolboxUseTestCustomLocale = false,
	ToolboxUseTestRealLocaleId = false,
}

local workspace = game:GetService("Workspace")
local target = workspace:FindFirstChild("ToolboxDebugFlags")
if not target then
	target = Instance.new("Folder")
	target.Name = "ToolboxDebugFlags"
	target.Parent = workspace
end

for flagName, flagValue in pairs(flags) do
	if not target:FindFirstChild(flagName) then
		local flagInstance = Instance.new("BoolValue")
		flagInstance.Name = flagName
		flagInstance.Value = flagValue

		flagInstance.Parent = target
	end
end
