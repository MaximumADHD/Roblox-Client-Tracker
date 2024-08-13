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

local GetFFlagReplaceWaitForChildDependancy2952 = require(CorePackages.Workspace.Packages.SharedFlags).ReplaceWaitForChildDependancyFlags.GetFFlag2952
local RobloxGui = if GetFFlagReplaceWaitForChildDependancy2952() then CoreGuiService.RobloxGui else CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = if GetFFlagReplaceWaitForChildDependancy2952() then RobloxGui.Modules else RobloxGui:WaitForChild("Modules")

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
local isFirstPauseChange = true -- Skip showing UI on first pause to avoid displaying during loading process.

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

Player:GetPropertyChangedSignal("GameplayPaused"):Connect(togglePauseState)

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