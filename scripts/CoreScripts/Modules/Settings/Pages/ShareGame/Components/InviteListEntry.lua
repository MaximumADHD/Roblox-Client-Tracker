local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local UIBlox = require(CorePackages.UIBlox)
local OpenTypeSupport = UIBlox.Utility.OpenTypeSupport

local Constants = require(Modules.Common.Constants)
local Theme = require(Modules.Settings.Theme)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local InviteEvents = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
local ShareGameConstants = require(ShareGame.Constants)
local PresenceUtil = require(ShareGame.PresenceUtil)
local SingleUserThumbnail = require(ShareGame.Components.SingleUserThumbnail)
local InviteButton = require(ShareGame.Components.InviteButton)
local InviteStatus = ShareGameConstants.InviteStatus
local ThrottleFunctionCall = require(ShareGame.ThrottleFunctionCall)

local GetFFlagAbuseReportAnalyticsHasLaunchData =
	require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)
local GetFFlagEnableNewInviteSendEndpoint = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)
local GetFFlagThrottleInviteSendEndpoint = require(Modules.Flags.GetFFlagThrottleInviteSendEndpoint)
local GetFIntThrottleInviteSendEndpointDelay = require(Modules.Flags.GetFIntThrottleInviteSendEndpointDelay)
local GetFFlagLuaAppEnableOpenTypeSupport =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport

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
	inviteUser: (
		userId: number,
		analytics: any?,
		trigger: string?,
		messageId: string?,
		launchData: string?
	) -> any,
	inviteStatus: string,
	visible: boolean,
	analytics: any,
	isFullRowActivatable: boolean,
	trigger: string,
	inviteMessageId: string,
	launchData: string,
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
			local participants = { user.id }
			if Players.LocalPlayer and results then
				local localPlayer = Players.LocalPlayer :: Player
				analytics:onActivatedInviteSent(localPlayer.UserId, results.conversationId, participants)
			end
		end

		if GetFFlagEnableNewInviteSendEndpoint() then
			local isLaunchDataProvided = props.launchData ~= nil and props.launchData ~= ""
			analytics:sendEvent(props.trigger, InviteEvents.SendInvite, {
				recipient = user.id,
				isLaunchDataProvided = if GetFFlagAbuseReportAnalyticsHasLaunchData()
					then isLaunchDataProvided
					else nil,
			})
			inviteUser(user.id, analytics, props.trigger, props.inviteMessageId, props.launchData):andThen(
				onSuccess,
				function() end
			)
		else
			inviteUser(user.id):andThen(onSuccess, function() end)
		end
	end, {
		props.inviteUser,
		props.inviteStatus,
		props.analytics,
		user,
	} :: { any })

	if GetFFlagThrottleInviteSendEndpoint() then
		-- Roact doesn't immediately block clicking the button, so we introduce
		-- a short delay here to make sure the user can't trigger more than one
		-- invite at a time
		onInvite =
			React.useCallback(ThrottleFunctionCall(GetFIntThrottleInviteSendEndpointDelay(), onInvite), { onInvite })
	end

	if not props.visible then
		return
	end

	local UIBloxTheme = Theme.UIBloxThemeEnabled

	return React.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
		Image = not UIBloxTheme and ENTRY_BG_IMAGE or nil,
		ScaleType = not UIBloxTheme and Enum.ScaleType.Slice or Enum.ScaleType.Stretch,
		SliceCenter = ENTRY_BG_SLICE,
		BackgroundColor3 = Theme.color("PlayerRowFrame"),
		BackgroundTransparency = Theme.transparency("PlayerRowFrame", 1),
		ImageTransparency = 0.85,
		LayoutOrder = props.layoutOrder,
		[ReactRoblox.Event.Activated] = if props.isFullRowActivatable then onInvite else nil,
	}, {
		UICorner = UIBloxTheme and React.createElement("UICorner", {
			CornerRadius = Theme.MenuContainerCornerRadius,
		}) or nil,
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
			Size = UDim2.new(1, -ICON_SIZE - INVITE_BUTTON_WIDTH - PADDING, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
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
					Font = AppFonts.default:getMedium(),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 2,
				}),
			}),
			Username = React.createElement("TextLabel", {
				Size = UDim2.new(0, 0, 0, TEXT_SIZE),
				Text = "@" .. user.name,
				TextSize = TEXT_SIZE,
				TextColor3 = Constants.COLORS.PUMICE,
				Font = AppFonts.default:getDefault(),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				OpenTypeFeatures = if GetFFlagLuaAppEnableOpenTypeSupport()
					then OpenTypeSupport:getUserNameStylisticAlternative()
					else nil,
			}),
		}),
		InviteButton = React.createElement(InviteButton, {
			size = UDim2.new(0, INVITE_BUTTON_WIDTH, 0, 36),
			position = UDim2.new(1, 0, 0.5, 0),
			anchorPoint = Vector2.new(1, 0.5),
			onInvite = onInvite,
			inviteStatus = props.inviteStatus,
		}),
	})
end
