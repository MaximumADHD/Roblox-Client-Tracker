local AccessPermissions = require(script.Parent.AccessPermissions)
local Avatar = require(script.Parent.Avatar)
local BasicInfo = require(script.Parent.BasicInfo)
local DeveloperSubscriptions = require(script.Parent.DeveloperSubscriptions)
local LocalizationPage = require(script.Parent.LocalizationPage)
local Monetization = require(script.Parent.Monetization)
local Options = require(script.Parent.OptionsPage.Options)
local Places = require(script.Parent.Places)
local World = require(script.Parent.WorldPage.World)

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")
local FFlagStudioAddMonetizationToGameSettings = game:GetFastFlag("StudioAddMonetizationToGameSettings")

-- TODO (awarwick) 5/5/2020 Enable these as the pages are converted
return {
	BasicInfo,
	--AccessPermissions,
  --FFlagStudioAddMonetizationToGameSettings and Monetization or nil,
	--FFlagGameSettingsPlaceSettings and Places or nil,
	--Avatar,
	--DFFlagDeveloperSubscriptionsEnabled and DeveloperSubscriptions or nil,
	World,
	--FFlagStudioLocalizationInGameSettingsEnabled and LocalizationPage or nil,
	Options,
}