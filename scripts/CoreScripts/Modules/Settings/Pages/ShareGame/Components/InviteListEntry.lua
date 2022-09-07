local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Constants = require(Modules.Common.Constants)
local ShareGameConstants = require(ShareGame.Constants)
local PresenceUtil = require(ShareGame.PresenceUtil)
local SingleUserThumbnail = require(ShareGame.Components.SingleUserThumbnail)
local InviteButton = require(ShareGame.Components.InviteButton)
local InviteStatus = ShareGameConstants.InviteStatus

local ENTRY_BG_IMAGE = "rbxasset://textures/ui/dialog_white.png"
local ENTRY_BG_SLICE = Rect.new(10, 10, 10, 10)
local BUTTON_HEIGHT = 60
local INVITE_BUTTON_WIDTH = 66
local ICON_SIZE = 44
local PADDING = 8
local TEXT_SIZE = 16

export type Props = {
	user: {
		displayName: string,
		presence: string,
		name: string,
		thumbnails: any,
		id: number,
	},
	layoutOrder: number,
	inviteUser: (userId: number) -> any,
	inviteStatus: string,
	visible: boolean,
	analytics: any,
	isFullRowActivatable: boolean,
}

return function(props: Props)
	local user = props.user
	local onInvite = React.useCallback(function()
		local inviteUser = props.inviteUser
		local inviteStatus = props.inviteStatus
		local analytics = props.analytics
		if inviteStatus and inviteStatus ~= InviteStatus.Failed then
			return
		end

		local onSuccess = function(results)
			if not results then
				return
			end

			-- Pluck the userIds out of the user list
			local participants = {user.id}
			if Players.LocalPlayer then
				local localPlayer = Players.LocalPlayer :: Player
				analytics:onActivatedInviteSent(localPlayer.UserId, results.conversationId, participants)
			end
		end

		inviteUser(user.id):andThen(onSuccess, function() end)
	end, {
		props.inviteUser,
		props.inviteStatus,
		props.analytics,
		user,
	} :: {any})

	if not props.visible then return end
	return React.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
		Image = ENTRY_BG_IMAGE,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = ENTRY_BG_SLICE,
		BackgroundTransparency = 1,
		ImageTransparency = 0.85,
		LayoutOrder = props.layoutOrder,
		[ReactRoblox.Event.Activated] = if props.isFullRowActivatable then onInvite else nil,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingRight = UDim.new(0, PADDING * 2),
			PaddingLeft = UDim.new(0, PADDING),
		}),
		Thumbnail = React.createElement(SingleUserThumbnail, {
			user = user,
			size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			position = UDim2.new(0, 0, 0.5, 0),
			anchorPoint = Vector2.new(0, 0.5),
		}),
		UserInfo = React.createElement("Frame", {
			Position = UDim2.new(0, ICON_SIZE, 0, 0),
			Size = UDim2.new(1, - ICON_SIZE - INVITE_BUTTON_WIDTH - PADDING, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, PADDING),
			}),
			ListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 4),
			}),
			DisplayNameWrapper = React.createElement("Frame", {
				Size = UDim2.new(0, 0, 0, TEXT_SIZE),
				BackgroundTransparency = 1,
			}, {
				PresenceIconLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
				}),
				Icon = PresenceUtil.GetIcon(user.presence),
				DisplayName = React.createElement("TextLabel", {
					Size = UDim2.new(0, 0, 0, TEXT_SIZE),
					Text = user.displayName,
					TextSize = TEXT_SIZE,
					TextColor3 = Constants.COLORS.WHITE,
					Font = Enum.Font.GothamMedium,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 2,
				})
			}),
			Username = React.createElement("TextLabel", {
				Size = UDim2.new(0, 0, 0, TEXT_SIZE),
				Text = "@"..user.name,
				TextSize = TEXT_SIZE,
				TextColor3 = Constants.COLORS.PUMICE,
				Font = Enum.Font.Gotham,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		}),
		InviteButton = React.createElement(InviteButton, {
			size = UDim2.new(0, INVITE_BUTTON_WIDTH, 0, 36),
			position = UDim2.new(1, 0, 0.5, 0),
			anchorPoint = Vector2.new(1, 0.5),
			onInvite = onInvite,
			inviteStatus = props.inviteStatus,
		})
	})
end
