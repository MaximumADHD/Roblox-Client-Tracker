local FFlagQ220PermissionsSettings = settings():GetFFlag("Q220PermissionsSettings")

local Permissions = require(script.Parent.PermissionsPage.Permissions)
local Avatar = require(script.Parent.AvatarPage.Avatar)
local BasicInfo = require(script.Parent.BasicInfoPage.BasicInfo)
local Monetization = require(script.Parent.MonetizationPage.Monetization)
local Options = require(script.Parent.OptionsPage.Options)
local Places = require(script.Parent.PlacesPage.Places)
local Security = require(script.Parent.SecurityPage.Security)
local World = require(script.Parent.WorldPage.World)
local Localization = require(script.Parent.LocalizationPage.Localization)

local pages = {
	BasicInfo,
	Permissions,
	Monetization,
	Places,
	Avatar,
	World,
	Options,
}

if FFlagQ220PermissionsSettings then
	table.insert(pages, 4, Security)
end

table.insert(pages, 5, Localization)

return pages
