--[[
	Modules for each SettingsPage are required here.
]]

local Avatar = require(script.Parent.Avatar)
local Options = require(script.Parent.Options)
local BasicInfo = require(script.Parent.BasicInfo)
local DeveloperSubscriptions = require(script.Parent.DeveloperSubscriptions)
local LocalizationPage = require(script.Parent.LocalizationPage)
local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")

local World = require(script.Parent.World)

local AccessPermissions = require(script.Parent.AccessPermissions)

local SettingsPages = {
	["Access Permissions"] = AccessPermissions,
	["Avatar"] = Avatar,
	["Options"] = Options,
	["Basic Info"] = BasicInfo,
	["World"] = World
}

if DFFlagDeveloperSubscriptionsEnabled then
	SettingsPages["Developer Subscriptions"] = DeveloperSubscriptions
end

if FFlagStudioLocalizationInGameSettingsEnabled then
	SettingsPages["Localization"] = LocalizationPage
end
return SettingsPages
