local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local QRCodeView = require(ProfileQRCode.Components.QRCodeView)
local ProfileQRCodeTopBar = require(ProfileQRCode.Components.ProfileQRCodeTopBar)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization
local QRCodeFriendRequestNotification = require(ProfileQRCode.Components.QRCodeFriendRequestNotification)
local Toast = UIBlox.App.Dialog.Toast
local useGetUsersInfoUrl = require(ProfileQRCode.Networking.useGetUsersInfoUrl)
local useLocalUserId = require(ProfileQRCode.Utils.useLocalUserId)
local useAcceptFriendUrl = require(ProfileQRCode.Networking.useAcceptFriendUrl)
local Cryo = require(Packages.Cryo)
local getFFlagProfileQRCodeEnableAlerts = require(Packages.SharedFlags).getFFlagProfileQRCodeEnableAlerts

local ROOT_PADDING = 24
local GRADIENT_ROTATION = 90
local TOP_BAR_PADDING = -56
-- We have a hardcoded white here as for gradients to work, you need a full white background. This colour will not show.
local BACKGROUND_FOR_GRADIENT = Color3.new(1, 1, 1)

local ADD_TO_QUEUE = "addItemToQueue"
local REMOVE_FROM_QUEUE = "removeItemFromQueue"

export type Props = {
	onClose: () -> (),
	robloxEventReceiver: any?,
}

local ProfileQRCodePage = function(props: Props)
	local localized = useLocalization({
		description = TextKeys.Description,
	})
	local style = useStyle()

	local localUserId, acceptFriendUrl, showFriendAcceptedToast, setShowFriendAcceptedToast, notificationQueue, updateNotificationQueue

	if getFFlagProfileQRCodeEnableAlerts() and props.robloxEventReceiver then
		local robloxEventReceiver = props.robloxEventReceiver

		showFriendAcceptedToast, setShowFriendAcceptedToast = React.useState(false)
		notificationQueue, updateNotificationQueue = React.useReducer(function(oldQueue, action)
			if action.type == ADD_TO_QUEUE then
				-- update queue
				return Cryo.List.join(oldQueue, { action.newUserId })
			elseif action.type == REMOVE_FROM_QUEUE then
				return Cryo.List.removeIndex(oldQueue, 1)
			else
				return oldQueue
			end
		end, {})

		localUserId = useLocalUserId()
		local getUsersInfoUrl = useGetUsersInfoUrl()
		acceptFriendUrl = useAcceptFriendUrl()

		local function friendshipNotificationReceived(details)
			-- Check to make sure this is the type of friend notification we respond to
			if details.Type == "FriendshipRequested" and details.EventArgs.SourceType == "QrCode" then
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
			robloxEventReceiver:observeEvent("FriendshipNotifications", function(detail)
				friendshipNotificationReceived(detail)
			end)
		end, { robloxEventReceiver })
	end

	return React.createElement("Frame", {
		BackgroundColor3 = BACKGROUND_FOR_GRADIENT,
		BackgroundTransparency = 0,
		ZIndex = 2,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	}, {
		--TODO: SACQ-570 follow up ticket for getting the toast to work
		FriendAcceptToast = if getFFlagProfileQRCodeEnableAlerts() and showFriendAcceptedToast
			then React.createElement(Toast, {
				toastContent = {
					toastTitle = "James is awesome",
					iconImage = "rbxassetid://3792530835",
					onDismissed = function()
						setShowFriendAcceptedToast(false)
					end,
				},
				duration = 3,
				show = true,
			})
			else nil,
		Gradient = React.createElement("Frame", {
			BackgroundColor3 = BACKGROUND_FOR_GRADIENT,
			BackgroundTransparency = 0,
			ZIndex = 2,
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, ROOT_PADDING),
			}),
			TopBar = React.createElement(ProfileQRCodeTopBar, {
				layoutOrder = 1,
				onClose = props.onClose,
			}),
			Content = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, TOP_BAR_PADDING),
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, ROOT_PADDING),
					PaddingRight = UDim.new(0, ROOT_PADDING),
					PaddingBottom = UDim.new(0, ROOT_PADDING),
					PaddingLeft = UDim.new(0, ROOT_PADDING),
				}),
				QRCodeView = React.createElement(QRCodeView, {
					layoutOrder = 1,
				}),
				Spacer1 = React.createElement("Frame", {
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 0, 0, ROOT_PADDING),
					LayoutOrder = 2,
				}),
				Description = React.createElement(StyledTextLabel, {
					layoutOrder = 3,
					text = localized.description,
					fontStyle = style.Font.Body,
					lineHeight = 1,
					colorStyle = style.Theme.TextDefault,
					size = UDim2.new(1, 0, 0, 0),
					automaticSize = Enum.AutomaticSize.Y,
					textXAlignment = Enum.TextXAlignment.Center,
					textYAlignment = Enum.TextYAlignment.Center,
					fluidSizing = false,
					richText = false,
				}),
			}),
			Gradient = React.createElement("UIGradient", {
				Rotation = GRADIENT_ROTATION,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, style.Theme.BackgroundContrast.Color),
					ColorSequenceKeypoint.new(1, style.Theme.BackgroundContrast.Color),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.4),
					NumberSequenceKeypoint.new(1, 0),
				}),
			}),
		}),
		FriendsInvite = if getFFlagProfileQRCodeEnableAlerts()
				and #notificationQueue > 0
				and not showFriendAcceptedToast
			then React.createElement(QRCodeFriendRequestNotification, {
				userId = tostring(notificationQueue[1]),
				onAccept = function(acceptedUserId)
					acceptFriendUrl(localUserId, acceptedUserId):andThen(function()
						updateNotificationQueue({ type = REMOVE_FROM_QUEUE, newUserId = "0" })
						setShowFriendAcceptedToast(true)
					end)
				end,
				onClose = function()
					updateNotificationQueue({ type = REMOVE_FROM_QUEUE, newUserId = "0" })
				end,
			})
			else nil,
	})
end

return ProfileQRCodePage
