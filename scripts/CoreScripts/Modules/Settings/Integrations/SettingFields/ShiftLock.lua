--[[
	This module represents the Shift Lock setting option in the In-Experience Menu Settings page
]]

local Settings = script:FindFirstAncestor("Settings")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local UserSettings = UserSettings()
local UserGameSettings = UserSettings.GameSettings
local Players = game:GetService("Players")

-- Modules
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local VisibilitySignal = SettingsServiceLib.VisibilitySignal
local SettingEnum = SettingsServiceLib.SettingEnum
local Constants = require(Settings.Integrations.Constants)
local LocalPlayer = Players.LocalPlayer

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Core Module

local CONTROL_MODE_ENUM = {
	[Enum.ControlMode.MouseLockSwitch] = true,
	[Enum.ControlMode.Classic] = false,
}

local function ShiftLockValue()
	local initValue = CONTROL_MODE_ENUM[UserGameSettings.ControlMode]
	local value = ValueChangedSignal.new(initValue)
	value:connect(function(enable_shift_lock: boolean)
		local old_enable_shift_lock = CONTROL_MODE_ENUM[UserGameSettings.ControlMode]
		if old_enable_shift_lock == enable_shift_lock then
			return
		end

		UserGameSettings.ControlMode = if enable_shift_lock then Enum.ControlMode.MouseLockSwitch else Enum.ControlMode.Classic
	end)
	return value
end

local function ShiftLockAvailability(valueSignal, visibilitySignal)
	local function available()
		local devEnableShiftLock = if LocalPlayer then LocalPlayer.DevEnableMouseLock else true
		return UserInputService.MouseEnabled and UserInputService.KeyboardEnabled and devEnableShiftLock
	end
	local availability = AvailabilitySignal.new(available())

	availability:connect(function(available: boolean)
		if available then
			visibilitySignal:set(available)
		end
	end, true)

	if LocalPlayer then
		LocalPlayer.Changed:Connect(function(property)
			if property == "DevEnableMouseLock" then
				availability:set(available())
			end
		end)
	end

	UserInputService.Changed:Connect(function(prop)
		if prop == "MouseEnabled" or prop == "KeyboardEnabled" then
			availability:set(available())
		end
	end)

	return availability
end

local value = ShiftLockValue()
local visible = VisibilitySignal.new(true)
local available = ShiftLockAvailability(value, visible)

local ShiftLockConfig = {
	id = 'shift-lock',
	field_type = SettingEnum.Toggle,
	label = "CoreScripts.InGameMenu.GameSettings.ShiftLock",
	alreadyLocalized = false,
	onChanged = value,
	availability = available,
	visibility = visible,
	layoutOrder = SettingsLayoutOrder.ShiftLockFrame,
}

return ShiftLockConfig
