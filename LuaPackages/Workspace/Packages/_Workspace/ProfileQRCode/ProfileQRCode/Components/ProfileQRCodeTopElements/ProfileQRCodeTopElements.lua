local IXPService = game:GetService("IXPService")
local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local RoactAppExperiment = require(Packages.RoactAppExperiment)
local RoactUtils = require(Packages.RoactUtils)
local UIBlox = require(Packages.UIBlox)

local Toast = UIBlox.App.Dialog.Toast

local EventNames = require(ProfileQRCode.Analytics.EventNames)
local ProfileQRCodeTopBar = require(ProfileQRCode.Components.ProfileQRCodeTopBar)
local QRCodeFriendRequestNotification = require(ProfileQRCode.Components.QRCodeFriendRequestNotification)
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local useAcceptFriendUrl = require(ProfileQRCode.Networking.useAcceptFriendUrl)
local useAnalytics = require(ProfileQRCode.Analytics.useAnalytics)
local useGetUsersInfoUrl = require(ProfileQRCode.Networking.useGetUsersInfoUrl)
local useLocalization = RoactUtils.Hooks.useLocalization
local useLocalUserId = require(Packages.RobloxAppHooks).useLocalUserId
local NetworkingFriends = require(Packages.NetworkingFriends)
local Images = UIBlox.App.ImageSet.Images
local SignalREvents = require(ProfileQRCode.Common.SignalREvents)

local getFStringProfileQRCodeFriendRequestAlertsExperimentKey =
	require(ProfileQRCode.Flags.getFStringProfileQRCodeFriendRequestAlertsExperimentKey)
local getFStringProfileQRCodeFriendRequestAlertsLayer =
	require(ProfileQRCode.Flags.getFStringProfileQRCodeFriendRequestAlertsLayer)
local getFFlagProfileQRCodeEnable3DAvatarExperiment =
	require(ProfileQRCode.Flags.getFFlagProfileQRCodeEnable3DAvatarExperiment)

local QR_ALERT_TOP_PADDING = 24
local TOP_BAR_PADDING = 56
local QR_ALERT_SIDE_PADDING = 28

local ADD_TO_QUEUE = "addItemToQueue"
local REMOVE_FROM_QUEUE = "removeItemFromQueue"

local FRIEND_ADDED_IMAGE = Images["icons/actions/friends/friendAdd"]
local TOAST_DURATION = 3

export type Props = {
	onClose: () -> (),
	robloxEventReceiver: any,
	profileQRCodeFriendRequestAlertsEnabled: boolean?,
	isProfile3DAvatarEnabled: boolean?,
}

local ProfileQRCodeTopElements = function(props: Props)
	local localized = useLocalization({
		description = TextKeys.Description,
		friendAdded = TextKeys.FriendAdded,
	})
	local analytics = useAnalytics()
	local friendRequestAlertsEnabled = props.profileQRCodeFriendRequestAlertsEnabled

	local robloxEventReceiver = props.robloxEventReceiver
	local showFriendAcceptedToast, setShowFriendAcceptedToast = React.useState(false)
	local notificationQueue, updateNotificationQueue = React.useReducer(function(oldQueue, action)
		if action.type == ADD_TO_QUEUE then
			IXPService:LogUserLayerExposure(getFStringProfileQRCodeFriendRequestAlertsLayer())

			-- update queue
			return Cryo.List.join(oldQueue, { action.newUserId })
		elseif action.type == REMOVE_FROM_QUEUE then
			return Cryo.List.removeIndex(oldQueue, 1)
		else
			return oldQueue
		end
	end, {})

	local localUserId = useLocalUserId()
	local getUsersInfoUrl = useGetUsersInfoUrl()
	local acceptFriendUrl = useAcceptFriendUrl()

	local function friendshipNotificationReceived(details)
		-- Check to make sure this is the type of friend notification we respond to
		if
			details.Type == SignalREvents.FriendshipRequested
			and details.EventArgs.SourceType == NetworkingFriends.Enums.FriendshipOriginSourceType.QrCode.rawValue()
		then
			-- get the requesting user id, each friendship request has 2 user ids the requester and the requestee.  The
			-- requestee should be the local user so if UserId1 is the local user id then UserId2 must be the requester
			local userId = tostring(details.EventArgs.UserId1)
			if userId == localUserId then
				userId = tostring(details.EventArgs.UserId2)
			end

			-- Now using the requester user id we make a call to get the display name of the requesting user
			getUsersInfoUrl(userId):andThen(function()
				updateNotificationQueue({ type = ADD_TO_QUEUE, newUserId = userId })
			end)
		end
	end

	React.useEffect(function()
		robloxEventReceiver:observeEvent(SignalREvents.FriendshipNotifications, function(detail)
			friendshipNotificationReceived(detail)
		end)
	end, { robloxEventReceiver })

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, TOP_BAR_PADDING),
		BackgroundTransparency = 1,
		ZIndex = 3,
		LayoutOrder = 1,
	}, {
		TopBarWrapper = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 3,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			TopBar = React.createElement(ProfileQRCodeTopBar, {
				layoutOrder = 1,
				onClose = props.onClose,
				isProfile3DAvatarEnabled = if getFFlagProfileQRCodeEnable3DAvatarExperiment()
					then props.isProfile3DAvatarEnabled
					else nil,
			}),
		}),

		FriendAcceptToastFrame = if friendRequestAlertsEnabled and showFriendAcceptedToast
			then React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 100,
			}, {
				FriendAcceptToast = React.createElement(Toast, {
					toastContent = {
						toastTitle = localized.friendAdded,
						iconImage = FRIEND_ADDED_IMAGE,
						onDismissed = function()
							setShowFriendAcceptedToast(false)
						end,
					},
					duration = TOAST_DURATION,
					show = true,
				}),
			})
			else nil,

		FriendsInviteFrame = if friendRequestAlertsEnabled
				and #notificationQueue > 0
				and not showFriendAcceptedToast
			then React.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, QR_ALERT_TOP_PADDING),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 100,
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingRight = UDim.new(0, QR_ALERT_SIDE_PADDING),
					PaddingLeft = UDim.new(0, QR_ALERT_SIDE_PADDING),
				}),
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				FriendsInvite = React.createElement(QRCodeFriendRequestNotification, {
					notificationQueueSize = #notificationQueue,
					onAccept = function(acceptedUserId)
						acceptFriendUrl(localUserId, acceptedUserId):andThen(function()
							updateNotificationQueue({ type = REMOVE_FROM_QUEUE, newUserId = "0" })
							setShowFriendAcceptedToast(true)
						end)
						analytics.fireEvent(EventNames.QRPageFriendRequestBannerAccepted, {
							qrCodeBannerQueueSize = #notificationQueue,
						})
					end,
					onClose = function()
						updateNotificationQueue({ type = REMOVE_FROM_QUEUE, newUserId = "0" })
						analytics.fireEvent(EventNames.QRPageFriendRequestBannerDismissed, {
							qrCodeBannerQueueSize = #notificationQueue,
						})
					end,
					userId = tostring(notificationQueue[1]),
				}),
			})
			else nil,
	})
end

ProfileQRCodeTopElements = RoactAppExperiment.connectUserLayer({
	getFStringProfileQRCodeFriendRequestAlertsLayer(),
}, function(layerVariables, props)
	local profileQRCodeFriendRequestAlertsLayer: any = layerVariables[getFStringProfileQRCodeFriendRequestAlertsLayer()]
		or {}
	return {
		profileQRCodeFriendRequestAlertsEnabled = profileQRCodeFriendRequestAlertsLayer[getFStringProfileQRCodeFriendRequestAlertsExperimentKey()],
	}
end, false)(ProfileQRCodeTopElements)

return ProfileQRCodeTopElements
