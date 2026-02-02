--[[
	This module represents the FullScreen setting option in the In-Experience Menu Settings page
]]

local Settings = script:FindFirstAncestor("Settings")
local CorePackages = game:GetService("CorePackages")
local UserSettings = UserSettings()
local UserGameSettings = UserSettings.GameSettings
local GuiService = game:GetService("GuiService")

-- Modules
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local SettingEnum = SettingsServiceLib.SettingEnum
local Constants = require(Settings.Integrations.Constants)
local Utils = require(Settings.Integrations.Utils)

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Fullscreen

local function FullScreenValue()
	local value = ValueChangedSignal.new(UserGameSettings:InFullScreen())

	value:connect(function(newValue)
		local oldValue = UserGameSettings:InFullScreen()
		if newValue == oldValue then
			return
		end
		GuiService:ToggleFullscreen()
	end, true)

	UserGameSettings.FullscreenChanged:Connect(function(isFullScreen)
		value:set(isFullScreen)
	end)

	return value
end

local fullscreenValue = FullScreenValue()


local function initAvailability()
	return Utils.getDeviceType() == Utils.DeviceTypes.Desktop or Utils.getDeviceType() == Utils.DeviceTypes.Unknown
end

local FullScreenAvailability = AvailabilitySignal.new(initAvailability())

local FullScreenConfig = {
	id = "fullscreen",
	field_type = SettingEnum.Toggle,
	label = "CoreScripts.InGameMenu.GameSettings.FullScreen",
	layoutOrder = SettingsLayoutOrder.FullScreenFrame :: number,
	onChanged = fullscreenValue,
	alreadyLocalized = false,
	availability = FullScreenAvailability,
}


return FullScreenConfig
