local Permissions = require(script.Parent.PermissionsPage.Permissions)
local Avatar = require(script.Parent.AvatarPage.Avatar)
local BasicInfo = require(script.Parent.BasicInfoPage.BasicInfo)
local Options = require(script.Parent.OptionsPage.Options)
local World = require(script.Parent.WorldPage.World)

return {
	BasicInfo,
	Permissions,
	Avatar,
	World,
	Options,
}