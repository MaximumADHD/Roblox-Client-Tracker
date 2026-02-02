--[[
	This module represents the Reduced Motion setting option in the In-Experience Menu Settings page
]]

local Settings = script:FindFirstAncestor("Settings")
local CorePackages = game:GetService("CorePackages")
local UserSettings = UserSettings()
local UserGameSettings = UserSettings.GameSettings

-- Modules
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local SettingEnum = SettingsServiceLib.SettingEnum
local Constants = require(Settings.Integrations.Constants)

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Core Module

local function ReducedMotionValue()
	local initValue = UserGameSettings.ReducedMotion
	local value = ValueChangedSignal.new(initValue)

	value:connect(function(reduceMotion: boolean)
		local oldReduceMotion = UserGameSettings.ReducedMotion
		if oldReduceMotion == reduceMotion then
			return
		end

		UserGameSettings.ReducedMotion = reduceMotion
	end)

	return value
end

local ReducedMotion = {
	id = 'reduced-motion',
	field_type = SettingEnum.Toggle,
	label = "CoreScripts.InGameMenu.GameSettings.ReduceMotionLabel",
	description = "CoreScripts.InGameMenu.GameSettings.ReduceMotionDescription",
	alreadyLocalized = false,
	onChanged = ReducedMotionValue(),
	layoutOrder = SettingsLayoutOrder.ReducedMotionFrame,
}

return ReducedMotion
