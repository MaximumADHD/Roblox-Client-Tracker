--[[
This integration represents the In-Experience Gamesettings Menu Page. It uses 
the Setting Framework and React to manage business logic and rendering.
]]

local Settings = script:FindFirstAncestor("Settings")

-- Modules
local SettingsService = require(Settings.Resources.SharedSettingsService)
local Constants = require(Settings.Integrations.Constants)
local Fields = Settings.Integrations.SettingFields
local Fullscreen = require(Fields.Fullscreen)
local CameraInverted = require(Fields.CameraInverted)
local Haptics = require(Fields.Haptics)
local ShiftLock = require(Fields.ShiftLock)
local PerformanceStats = require(Fields.PerformanceStats)
local UINavToggle = require(Fields.UINavToggle)
local ReducedMotion = require(Fields.ReducedMotion)
local DeveloperConsole = require(Fields.DeveloperConsole)
local TranslationFeedback = require(Fields.TranslationFeedback)

-- Core Module 

-- Settings Page
local settingsPage = SettingsService:registerPage({
	id = Constants.GAMESETTINGS.PAGE_ID,
	settingsFields = {
		Fullscreen,
		CameraInverted,
		Haptics,
		ShiftLock,
		PerformanceStats,
		UINavToggle,
		ReducedMotion,
		DeveloperConsole,
		TranslationFeedback
	}
})

return settingsPage
