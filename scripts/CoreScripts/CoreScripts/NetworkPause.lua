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

local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local Player = PlayerService.LocalPlayer

while not Player do
	wait()
	Player = PlayerService.LocalPlayer
end

-- MODULES
local NetworkPauseNotification = require(CoreGuiModules.NetworkPauseNotification)
local create = require(CoreGuiModules.Common.Create)

-- VARIABLES
local isEnabled = true

local Notification = NetworkPauseNotification.new()

-- container for the notification
local NetworkPauseGui = create "ScreenGui" {

	Name = "RobloxNetworkPauseNotification",
	OnTopOfCoreBlur = true,
	DisplayOrder = 8,
	Parent = CoreGuiService

}

local function togglePauseState()
	local paused = Player.GameplayPaused and isEnabled
	if paused then
		Notification:Show()
	else
		Notification:Hide()
	end
	RunService:SetRobloxGuiFocused(paused)
end

Player:GetPropertyChangedSignal("GameplayPaused"):Connect(togglePauseState)

-- this method exists for the purpose of a future API proposal, allowing developers to disable the GUI.
local function enableNotification(enabled)
	assert(type(enabled) == "boolean", "Specified argument 'enabled' must be of type boolean")
	if enabled == isEnabled then return end
	NetworkPauseGui.Enabled = enabled
	isEnabled = enabled
	togglePauseState()
end

Notification:SetParent(NetworkPauseGui)