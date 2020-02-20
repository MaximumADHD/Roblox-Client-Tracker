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

local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local FFlagDisableAutoTranslateForKeyTranslatedContent = require(RobloxGui.Modules.Flags.FFlagDisableAutoTranslateForKeyTranslatedContent)

local Player = PlayerService.LocalPlayer

while not Player do
	wait()
	Player = PlayerService.LocalPlayer
end

-- MODULES
local NetworkPauseNotification = require(CoreGuiModules.NetworkPauseNotification)
local create = require(CoreGuiModules.Common.Create)

-- VARIABLES
-- Skip showing UI on first pause to avoid displaying during loading process.
local isFirstPauseChange = true

local Notification = NetworkPauseNotification.new()

-- container for the notification
local NetworkPauseGui = create "ScreenGui" {

	Name = "RobloxNetworkPauseNotification",
	OnTopOfCoreBlur = true,
	DisplayOrder = 8,
	Parent = CoreGuiService,
	AutoLocalize = not FFlagDisableAutoTranslateForKeyTranslatedContent

}

local function togglePauseState()
	local paused = Player.GameplayPaused and NetworkPauseGui.Enabled and not isFirstPauseChange
    isFirstPauseChange = false
	if paused then
		Notification:Show()
	else
		Notification:Hide()
	end
	RunService:SetRobloxGuiFocused(paused)
end

Player:GetPropertyChangedSignal("GameplayPaused"):Connect(togglePauseState)

local function enableNotification(enabled)
	assert(type(enabled) == "boolean", "Specified argument 'enabled' must be of type boolean")
	if enabled == NetworkPauseGui.Enabled then return end
	NetworkPauseGui.Enabled = enabled
	togglePauseState()
end

Notification:SetParent(NetworkPauseGui)
GuiService.NetworkPausedEnabledChanged:Connect(enableNotification)