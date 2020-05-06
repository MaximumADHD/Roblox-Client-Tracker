local AccessPermissions = require(script.Parent.AccessPermissions)
local Avatar = require(script.Parent.Avatar)
local BasicInfo = require(script.Parent.BasicInfo)
local DeveloperSubscriptions = require(script.Parent.DeveloperSubscriptions)
local LocalizationPage = require(script.Parent.LocalizationPage)
local Options = require(script.Parent.Options)
local Places = require(script.Parent.Places)
local World = require(script.Parent.World)

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")

return {
	BasicInfo,
	AccessPermissions,
	FFlagGameSettingsPlaceSettings and Places or nil,
	Avatar,
	Options,
	DFFlagDeveloperSubscriptionsEnabled and DeveloperSubscriptions or nil,
	World,
	FFlagStudioLocalizationInGameSettingsEnabled and LocalizationPage or nil,
}