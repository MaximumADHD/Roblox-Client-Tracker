local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)

local ShareGame = Modules.Settings.Pages.ShareGame
local ConversationThumbnail = require(ShareGame.Components.ConversationThumbnail)
local ConversationDetails = require(ShareGame.Components.ConversationDetails)
local InviteButton = require(ShareGame.Components.InviteButton)

local ENTRY_BG_IMAGE = "rbxasset://textures/ui/dialog_white.png"
local ENTRY_BG_SLICE = Rect.new(10, 10, 10, 10)
local ENTRY_BG_TRANSPARENCY = 0.85

local THUMBNAIL_SIZE = 32
local INVITE_BUTTON_WIDTH = 69
local CONTENTS_PADDING = 12

local ConversationEntry = Roact.PureComponent:extend("ConversationEntry")

function ConversationEntry:render()
	local visible = self.props.visible
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local size = self.props.size
	local title = self.props.title
	local users = self.props.users
	local inviteUser = self.props.inviteUser
	local alreadyInvited = self.props.alreadyInvited

	-- Presence gets passed in if there's only one user
	local presence = self.props.presence

	return Roact.createElement("ImageLabel", {
		Visible = visible,
		BackgroundTransparency = 1,
		Image = ENTRY_BG_IMAGE,
		ImageTransparency = ENTRY_BG_TRANSPARENCY,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = ENTRY_BG_SLICE,
		Size = size,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, CONTENTS_PADDING),
			PaddingRight = UDim.new(0, CONTENTS_PADDING),
			PaddingTop = UDim.new(0, CONTENTS_PADDING),
			PaddingBottom = UDim.new(0, CONTENTS_PADDING),
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 12),
		}),

		Thumbnail = Roact.createElement(ConversationThumbnail, {
			users = users,
			size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE),
			layoutOrder = 0,
			zIndex = zIndex,
		}),
		Details = Roact.createElement(ConversationDetails, {
			title = title,
			presence = presence,
			size = UDim2.new(
				-- Make details fullwidth and subtract the width of its siblings
				1, -(THUMBNAIL_SIZE + INVITE_BUTTON_WIDTH + CONTENTS_PADDING * 2),
				1, 0
			),
			layoutOrder = 1,
			zIndex = zIndex,
		}),
		InviteButton = Roact.createElement(InviteButton, {
			size = UDim2.new(0, INVITE_BUTTON_WIDTH, 1, 0),
			layoutOrder = 2,
			zIndex = zIndex,
			onInvite = function()
				-- Check if this is a one-on-one convo
				if #users == 1 then
					inviteUser(users[1].id)
				end
			end,
			alreadyInvited = alreadyInvited,
		}),
	})
end

return ConversationEntry
