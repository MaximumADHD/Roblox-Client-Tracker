local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")

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
		return nil
	end
	local val = debugFlagsFolder:FindFirstChild(flagName)
	if val then
		return val.Value
	end

	return nil
end

local DebugFlags = {}

function DebugFlags.shouldRunTests()
	return getDebugFlagValue("RunTests")
end

function DebugFlags.shouldRunRhodiumTests()
	return getDebugFlagValue("RunRhodiumTests")
end

function DebugFlags.logTestsQuiet()
	return getDebugFlagValue("LogTestsQuiet")
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
	local userSetting = getDebugFlagValue("ToolboxDebugWarnings")

	if userSetting ~= nil then
		return userSetting
	else
		return StudioService:HasInternalPermission()
	end
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
