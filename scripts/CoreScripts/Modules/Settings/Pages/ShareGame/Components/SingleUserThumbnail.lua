local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Colors = require(Modules.Common.Constants).COLORS
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)

local THUMBNAIL_IMAGE_SIZE = Constants.InviteAvatarThumbnailSize
local THUMBNAIL_IMAGE_TYPE = Constants.InviteAvatarThumbnailType
local DEFAULT_THUMBNAIL_ICON = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"

export type Props = {
	size: UDim2?,
	position: UDim2?,
	anchorPoint: Vector2?,
	zIndex: number?,
	layoutOrder: number?,
	user: any,
}

return function(props: Props)
	local user = props.user
	local icon = user and user.thumbnails and user.thumbnails[THUMBNAIL_IMAGE_TYPE]
		and user.thumbnails[THUMBNAIL_IMAGE_TYPE][THUMBNAIL_IMAGE_SIZE]

	return React.createElement("ImageLabel", {
		Size = props.size,
		Position = props.position,
		AnchorPoint = props.anchorPoint,
		Image = icon or DEFAULT_THUMBNAIL_ICON,
		BorderSizePixel = 0,
		BackgroundColor3 = Colors.FLINT,
	}, {
		Corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		})
	})
end
