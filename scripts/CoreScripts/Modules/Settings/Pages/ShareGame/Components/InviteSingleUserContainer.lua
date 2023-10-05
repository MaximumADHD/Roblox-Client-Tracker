local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.RoactRodux)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Colors = require(Modules.Common.Constants).COLORS
local ShareGameConstants = require(ShareGame.Constants)
local InviteEvents = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
local InviteStatus = ShareGameConstants.InviteStatus
local RobloxTranslator = require(ShareGame.getTranslator)()

local httpRequest = require(CorePackages.AppTempCommon.Temp.httpRequest)
local InviteUserIdToPlaceId = require(ShareGame.Thunks.InviteUserIdToPlaceId)
local RetrievalStatus = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local InviteUserIdToPlaceIdCustomized = require(ShareGame.Thunks.InviteUserIdToPlaceIdCustomized)
local ThrottleFunctionCall = require(ShareGame.ThrottleFunctionCall)

local SingleUserThumbnail = require(ShareGame.Components.SingleUserThumbnail)

local GetFFlagAbuseReportAnalyticsHasLaunchData =
	require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)
local GetFFlagEnableNewInviteSendEndpoint = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)
local GetFFlagInviteListStyleFixes = require(Modules.Flags.GetFFlagInviteListStyleFixes)
local GetFFlagThrottleInviteSendEndpoint = require(Modules.Flags.GetFFlagThrottleInviteSendEndpoint)
local GetFIntThrottleInviteSendEndpointDelay = require(Modules.Flags.GetFIntThrottleInviteSendEndpointDelay)
local GetFFlagInviteAnalyticsEventsUpdate = require(Modules.Settings.Flags.GetFFlagInviteAnalyticsEventsUpdate)
local GetFFlagSingleUserInvitePageKeybind = require(Modules.Settings.Flags.GetFFlagSingleUserInvitePageKeybind)

local UIBlox = require(CorePackages.UIBlox)
local PrimaryButton = UIBlox.App.Button.PrimarySystemButton
local SecondaryButton = UIBlox.App.Button.SecondaryButton
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local useStyle = UIBlox.Core.Style.useStyle

local CONFIRM_BUTTON_BIND = "ProductPurchaseConfirmButtonBind"
local CANCEL_BUTTON_BIND = "ProductPurchaseCancelButtonBind"

-- Color 41/41/41 comes from the SettingsShield background color
local BACKGROUND_COLOR = Color3.fromRGB(41, 41, 41)
local HEADER_SIZE = 48
local MODAL_WIDTH = 442

local BACKGROUND_BORDER_RADIUS = 8
local BORDER_PADDING = 24

local InviteSingleUserContainer = function(props)
	local friend = props.friends[tostring(props.inviteUserId)]
	local inviteStatus = friend and props.invites[friend.id]

	local style = useStyle()
	local sendingInvite, setSendingInvite = React.useState(false)

	React.useEffect(function()
		if not GetFFlagInviteAnalyticsEventsUpdate() then
			if props.promptMessage and props.analytics then
				props.analytics:sendEvent(ShareGameConstants.Triggers.DeveloperSingle, InviteEvents.CustomTextShown)
			end
		end
	end, {})

	local onClose = React.useCallback(function()
		props.closePage()
		if props.onAfterClosePage then
			props.onAfterClosePage()
		end
	end, {
		props.closePage,
		props.onAfterClosePage,
	} :: { any })

	local onCloseButtonActivated = React.useCallback(function()
		if GetFFlagInviteAnalyticsEventsUpdate() then
			local eventData = props.analytics:createEventData(
				props.analytics.EventName.InvitePromptAction,
				props.analytics.ButtonName.CancelInvite,
				if props.promptMessage then props.analytics.EventFieldName.CustomText else props.analytics.EventFieldName.DefaultText
			)
			props.analytics:sendEvent(ShareGameConstants.Triggers.DeveloperSingle, eventData)
		else
			props.analytics:sendEvent(ShareGameConstants.Triggers.DeveloperSingle, InviteEvents.CancelInvite)
		end
		onClose()
	end, {
		onClose,
	})

	local onInvite = React.useCallback(function()
		setSendingInvite(true)
		local inviteUser = props.inviteUser
		local analytics = props.analytics :: any
		if inviteStatus and inviteStatus ~= InviteStatus.Failed then
			return
		end

		local isLaunchDataProvided = props.launchData ~= nil and props.launchData ~= ""
		if GetFFlagInviteAnalyticsEventsUpdate() then
			local eventData = analytics:createEventData(
				analytics.EventName.InvitePromptAction,
				analytics.ButtonName.InviteFriend,
				if props.promptMessage then analytics.EventFieldName.CustomText else analytics.EventFieldName.DefaultText
			)
			analytics:sendEvent(ShareGameConstants.Triggers.DeveloperSingle, eventData, {
				recipient = friend.id,
				isLaunchDataProvided = if GetFFlagAbuseReportAnalyticsHasLaunchData() then isLaunchDataProvided else nil,
			})
		else
			analytics:sendEvent(ShareGameConstants.Triggers.DeveloperSingle, InviteEvents.SendInvite, {
				recipient = friend.id,
				isLaunchDataProvided = if GetFFlagAbuseReportAnalyticsHasLaunchData() then isLaunchDataProvided else nil,
			})
		end

		local onSuccess = function(results)
			setSendingInvite(false)
			if not results then
				return
			end

			local participants = { friend.id }
			if Players.LocalPlayer and results.conversationId then
				local localPlayer = Players.LocalPlayer :: Player
				analytics:onActivatedInviteSent(localPlayer.UserId, results.conversationId, participants)
			end

			onClose()
		end

		inviteUser(tostring(friend.id), analytics, props.inviteMessageId, props.launchData):andThen(onSuccess, onClose)
	end, {
		props.inviteUser,
		props.inviteMessageId,
		props.launchData,
		props.analytics,
		setSendingInvite,
		inviteStatus,
		friend,
		onClose,
	} :: { any })

	if GetFFlagSingleUserInvitePageKeybind() then
		React.useEffect(function(): (() -> ())?
			if props.isVisible then
				ContextActionService:BindCoreAction(CONFIRM_BUTTON_BIND, function(_, inputState, _)
					if inputState == Enum.UserInputState.Begin then
						onInvite()
					end
				end, false, Enum.KeyCode.ButtonA)
				ContextActionService:BindCoreAction(CANCEL_BUTTON_BIND, function(_, inputState, _)
					if inputState == Enum.UserInputState.Begin then
						onCloseButtonActivated()
					end
				end, false, Enum.KeyCode.ButtonB)
				return function()
					ContextActionService:UnbindCoreAction(CONFIRM_BUTTON_BIND)
					ContextActionService:UnbindCoreAction(CANCEL_BUTTON_BIND)
				end
			end
			return nil
		end, {
			props.isVisible,
			onInvite,
			onCloseButtonActivated,
		} :: {any})
	end

	if GetFFlagThrottleInviteSendEndpoint() then
		-- Roact doesn't immediately block clicking the button, so we introduce
		-- a short delay here to make sure the user can't trigger more than one
		-- invite at a time
		onInvite =
			React.useCallback(ThrottleFunctionCall(GetFIntThrottleInviteSendEndpointDelay(), onInvite), { onInvite })
	end

	if not friend then
		if
			props.friendsRetrievalStatus == RetrievalStatus.Done
			or props.friendsRetrievalStatus == RetrievalStatus.Failed
		then
			onClose()
		end
		return
	end

	local inviteAlreadySent = inviteStatus and inviteStatus ~= InviteStatus.Failed
	local inviteTextKey = if inviteAlreadySent
		then "Feature.SettingsHub.Label.Invited"
		else "Feature.SettingsHub.Action.InviteFriend"

	local applyStyleFixes = GetFFlagInviteListStyleFixes()

	return React.createElement("Frame", {
		Size = if applyStyleFixes then UDim2.new(1, 0, 0, 0) else UDim2.new(0, MODAL_WIDTH, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BorderSizePixel = 0,
		BackgroundColor3 = if applyStyleFixes then BACKGROUND_COLOR else Colors.FLINT,
		BackgroundTransparency = if applyStyleFixes then 0.1 else 0,
	}, {
		SizeConstraint = if applyStyleFixes
			then React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(MODAL_WIDTH, math.huge),
				MinSize = Vector2.new(0, 0),
			})
			else nil,
		Corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, BACKGROUND_BORDER_RADIUS),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, BORDER_PADDING),
			PaddingRight = UDim.new(0, BORDER_PADDING),
			PaddingBottom = UDim.new(0, BORDER_PADDING),
		}),
		Header = React.createElement(StyledTextLabel, {
			fontStyle = style.Font.Header1,
			colorStyle = style.Theme.TextEmphasis,
			text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Heading.InviteUser", {
				DisplayName = friend.displayName,
			}),
			size = UDim2.new(1, 0, 0, HEADER_SIZE),
			textXAlignment = Enum.TextXAlignment.Center,
		}),
		Divider = React.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, HEADER_SIZE),
			Size = UDim2.new(1, 0, 0, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = Colors.GRAPHITE,
		}),
		Wrapper = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.new(0, 0, 0, 56),
			BackgroundTransparency = 1,
		}, {
			ListLayout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, BORDER_PADDING),
			}),
			Thumbnail = React.createElement(SingleUserThumbnail, {
				user = friend,
				size = UDim2.new(0, 95, 0, 95),
				layoutOrder = 1,
				square = true,
				backgroundTransparency = if applyStyleFixes then 1 else nil,
			}),

			TextBody = React.createElement(StyledTextLabel, {
				fontStyle = style.Font.Header2,
				colorStyle = style.Theme.TextEmphasis,
				text = props.promptMessage
					or RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.DefaultInviteMessage", {
						DisplayName = friend.displayName,
					}),
				textXAlignment = Enum.TextXAlignment.Center,
				automaticSize = Enum.AutomaticSize.Y,
				size = UDim2.new(1, 0, 0, 0),
				layoutOrder = 2,
			}),
			ButtonWrapper = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, HEADER_SIZE),
				LayoutOrder = 3,
				BackgroundTransparency = 1,
			}, {
				CancelButton = React.createElement(SecondaryButton, {
					size = UDim2.new(0.5, -12, 1, 0),
					text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Cancel"),
					onActivated = onCloseButtonActivated,
					isDisabled = sendingInvite,
				}),
				InviteButton = React.createElement(PrimaryButton, {
					size = UDim2.new(0.5, -12, 1, 0),
					position = UDim2.new(0.5, 12, 0, 0),
					text = RobloxTranslator:FormatByKey(inviteTextKey),
					onActivated = onInvite,
					isLoading = sendingInvite,
					isDisabled = inviteAlreadySent,
				}),
			}),
		}),
	})
end

return RoactRodux.connect(function(state)
	return {
		friends = state.Users,
		friendsRetrievalStatus = Players.LocalPlayer
			and state.Friends.retrievalStatus[tostring(Players.LocalPlayer.UserId)],
		invites = state.Invites,
	}
end, function(dispatch: (any) -> any)
	return {
		inviteUser = function(userId: string, analytics: any, inviteMessageId: string?, launchData: string?)
			local requestImpl = httpRequest(HttpRbxApiService :: any)
			local placeId = tostring(game.PlaceId)

			if GetFFlagEnableNewInviteSendEndpoint() then
				return dispatch(
					InviteUserIdToPlaceIdCustomized(
						requestImpl,
						userId,
						placeId,
						analytics,
						ShareGameConstants.Triggers.DeveloperSingle,
						inviteMessageId,
						launchData
					)
				)
			else
				return dispatch(InviteUserIdToPlaceId(requestImpl, userId, placeId))
			end
		end,
	}
end)(function(props)
	-- Style Provider For UIBlox components
	return React.createElement(UIBlox.Style.Provider, {
		style = {
			Theme = AppDarkTheme,
			Font = AppFont,
		},
	}, {
		SingleUserInvite = React.createElement(InviteSingleUserContainer, props),
	})
end)
