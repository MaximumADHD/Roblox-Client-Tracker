local Workspace = game:GetService("Workspace")

local debugFlagsFolderName = "ToolboxDebugFlags"

local function findDebugFlagsFolder()
	return Workspace:FindFirstChild(debugFlagsFolderName)
end

local function findOrCreateDebugFlagsFolder()
	local debugFlagsFolder = Workspace:FindFirstChild(debugFlagsFolderName)
	if not debugFlagsFolder then
		debugFlagsFolder = Instance.new("Folder")
		debugFlagsFolder.Name = debugFlagsFolderName
		debugFlagsFolder.Parent = Workspace
	end
	return debugFlagsFolder
end

local function getDebugFlagValue(flagName)
	local debugFlagsFolder = findDebugFlagsFolder()
	if not debugFlagsFolder then
		return false
	end
	local val = debugFlagsFolder:FindFirstChild(flagName)
	if val then
		return val.Value
	end
	return false
end

local DebugFlags = {}

function DebugFlags.shouldRunTests()
	-- Have to wait to make sure workSpace is ready.
	wait(0.3)
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

function DebugFlags.shouldUseTestCustomLocale()
	return getDebugFlagValue("ToolboxUseTestCustomLocale")
end

function DebugFlags.shouldUseTestRealLocale()
	return getDebugFlagValue("ToolboxUseTestRealLocaleId")
end

function DebugFlags.shouldDebugOverrideAssetLoading()
	return getDebugFlagValue("ToolboxDebugOverrideAssetLoading")
end

function DebugFlags.getOrCreateTestCustomLocale()
	local debugFlagsFolder = findOrCreateDebugFlagsFolder()

	local valName = "ToolboxCustomLocale"
	local val = debugFlagsFolder:FindFirstChild(valName)
	if not val then
		val = Instance.new("StringValue")
		val.Name = valName
		val.Value = "CustomLocale"
		val.Parent = debugFlagsFolder
	end

	return val
end

function DebugFlags.getOrCreateTestRealLocale()
	local debugFlagsFolder = findOrCreateDebugFlagsFolder()

	local valName = "ToolboxRealLocale"
	local val = debugFlagsFolder:FindFirstChild(valName)
	if not val then
		val = Instance.new("StringValue")
		val.Name = valName
		val.Value = "en-us"
		val.Parent = debugFlagsFolder
	end

	return val
end

return DebugFlags
