local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Colors = require(Modules.Common.Constants).COLORS
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local UserLibConstants = UserLib.Utils.Constants

local getRbxthumbWithTypeSizeAndOptions = require(CorePackages.Workspace.Packages.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions

local THUMBNAIL_IMAGE_SIZE = Constants.InviteAvatarThumbnailSize

local DEFAULT_THUMBNAIL_ICON = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"

export type Props = {
	size: UDim2?,
	position: UDim2?,
	anchorPoint: Vector2?,
	zIndex: number?,
	layoutOrder: number?,
	user: any,
	square: boolean?,
	backgroundTransparency: number?,
}

return function(props: Props)
	local user = props.user
	local thumbnailImage

	if user then
		local numberSize = UserLibConstants.RbxThumbnailSizeToNumberSize[THUMBNAIL_IMAGE_SIZE :: UserLib.RbxThumbnailSize]
		thumbnailImage = getRbxthumbWithTypeSizeAndOptions(user.id, Constants.InviteAvatarRbxthumbType :: UserLib.RbxthumbType, numberSize)
	end
	if not thumbnailImage then
		thumbnailImage = DEFAULT_THUMBNAIL_ICON
	end

	return React.createElement("ImageLabel", {
		Size = props.size,
		Position = props.position,
		AnchorPoint = props.anchorPoint,
		Image = thumbnailImage,
		BorderSizePixel = 0,
		BackgroundColor3 = Colors.FLINT,
		BackgroundTransparency = props.backgroundTransparency,
	}, {
		Corner = if props.square then nil else React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		})
	})
end
