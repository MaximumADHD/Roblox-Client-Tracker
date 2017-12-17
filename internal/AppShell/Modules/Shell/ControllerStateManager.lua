--[[
				// ControllerStateManager.lua

				// Handles controller state changes
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)
local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService('GuiService')

local Http = require(ShellModules:FindFirstChild('Http'))
local NoActionOverlay = require(ShellModules:FindFirstChild('NoActionOverlay'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Alerts = require(ShellModules:FindFirstChild('Alerts'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))

local ControllerStateManager = {}

local LostUserGamepadCn = nil
local GainedUserGamepadCn = nil

local noActionOverlay = nil

local DATAMODEL_TYPE = {
	APP_SHELL = 0;
	GAME = 1;
}


local PRESENCE_POLL_INTERVAL = Utility.GetFastVariable("XboxPresencePolling")

local AnyButtonBeganConnection = nil
local SelectionChangedConnection = nil
local ViewChangedConnection = nil
local AnyActionDone = false
local LastTimerInfo = {flag = true};

local function restartPresenceUpdateTimer()
	LastTimerInfo.flag = false;

	local info = { flag = true }

	spawn(function()
		AnyActionDone = true
		while info.flag do
			if AnyActionDone then
				Http:RegisterAppPresence()
			end
			AnyActionDone = false
			wait(PRESENCE_POLL_INTERVAL)
		end
	end)

	Utility.DisconnectEvent(AnyButtonBeganConnection)
	AnyButtonBeganConnection = UserInputService.InputBegan:connect(function(inputObject)
		AnyActionDone = true
	end)

	Utility.DisconnectEvent(SelectionChangedConnection)
	SelectionChangedConnection = GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
		AnyActionDone = true
	end)

	LastTimerInfo = info
end

local function stopPresenceUpdateTimer()
	LastTimerInfo.flag = false;
	Utility.DisconnectEvent(AnyButtonBeganConnection)
	Utility.DisconnectEvent(SelectionChangedConnection)
end

local function closeOverlay(dataModelType)
	if not noActionOverlay then return end
	if dataModelType == DATAMODEL_TYPE.GAME then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
		--Close overlay, don't focus on below screen
		noActionOverlay:Hide()
	else
		ScreenManager:CloseCurrent()
	end
	noActionOverlay = nil
end

local function showErrorOverlay(alert, dataModelType)
	if noActionOverlay then return end
	noActionOverlay = NoActionOverlay(alert)
	if dataModelType == DATAMODEL_TYPE.GAME then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		noActionOverlay:Show()
	else
		ScreenManager:OpenScreen(noActionOverlay, false)
	end
end

local function onLostUserGamepad(dataModelType)
	local userDisplayName = ""
	if ThirdPartyUserService then
		userDisplayName = ThirdPartyUserService:GetUserDisplayName()
	end

	-- create alert
	local alert = Alerts.LostConnection["Controller"]
	alert.Msg = string.format(alert.Msg, userDisplayName)
	showErrorOverlay(alert, dataModelType)
end

local function onGainedUserGamepad(dataModelType)
	closeOverlay(dataModelType)
end

local function disconnectEvents()
	LostUserGamepadCn = Utility.DisconnectEvent(LostUserGamepadCn)
	GainedUserGamepadCn = Utility.DisconnectEvent(GainedUserGamepadCn)
end

function initAppPresenceReporting()
	restartPresenceUpdateTimer()

	Utility.DisconnectEvent(ViewChangedConnection)
	ViewChangedConnection = PlatformService.ViewChanged:connect(
		function(value)
			if value == DATAMODEL_TYPE.APP_SHELL then
				restartPresenceUpdateTimer()
			else
				stopPresenceUpdateTimer()
			end
		end
	)
end

--ControllerStateManager initialized from AppHome.lua(when in app shell)/NotificationScript2.lua(when in game)
--Note: The ControllerStateManager module scirpt is required on different DMs (app shell & game).
--Thus, whenever we enter a new game, this module will run once as it's required on a new game DM.
function ControllerStateManager:Initialize()
	if not PlatformService then return end

	local dataModelType = PlatformService.DatamodelType

	disconnectEvents()
	if ThirdPartyUserService then
		LostUserGamepadCn = ThirdPartyUserService.ActiveGamepadRemoved:connect(function()
			onLostUserGamepad(dataModelType)
		end)
		GainedUserGamepadCn = ThirdPartyUserService.ActiveGamepadAdded:connect(function()
			onGainedUserGamepad(dataModelType)
		end)
	end

	if dataModelType == DATAMODEL_TYPE.APP_SHELL then
		EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "AchievementManager",
			function()
				initAppPresenceReporting();
			end
		)
	end
end

function ControllerStateManager:CheckUserConnected()
	if not PlatformService then return end

	local isGamepadConnected = UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1)
	if not isGamepadConnected then
		onLostUserGamepad(PlatformService.DatamodelType)
	end
end

return ControllerStateManager
