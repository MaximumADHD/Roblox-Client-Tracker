--[[
			// Analytics.lua

			// Fetches analytics data for console platform
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))

--[[ Services ]]--
local AnalyticsService = nil
pcall(function() AnalyticsService = game:GetService('AnalyticsService') end)
local UserInputService = game:GetService('UserInputService')

local Analytics = {}

--[[ Helper Functions ]]--
local function setRBXEvent(eventName, additionalArgs)
	local target, eventContext = nil, nil
	local success, result = pcall(function()
		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
			target = "console"
			eventContext = "XboxOne"
			eventName = eventName or ""
			additionalArgs = additionalArgs or {}
			AnalyticsService:SetRBXEvent(target, eventContext, eventName, additionalArgs)
		end
	end)

	if not success then
		Utility.DebugLog("setRBXEvent() failed because", result, "Input: target:", target, " eventContext:", eventContext, " eventName:", eventName)
	end

	return success
end

local function setRBXEventStream(eventName, additionalArgs)
	local target, eventContext = nil, nil
	local success, result = pcall(function()
		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
			target = "console"
			eventContext = "XboxOne"
			eventName = eventName or ""
			additionalArgs = additionalArgs or {}
			AnalyticsService:SetRBXEventStream(target, eventContext, eventName, additionalArgs)
		end
	end)

	if not success then
		Utility.DebugLog("setRBXEventStream() failed because", result, "Input: target:", target, " eventContext:", eventContext, " eventName:", eventName)
	end

	return success
end

local function releaseRBXEventStream(eventName)
	local target = nil
	local success, result = pcall(function()
		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
			target = "console"
			AnalyticsService:ReleaseRBXEventStream(target)
		end
	end)

	if not success then
		Utility.DebugLog("releaseRBXEventStream() failed because", result, "Input: target:", target)
	end

	return success
end

local function updateHeartbeatObject(additionalArgs)
	local success, result = pcall(function()
		AnalyticsService:UpdateHeartbeatObject(additionalArgs)
	end)

	if not success then
		Utility.DebugLog("UpdateHeartbeatObject() failed because ", result, "Input: args:", additionalArgs)
	end

	return success
end

local function reportCounter(counterName, amount)
	local success, result = pcall(function()
		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
			counterName = counterName or ""
			counterName = "Xbox-"..tostring(counterName)
			amount = amount or 1
			AnalyticsService:ReportCounter(counterName, amount)
		end
	end)

	if not success then
		Utility.DebugLog("reportCounter() failed because", result, "Input: counterName:", counterName, "amount:", amount)
	end

	return success
end

--[[ Public API ]]--
function Analytics.SetRBXEvent(eventName, additionalArgs)
	setRBXEvent(eventName, additionalArgs)
end

-- Non-real time
function Analytics.SetRBXEventStream(eventName, additionalArgs)
	setRBXEventStream(eventName, additionalArgs)
end

function Analytics.UpdateHeartbeatObject(additionalArgs)
	updateHeartbeatObject(additionalArgs)
end

-- Real time
function Analytics.ReportCounter(counterName, amount)
	reportCounter(counterName, amount)
end


local WidgetNames = {
	--Widget Name
	["WidgetId"] = "WidgetName";
	["AppHubId"] = "AppHub";
	["AvatarEditorScreenId"] = "AvatarEditorScreen";
	["AvatarPaneId"] = "AvatarPane";
	["AvatarTileId"] = "AvatarTile";
	["BadgeOverlayId"] = "BadgeOverlay";
	["BaseCarouselScreenId"] = "BaseCarouselScreen";
	["BaseOverlayId"] = "BaseOverlay";
	["BaseTileId"] = "BaseTile";
	["ConfirmPromptId"] = "ConfirmPrompt";
	["DisableCrossplayOverlayId"] = "DisableCrossplayOverlay";
	["EnableCrossplayOverlayId"] = "EnableCrossplayOverlay";
	["EngagementScreenId"] = "EngagementScreen";
	["ErrorOverlayId"] = "ErrorOverlay";
	["GameDetailId"] = "GameDetail";
	["GameGenreScreenId"] = "GameGenreScreen";
	["GamesPaneId"] = "GamesPane";
	["GameSearchScreenId"] = "GameSearchScreen";
	["HomePaneId"] = "HomePane";
	["ImageOverlayId"] = "ImageOverlay";
	["LinkAccountScreenId"] = "LinkAccountScreen";  --AKA "Sign In Screen"
	["NoActionOverlayId"] = "NoActionOverlay";
	["OutfitTileId"] = "OutfitTile";
	["OverscanScreenId"] = "OverscanScreen";
	["PurchasePackagePromptId"] = "PurchasePackagePrompt";
	["ReportOverlayId"] = "ReportOverlay";
	["RobuxBalanceOverlayId"] = "RobuxBalanceOverlay";
	["SetAccountCredentialsScreenId"] = "SetAccountCredentialsScreen"; --AKA "Sign Up Screen" and "Microwave Screen" (User sees it as two different screens)
	["SettingsScreenId"] = "SettingsScreen";
	["SideBarId"] = "SideBar";
	["SignInScreenId"] = "SignInScreen";  --AKA "Choice Screen"
	["SocialPaneId"] = "SocialPane";
	["StorePaneId"] = "StorePane";
	["TabDockId"] = "TabDock";
	["UnlinkAccountOverlayId"] = "UnlinkAccountOverlay";
	["UnlinkAccountScreenId"] = "UnlinkAccountScreen";
}

function Analytics.WidgetNames(stringKey)
	local result = WidgetNames and WidgetNames[stringKey]
	if not result then
		Utility.DebugLog("Analytics.WidgetNames: Could not find widget name for:" , stringKey)
		result = stringKey
	end
	return result
end

return Analytics
