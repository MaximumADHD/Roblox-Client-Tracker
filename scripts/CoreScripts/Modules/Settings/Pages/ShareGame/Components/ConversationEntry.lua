--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)

local Theme = require(Modules.Settings.Theme)

local ShareGame = Modules.Settings.Pages.ShareGame

local ConversationDetails = require(ShareGame.Components.ConversationDetails)
local ConversationThumbnail = require(ShareGame.Components.ConversationThumbnail)

local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local InviteButton = require(ShareGame.Components.InviteButton)

local Constants = require(ShareGame.Constants)
local InviteStatus = Constants.InviteStatus

local THUMBNAIL_SIZE = 32
local INVITE_BUTTON_WIDTH = 69
local CONTENTS_PADDING = 12

local ConversationEntry = Roact.PureComponent:extend("ConversationEntry")

function ConversationEntry:init()
	self.eventStream = EventStream.new(AnalyticsService)

	self.onInvite = function()
		local inviteStatus = self.props.inviteStatus
		if inviteStatus and inviteStatus ~= InviteStatus.Failed then
			return
		end

		local analytics = self.props.analytics
		local users = self.props.users
		local inviteUser = self.props.inviteUser

		-- Check if this is a one-on-one convo
		if #users == 1 then
			local onSuccess = function(results)
				if not results then
					return
				end

				-- Pluck the userIds out of the user list
				local participants = {}
				for _, user in pairs(users) do
					table.insert(participants, user.id)
				end

				local localPlayer = Players.LocalPlayer
				analytics:onActivatedInviteSent(localPlayer.UserId, results.conversationId, participants)
			end

			local onReject = function() end
			inviteUser(users[1].id):andThen(onSuccess, onReject)
		end
	end
end

function ConversationEntry:render()
	local visible = self.props.visible
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local size = self.props.size
	local subtitle = self.props.subtitle
	local title = self.props.title
	local users = self.props.users
	local inviteStatus = self.props.inviteStatus

	-- Presence gets passed in if there's only one user
	local presence = self.props.presence

	local isSelectable = true

	return Roact.createElement("ImageButton", {
		Visible = visible,
		Selectable = isSelectable,
		BackgroundColor3 = Theme.color("PlayerRowFrame"),
		BackgroundTransparency = Theme.transparency("PlayerRowFrame", 1),
		ImageTransparency = 0,
		ScaleType = Enum.ScaleType.Stretch,
		SliceCenter = Rect.new(),
		Size = size,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
		[Roact.Event.Activated] = self.onInvite,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = Theme.MenuContainerCornerRadius,
		}) or nil,
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
			subtitle = subtitle,
			presence = presence,
			size = UDim2.new(
				-- Make details fullwidth and subtract the width of its siblings
				1,
				-(THUMBNAIL_SIZE + INVITE_BUTTON_WIDTH + CONTENTS_PADDING * 2),
				1,
				0
			),
			layoutOrder = 1,
			zIndex = zIndex,
		}),
		InviteButton = Roact.createElement(InviteButton, {
			size = UDim2.new(0, INVITE_BUTTON_WIDTH, 1, 0),
			layoutOrder = 2,
			zIndex = zIndex,
			onInvite = self.onInvite,
			inviteStatus = inviteStatus,
		}),
	})
end

return ConversationEntry
