--[[
	Modules for each SettingsPage are required here.
]]

local Avatar = require(script.Parent.Avatar)
local Options = require(script.Parent.Options)
local BasicInfo = require(script.Parent.BasicInfo)
local Localization = require(script.Parent.Localization)

local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel")

local World = nil
if DFFlagGameSettingsWorldPanel then
	World = require(script.Parent.World)
end

local FFlagStudioLocalizationGameSettings = settings():GetFFlag("StudioLocalizationGameSettings")

local SettingsPages = {
	["Avatar"] = Avatar,
	["Options"] = Options,
	["Basic Info"] = BasicInfo,
}

if FFlagStudioLocalizationGameSettings then
	SettingsPages["Localization"] = Localization
end

if DFFlagGameSettingsWorldPanel then
	SettingsPages["World"] = World
end

return SettingsPages
