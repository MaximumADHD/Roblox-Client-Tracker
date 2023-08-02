--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local FFlagLuaAppUnifyCodeToGenerateRbxThumb = dependencies.FFlagLuaAppUnifyCodeToGenerateRbxThumb

local GetPresencesFromUserIds = dependencies.NetworkingPresence.GetPresencesFromUserIds

local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local UIBlox = dependencies.UIBlox

local ControlState = UIBlox.Core.Control.Enum.ControlState
local PlayerContext = UIBlox.App.Indicator.PlayerContext
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images
local Interactable = UIBlox.Core.Control.Interactable

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player

export type Props = {
	userId: number | string,
	userName: string,
	displayName: string,
	dismissCallback: () -> (),
	layoutOrder: number?,
}

local ICON_SIZE = 10

function getTextFromPresence(presence)
	-- TODO (charlieliu): Localization
	if presence then
		if presence.userPresenceType == EnumPresenceType.Online then
			return "Online"
		elseif presence.userPresenceType == EnumPresenceType.InGame then
			return "Experience"
		elseif presence.userPresenceType == EnumPresenceType.InStudio then
			return "Roblox Studio"
		end
	end

	return "Offline"
end

function isOnline(presence)
	if presence then
		return presence.userPresenceType ~= EnumPresenceType.Offline
	end

	return false
end

local function FriendListItem(props: Props)
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local dispatch = useDispatch()

	React.useEffect(function()
		dispatch(GetPresencesFromUserIds.API({ props.userId }))
	end, { props.userId })

	local selectUserPresence = React.useCallback(function(state: any)
		return state.Presence.byUserId[tostring(props.userId)]
	end, { props.userId })
	local presence = useSelector(selectUserPresence)

	local selectTag = React.useCallback(function(state: any)
		return state.Navigation.currentTag
	end, {})
	local tag = useSelector(selectTag)

	local controlState, setControlState = React.useState(ControlState.Initialize)
	local onStateChanged = React.useCallback(function(oldState, newState)
		setControlState(newState)
	end)

	local image
	if FFlagLuaAppUnifyCodeToGenerateRbxThumb then
		image = getStandardSizeAvatarHeadShotRbxthumb(tostring(props.userId))
	else
		image = SocialLibraries.User.getUserAvatarImage(props.userId)
	end

	local interactableTheme
	if controlState == ControlState.Pressed then
		interactableTheme = "BackgroundOnPress"
	elseif controlState == ControlState.Hover then
		interactableTheme = "BackgroundOnHover"
	else
		interactableTheme = "BackgroundDefault"
	end

	local startCall = function()
		-- TODO (timothyhsu): Remove check that callee and caller need to be in same mode when Call API is completed
		local IsUserInDevModeRemoteFunction = ReplicatedStorage:WaitForChild("Shared")
			:WaitForChild("IsUserInDevModeRemoteFunction") :: RemoteFunction
		local isLocalUserDevMode = IsUserInDevModeRemoteFunction:InvokeServer(localPlayer.UserId)
		if isLocalUserDevMode == IsUserInDevModeRemoteFunction:InvokeServer(props.userId) then
			if isLocalUserDevMode then
				coroutine.wrap(function()
					local invokeIrisInviteRemoteEvent =
						RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
					invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(props.userId))
				end)()
			else
				local CallRequestedEvent =
					ReplicatedStorage:WaitForChild("Shared"):WaitForChild("CallRequestedEvent") :: RemoteEvent
				CallRequestedEvent:FireServer(props.userId)
			end
		else
			local SharedRS = ReplicatedStorage:WaitForChild("Shared")
			local ShowGenericDialogBindableEvent =
				SharedRS:WaitForChild("ShowGenericDialogBindableEvent") :: BindableEvent
			ShowGenericDialogBindableEvent:Fire(
				"Error",
				"Cannot call another user that isn't in the same mode as you. Toggle your dev mode and try again.",
				true
			)
		end

		props.dismissCallback()
	end

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 92),
		BackgroundColor3 = theme[interactableTheme].Color,
		BackgroundTransparency = theme[interactableTheme].Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		onStateChanged = onStateChanged,
		[React.Event.Activated] = startCall,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Size = UDim2.fromOffset(68, 68),
			Image = image,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromOffset(80, 2),
			Size = UDim2.new(1, -80, 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			DisplayName = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Body.Font,
				LayoutOrder = 1,
				LineHeight = 1.25,
				Text = props.displayName,
				TextColor3 = theme.TextEmphasis.Color,
				TextSize = font.BaseSize * font.Body.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			Username = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Body.Font,
				LayoutOrder = 2,
				LineHeight = 1.25,
				Text = "@" .. props.userName,
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			PresenceDetails = React.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 3,
			}, {
				UIPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 8),
				}),

				PlayerContext = React.createElement(PlayerContext, {
					icon = if isOnline(presence)
						then Images["component_assets/circle_25"]
						else Images["component_assets/circle_26_stroke_3"],
					iconColor = if isOnline(presence)
						then style.Theme.OnlineStatus.Color
						else style.Theme.OfflineStatus.Color,
					iconSize = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
					iconTransparency = if isOnline(presence)
						then style.Theme.OnlineStatus.Transparency
						else style.Theme.OfflineStatus.Transparency,
					text = getTextFromPresence(presence),
					fontStyle = style.Font.CaptionBody,
				}),
			}),
		}),

		CallButton = if game:GetEngineFeature("EnableSocialServiceIrisInvite")
			then React.createElement(IconButton, {
				size = UDim2.fromOffset(28, 28),
				iconSize = IconSize.Large,
				position = UDim2.new(1, -60, 0, 8),
				iconColor3 = theme.ContextualPrimaryDefault.Color,
				iconTransparency = theme.ContextualPrimaryDefault.Transparency,
				icon = Images["icons/actions/accept"],
				onActivated = startCall,
			})
			else nil,
	})
end

return FriendListItem
