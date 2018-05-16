local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Common = Modules.Common
local LuaApp = Modules.LuaApp

local Constants = require(LuaApp.Constants)
local Roact = require(Common.Roact)

local PROFILE_PICTURE_SIZE = 150
local THUMBNAIL_IMAGE_SIZE_ENUM = Constants.AvatarThumbnailSizes.Size150x150
local DEFAULT_THUMBNAIL_ICON = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"
local OVERLAY_IMAGE_BIG = "rbxasset://textures/ui/LuaApp/graphic/gr-profile-150x150px.png"

local HomeUserAvatarHeader = Roact.PureComponent:extend("HomeUserAvatarHeader")

function HomeUserAvatarHeader:render()
	local localUserModel = self.props.localUserModel
	local thumbnailType = self.props.thumbnailType
	local onActivated = self.props.onActivated

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, PROFILE_PICTURE_SIZE, 0, PROFILE_PICTURE_SIZE),
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
	}, {
		Image = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, PROFILE_PICTURE_SIZE, 0, PROFILE_PICTURE_SIZE),
			BackgroundTransparency = 1,
			Image = localUserModel and localUserModel.thumbnails and localUserModel.thumbnails[thumbnailType]
				and localUserModel.thumbnails[thumbnailType][THUMBNAIL_IMAGE_SIZE_ENUM] or DEFAULT_THUMBNAIL_ICON,
		}, {
			MaskFrame = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, PROFILE_PICTURE_SIZE, 0, PROFILE_PICTURE_SIZE),
				BackgroundTransparency = 1,
				Image = OVERLAY_IMAGE_BIG,
				[Roact.Event.Activated] = onActivated,
			}),
		}),
	})
end

return HomeUserAvatarHeader