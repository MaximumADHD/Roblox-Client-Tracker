--[[
	This module represents the Shift Lock setting option in the In-Experience Menu Settings page
]]

local Settings = script:FindFirstAncestor("Settings")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local UserSettings = UserSettings()
local UserGameSettings = UserSettings.GameSettings

-- Modules
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local SettingEnum = SettingsServiceLib.SettingEnum
local Constants = require(Settings.Integrations.Constants)

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Core Module

local function UINavValue()
	local value = ValueChangedSignal.new(UserGameSettings.UiNavigationKeyBindEnabled)

	value:connect(function(newEnabled)
		local oldEnabled = UserGameSettings.UiNavigationKeyBindEnabled
		if oldEnabled == newEnabled then
			return
		end

		UserGameSettings.UiNavigationKeyBindEnabled = newEnabled
	end)

	return value
end


local function UINavAvailability()
	local availability = AvailabilitySignal.new(UserInputService.KeyboardEnabled)

	UserInputService:GetPropertyChangedSignal("KeyboardEnabled"):Connect(function()
		availability:set(UserInputService.KeyboardEnabled)
	end)

	return availability
end


local UINavToggleConfig = {
	id = 'ui-nav-toggle',
	field_type = SettingEnum.Toggle,
	label = "CoreScripts.InGameMenu.GameSettings.UINavToggle",
	description = "CoreScripts.InGameMenu.GameSettings.UINavToggleDescription",
	alreadyLocalized = false,
	onChanged = UINavValue(),
	availability = UINavAvailability(),
	layoutOrder = SettingsLayoutOrder.UiNavigationKeyBindEnabledFrame,
}

return UINavToggleConfig
