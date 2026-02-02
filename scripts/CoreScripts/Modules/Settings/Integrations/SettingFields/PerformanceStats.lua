--[[
	This module represents the Performance Stats setting option in the In-Experience Menu Settings page
]]

local Settings = script:FindFirstAncestor("Settings")
local CorePackages = game:GetService("CorePackages")
local UserSettings = UserSettings()
local UserGameSettings = UserSettings.GameSettings
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

-- Modules
local SettingsServiceLib = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal = SettingsServiceLib.ValueChangedSignal
local AvailabilitySignal = SettingsServiceLib.AvailabilitySignal
local SettingEnum = SettingsServiceLib.SettingEnum
local Constants = require(Settings.Integrations.Constants)

-- Constants
local SettingsLayoutOrder = Constants.GAMESETTINGS.LAYOUT_ORDER

-- Core Module

local function PerfStatsValue()
	local value = ValueChangedSignal.new(UserGameSettings.PerformanceStatsVisible)

	value:connect(function(newVisible)
		local oldVisible = UserGameSettings.PerformanceStatsVisible
		if oldVisible == newVisible then
			return
		end

		UserGameSettings.PerformanceStatsVisible = newVisible
	end)

	-- TODO APPEXP-2200: Fix CoreGUI Perf Stats bug
	UserGameSettings.PerformanceStatsVisibleChanged:Connect(function()
		value:set(UserGameSettings.PerformanceStatsVisible)
	end)

	return value
end


local PerfStatsAvailable = AvailabilitySignal.new(not CachedPolicyService:IsSubjectToChinaPolicies())

local PerfStatsConfig = {
	id = 'perf-stats',
	field_type = SettingEnum.Toggle,
	alreadyLocalized = false,
	label = "CoreScripts.InGameMenu.GameSettings.ShowPerfStats",
	onChanged = PerfStatsValue(),
	availability = PerfStatsAvailable,
	layoutOrder = SettingsLayoutOrder.PerformanceStatsFrame,
}

return PerfStatsConfig
