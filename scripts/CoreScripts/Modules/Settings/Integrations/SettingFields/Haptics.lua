--[[
	This module represents the Haptics setting option in the In-Experience Menu Settings page
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
local HAPTIC_STATE = {
	ON = true,
	OFF = false,
}

local HAPTIC_STRENGTH = {
	MAX = 1,
	MIN = 0,
}

-- Core Module
local function HapticValue()
	local HapticState = function()
		return if UserGameSettings.HapticStrength == HAPTIC_STRENGTH.MIN then HAPTIC_STATE.OFF else HAPTIC_STATE.ON
	end
	
	local valueSignal = ValueChangedSignal.new(HapticState())
	valueSignal:connect(function(newValue: boolean)
		local oldValue = HapticState()
		if oldValue == newValue then
			return
		end
		UserGameSettings.HapticStrength = if newValue == HAPTIC_STATE.ON then HAPTIC_STRENGTH.MAX else HAPTIC_STRENGTH.MIN
		end)

	return valueSignal
end

local HapticsConfig = {
	id = "haptics",
	field_type = SettingEnum.Toggle,
	label = "CoreScripts.InGameMenu.GameSettings.Haptics",
	layoutOrder = SettingsLayoutOrder.HapticsFrame,
	onChanged = HapticValue(),
	alreadyLocalized = false,
}

return HapticsConfig
