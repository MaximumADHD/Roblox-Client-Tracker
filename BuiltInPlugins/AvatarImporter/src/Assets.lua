local CONTENT_ROOT = "rbxasset://textures/AvatarImporter/"

local assets = {
	BUTTON_AVATAR_TYPE = "button_avatarType.png",
	BUTTON_AVATAR_TYPE_BORDER = "button_avatarType_border.png",
	PLUGIN_ICON = "icon_AvatarImporter.png",
	ERROR_ICON = "icon_error.png",
	BACKGROUND_IMAGE = "img_window_BG.png",
	HEADER_IMAGE = "img_window_header.png",
	BUTTON_ICON = "icon_AvatarImporter.png",
	BUTTON_CLOSE = "button_close.png",

	RTHRO = {
		Light = "img_light_Rthro.png",
		Dark = "img_dark_Rthro.png",
	},
	RTHRO_NARROW = {
		Light = "img_light_RthroNarrow.png",
		Dark = "img_dark_RthroNarrow.png",
	},
	R15 = {
		Light = "img_light_R15.png",
		Dark = "img_dark_R15.png",
	},
	CUSTOM = {
		Light = "img_light_custom.png",
		Dark = "img_dark_custom.png",
	}
}

local TYPE_TABLE = "table"
local function recursiveTransform(object, callback)
	for key, value in pairs(object) do
		if typeof(value) == TYPE_TABLE then
			recursiveTransform(value, callback)
		else
			object[key] = callback(value)
		end
	end
end
recursiveTransform(assets, function(value)
	return CONTENT_ROOT .. value
end)

return assets