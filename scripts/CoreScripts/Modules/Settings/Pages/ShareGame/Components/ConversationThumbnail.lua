--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(CorePackages.Roact)
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)

local GetFFlagUseRbxthumbForAllThumbnailUrls =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseRbxthumbForAllThumbnailUrls
local GetFFlagUseRbxthumbForLocalThumbnailUrls =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseRbxthumbForLocalThumbnailUrls
local getTypedUserAvatarImageWithSizeAndOptions = require(CorePackages.Workspace.Packages.UserLib).Utils.getTypedUserAvatarImageWithSizeAndOptions

local BORDER_SIZE = 1
local BORDER_COLOR = Constants.Color.GRAY3

-- FIXME(dbanks)
-- 2023/05/31
-- Remove with GetFFlagUseRbxthumbForAllThumbnailUrls
local DEPRECATED_THUMBNAIL_IMAGE_SIZE = Constants.DEPRECATED_InviteAvatarThumbnailSize
local DEPRECATED_THUMBNAIL_IMAGE_TYPE = Constants.DEPRECATED_InviteAvatarThumbnailType
local THUMBNAIL_IMAGE_SIZE = Constants.InviteAvatarThumbnailSize
local THUMBNAIL_IMAGE_TYPE = Constants.InviteAvatarThumbnailType
local DEFAULT_THUMBNAIL_ICON = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"

-- (Borrowed values from LuaChat)
-- This lets us determine how to build the group thumbnail.
-- Index represents how many people are in the thumbnail!
local IMAGE_LAYOUT = {
	[1] = {
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(1, 0, 1, 0),
			FramePosition = UDim2.new(0, 0, 0, 0),
		},
	},
	[2] = {
		{
			Size = UDim2.new(2, 0, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 1, 0),
			FramePosition = UDim2.new(0, 0, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0.5, -1, 0, 0),
				BorderSize = UDim2.new(0, 1, 1, 0),
			},
		},
		{
			Size = UDim2.new(2, 0, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 1, 0),
			FramePosition = UDim2.new(0.5, 1, 0, 0),
		},
	},
	[3] = {
		{
			Size = UDim2.new(2, 0, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 1, 0),
			FramePosition = UDim2.new(0, 0, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0.5, -1, 0, 0),
				BorderSize = UDim2.new(0, 1, 1, 0),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0.5, 0, 0.5, -1),
				BorderSize = UDim2.new(0.5, 0, 0, 1),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0.5, 1),
		},
	},
	[4] = {
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0, 0, 0, 0),
			Border = {
				BorderPosition = UDim2.new(0, 0, 0.5, -1),
				BorderSize = UDim2.new(1, 0, 0, 1),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0, 0),
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0, 0, 0.5, 1),
			Border = {
				BorderPosition = UDim2.new(0.5, -1, 0, 0),
				BorderSize = UDim2.new(0, 1, 1, 0),
			},
		},
		{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			FrameSize = UDim2.new(0.5, -1, 0.5, -1),
			FramePosition = UDim2.new(0.5, 1, 0.5, 1),
		},
	},
}

local ConversationThumbnail = Roact.PureComponent:extend("ConversationThumbnail")

function ConversationThumbnail:render()
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local users = self.props.users
	local numUsers = #users

	-- Render the thumbnail contents
	local thumbnailContents = {}
	for i, user in ipairs(users) do
		local layoutData = IMAGE_LAYOUT[numUsers][i]

		local thumbnailImage
		if user then
			if GetFFlagUseRbxthumbForAllThumbnailUrls() then
				-- Use rbxthumb for all users.
				thumbnailImage = getTypedUserAvatarImageWithSizeAndOptions(user.id, THUMBNAIL_IMAGE_TYPE, THUMBNAIL_IMAGE_SIZE)
			elseif GetFFlagUseRbxthumbForLocalThumbnailUrls() then
				-- Only use rbx thumb for local user: this allows the thumbnail to update if the user changes clothes or something.
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

		-- Render the avatar inside a clipping container
		thumbnailContents["AvatarHolder-"..i] = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Size = layoutData.FrameSize,
			Position = layoutData.FramePosition,
			ZIndex = zIndex,
		}, {
			Avatar = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = layoutData.Size,
				Position = layoutData.Position,
				Image = thumbnailImage,
				ZIndex = zIndex,
			})
		})

		-- Render any borders between avatars
		if layoutData.Border then
			thumbnailContents["Border-"..i] = Roact.createElement("Frame", {
				Size = layoutData.Border.BorderSize,
				Position = layoutData.Border.BorderPosition,
				BorderSizePixel = 0,
				BackgroundColor3 = BORDER_COLOR,
				ZIndex = zIndex,
			})
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		ContentsContainer = Roact.createElement("Frame", {
			-- Render the border inwards instead of outwards
			BackgroundTransparency = 0,
			Size = UDim2.new(1, -BORDER_SIZE, 1, -BORDER_SIZE),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundColor3 = Constants.Color.WHITE,
			BorderColor3 = BORDER_COLOR,
			BorderSizePixel = BORDER_SIZE,
			ZIndex = zIndex,
		}, thumbnailContents),
	})
end

return ConversationThumbnail
