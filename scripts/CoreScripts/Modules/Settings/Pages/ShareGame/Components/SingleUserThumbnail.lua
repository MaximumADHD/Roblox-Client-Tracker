local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Colors = require(Modules.Common.Constants).COLORS
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)
local GetFFlagUseRbxthumbForLocalThumbnailUrls =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseRbxthumbForLocalThumbnailUrls

local getTypedUserAvatarImageWithSizeAndOptions = require(CorePackages.Workspace.Packages.UserLib).Utils.getTypedUserAvatarImageWithSizeAndOptions
local UserLib = require(CorePackages.Workspace.Packages.UserLib)

local DEPRECATED_THUMBNAIL_IMAGE_SIZE = Constants.DEPRECATED_InviteAvatarThumbnailSize
local DEPRECATED_THUMBNAIL_IMAGE_TYPE = Constants.DEPRECATED_InviteAvatarThumbnailType
local THUMBNAIL_IMAGE_SIZE = Constants.InviteAvatarThumbnailSize
local THUMBNAIL_IMAGE_TYPE: UserLib.RbxThumbType = Constants.InviteAvatarThumbnailType :: UserLib.RbxThumbType
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
		if GetFFlagUseRbxthumbForLocalThumbnailUrls() then
			local localUserId
			local localPlayer = game:GetService("Players").LocalPlayer
			if localPlayer then
				localUserId = tostring(localPlayer.UserId)
			end
			if localUserId and user.id == localUserId then
				thumbnailImage = getTypedUserAvatarImageWithSizeAndOptions(user.id, THUMBNAIL_IMAGE_TYPE, THUMBNAIL_IMAGE_SIZE)
			else
				thumbnailImage = user.thumbnails and user.thumbnails[DEPRECATED_THUMBNAIL_IMAGE_TYPE]
				and user.thumbnails[DEPRECATED_THUMBNAIL_IMAGE_TYPE][DEPRECATED_THUMBNAIL_IMAGE_SIZE]
			end
		else
			thumbnailImage = user.thumbnails and user.thumbnails[DEPRECATED_THUMBNAIL_IMAGE_TYPE]
				and user.thumbnails[DEPRECATED_THUMBNAIL_IMAGE_TYPE][DEPRECATED_THUMBNAIL_IMAGE_SIZE]
		end
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
