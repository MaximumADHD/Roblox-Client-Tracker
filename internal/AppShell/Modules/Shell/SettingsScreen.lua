local UseRoactOverscan = settings():GetFFlag("XboxRoactOverscan")

local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Templates = ShellModules:FindFirstChild("Templates")

local SettingsScreenConsole = require(Templates:FindFirstChild('SettingsScreenConsole'))

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local UserInputService = game:GetService('UserInputService')
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)

local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local OverscanScreenModule = require(ShellModules:FindFirstChild('OverscanScreen'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local AccountScreen = require(ShellModules:FindFirstChild('AccountScreen'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createSettingsScreen()
	local this = BaseScreen(true)

	local userInputServiceChangedCn = nil

	function this:GetVersionInfo()
		if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
			return {Major = 1, Minor = 0, Build = 0, Revision = 0}
		elseif PlatformService then
			return PlatformService:GetVersionIdInfo();
		end

		return {Major = 1, Minor = 1, Build = 1, Revision = 1}
	end

	function this:OpenAccountScreen()
		local accountScreen = AccountScreen()
		if accountScreen then
			accountScreen:SetParent(this.view.Container.Parent)
			ScreenManager:OpenScreen(accountScreen, true)
		else
			ScreenManager:OpenScreen(ErrorOverlay(Errors.Default), false)
		end
	end

	function this:OpenSwitchProfileScreen()
		if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
			ScreenManager:OpenScreen(ErrorOverlay(Errors.Test.FeatureNotAvailableInStudio), false)
			return
		end

		if ThirdPartyUserService then
			ThirdPartyUserService:ShowAccountPicker()
		end
	end

	function this:OpenOverscanScreen()
		if UseRoactOverscan then
			local RoactScreenManagerWrapper = require(ShellModules.Components.RoactScreenManagerWrapper)
			local overscanComponent = require(ShellModules.Components.Overscan.Overscan)
			local overscanElement = RoactScreenManagerWrapper.new(overscanComponent, GuiRoot, {
				ImageVisible = true,
				BackgroundTransparency = 0,
			})

			ScreenManager:OpenScreen(overscanElement)
		else
			ScreenManager:OpenScreen(OverscanScreenModule(GuiRoot))
		end
	end

	function this:OpenHelpScreen()
		if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
			ScreenManager:OpenScreen(ErrorOverlay(Errors.Test.FeatureNotAvailableInStudio), false)
		else
			local success, result = pcall(function()
				-- errors will be handled by xbox
				return PlatformService:PopupHelpUI()
			end)
		end
	end

	local function CreateView()
		return SettingsScreenConsole(this)
	end

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('SettingsScreenId')}
	end

	--Override
	function this:GetDefaultSelectionObject()
		return this.view and this.view:GetDefaultSelectionObject()
	end

	local baseHide = this.Hide
	function this:Hide()
		baseHide(self)
		if userInputServiceChangedCn then
			userInputServiceChangedCn:disconnect()
			userInputServiceChangedCn = nil
		end
	end

	function this:ScreenRemoved()
		if PlatformService ~= nil then
			PlatformService:SaveSettings()
		end
	end

	this.view = CreateView()
	this:SetTitle(Strings:LocalizedString("SettingsWord"))

	return this
end

return createSettingsScreen
