local FFlagQ220PermissionsSettings = settings():GetFFlag("Q220PermissionsSettings")

local Permissions = require(script.Parent.PermissionsPage.Permissions)
local Avatar = require(script.Parent.AvatarPage.Avatar)
local BasicInfo = require(script.Parent.BasicInfoPage.BasicInfo)
local Options = require(script.Parent.OptionsPage.Options)
local Security = require(script.Parent.SecurityPage.Security)
local World = require(script.Parent.WorldPage.World)

local pages = {
	BasicInfo,
	Permissions,
	Avatar,
	World,
	Options,
}

if FFlagQ220PermissionsSettings then
	table.insert(pages, 4, Security)
end

return pages