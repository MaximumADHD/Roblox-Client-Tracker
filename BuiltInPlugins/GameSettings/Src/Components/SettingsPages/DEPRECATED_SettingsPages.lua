-- TODO (awarwick) 4/27/2020 Remove with FFlagGameSettingsNetworkRefactor
--[[
	Modules for each SettingsPage are required here.
]]

local Avatar = require(script.Parent.DEPRECATED_Avatar)
local Options = require(script.Parent.DEPRECATED_Options)
local BasicInfo = require(script.Parent.BasicInfo)
local DeveloperSubscriptions = require(script.Parent.DeveloperSubscriptions)
local LocalizationPage = require(script.Parent.LocalizationPage)
local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")
local FFlagStudioAddMonetizationToGameSettings = game:GetFastFlag("StudioAddMonetizationToGameSettings")

local World = require(script.Parent.DEPRECATED_World)

local AccessPermissions = require(script.Parent.DEPRECATED_AccessPermissions)

local Places = require(script.Parent.Places)

local Monetization = require(script.Parent.Monetization)

local SettingsPages = {
	-- Remove with FFlagStudioConvertGameSettingsToDevFramework
	["Basic Info"] = BasicInfo,
	["Access Permissions"] = AccessPermissions,

	["Avatar"] = Avatar,
	["Options"] = Options,
	["World"] = World
}

if DFFlagDeveloperSubscriptionsEnabled then
	SettingsPages["Developer Subscriptions"] = DeveloperSubscriptions
end

if FFlagStudioLocalizationInGameSettingsEnabled then
	SettingsPages["Localization"] = LocalizationPage
end

if FFlagGameSettingsPlaceSettings then
	SettingsPages["Places"] = Places
end

if FFlagStudioConvertGameSettingsToDevFramework then
	SettingsPages["BasicInfo"] = BasicInfo
	SettingsPages["AccessPermissions"] = AccessPermissions
end

if FFlagStudioAddMonetizationToGameSettings then
	SettingsPages["Monetization"] = Monetization
end

return SettingsPages
