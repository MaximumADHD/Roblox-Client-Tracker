--!nonstrict
--[[
	// FileName: NetworkPause.lua
	// Written by: woot3
	// Description: Code for network pausing during streaming enabled.
]]

-- SERVICES
local PlayerService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local StarterGuiService = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGuiService.RobloxGui
local CoreGuiModules = RobloxGui.Modules

local Player = PlayerService.LocalPlayer

while not Player do
	wait()
	Player = PlayerService.LocalPlayer
end

-- MODULES
local NetworkPauseNotification = require(CoreGuiModules.NetworkPauseNotification)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

-- VARIABLES
local FFlagGameplayPausePausesInteraction = game:DefineFastFlag("GameplayPausePausesInteraction", false)
local FFlagGameplayPauseAntiFlicker = game:DefineFastFlag("GameplayPauseAntiFlicker", false)
local FIntRapidGameplayPauseIntervalMs = game:DefineFastInt("RapidGameplayPauseIntervalMs", 1000) -- If we repause within this time since the last pause, keep the pause notification up longer to prevent oscillation
local FIntRapidGameplayPauseMinNotificationDurationMs = game:DefineFastInt("RapidGameplayPauseMinNotificationDurationMs", 500) -- Min time to show pause notification for repeat pauses
local isFirstPauseChange = true -- Skip showing UI on first pause to avoid displaying during loading process.
local inRapidPause = false -- Tracks whether we've seen recent rapid pause/unpause/pause cycles
local lastUnpauseTime = os.clock()
local dismissDelayTimerHandle = nil
local updatePauseState -- Forward declaration

local Notification = NetworkPauseNotification.new()

-- container for the notification
local NetworkPauseContainer = FFlagGameplayPausePausesInteraction and Create "Frame" {
	Name = "Container",
	Size = UDim2.new(1, 0, 1, 0),
	BackgroundTransparency = 1,
	Active = false
}

local NetworkPauseGui = Create "ScreenGui" {

	Name = "RobloxNetworkPauseNotification",
	OnTopOfCoreBlur = true,
	DisplayOrder = 8,
	Parent = CoreGuiService,
	IgnoreGuiInset = FFlagGameplayPausePausesInteraction,
	AutoLocalize = false,

	NetworkPauseContainer

}

local function cancelNotificationDismissTimer()
	if dismissDelayTimerHandle ~= nil then
		task.cancel(dismissDelayTimerHandle)
	end
end

local function scheduleNotificationDismissTimer()
	cancelNotificationDismissTimer()
	dismissDelayTimerHandle = task.delay(FIntRapidGameplayPauseMinNotificationDurationMs / 1000, function()
		updatePauseState()
	end)
end

local function setPauseUIState(paused)
	if paused then
		Notification:Show()
	else
		Notification:Hide()
	end

	if FFlagGameplayPausePausesInteraction then
		NetworkPauseContainer.Active = paused
	end
	RunService:SetRobloxGuiFocused(paused)
end

function updatePauseState()
	local paused = Player.GameplayPaused and NetworkPauseGui.Enabled and not isFirstPauseChange
	isFirstPauseChange = false

	if paused then
		-- Enter paused state
		setPauseUIState(paused)
		inRapidPause = (os.clock() - lastUnpauseTime) * 1000 < FIntRapidGameplayPauseIntervalMs
		cancelNotificationDismissTimer()
	else
		if inRapidPause then
			-- We got an unpause signal but we've seen recent rapid pause state oscillations.
			-- Wait a short time before dismissing the UI to avoid any UI flickering.
			scheduleNotificationDismissTimer()
		else
			-- Leave paused state
			inRapidPause = false
			setPauseUIState(paused)
		end

		lastUnpauseTime = os.clock()
	end
end

local function togglePauseState()
	local paused = Player.GameplayPaused and NetworkPauseGui.Enabled and not isFirstPauseChange
	isFirstPauseChange = false
	if paused then
		Notification:Show()
	else
		Notification:Hide()
	end
	if FFlagGameplayPausePausesInteraction then
		NetworkPauseContainer.Active = paused
	end
	RunService:SetRobloxGuiFocused(paused)
end

if FFlagGameplayPauseAntiFlicker then
	Player:GetPropertyChangedSignal("GameplayPaused"):Connect(updatePauseState)
else
	Player:GetPropertyChangedSignal("GameplayPaused"):Connect(togglePauseState)
end

local function enableNotification(enabled)
	assert(type(enabled) == "boolean", "Specified argument 'enabled' must be of type boolean")
	if enabled == NetworkPauseGui.Enabled then return end
	NetworkPauseGui.Enabled = enabled
	togglePauseState()
end

if FFlagGameplayPausePausesInteraction then
	Notification:SetParent(NetworkPauseContainer)
else
	Notification:SetParent(NetworkPauseGui)
end

GuiService.NetworkPausedEnabledChanged:Connect(enableNotification)