--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector
local getStandardUserAvatarHeadShotImage = dependencies.getStandardUserAvatarHeadShotImage
local FFlagLuaAppUnifyCodeToGenerateRbxThumb = dependencies.FFlagLuaAppUnifyCodeToGenerateRbxThumb

local GetPresencesFromUserIds = dependencies.NetworkingPresence.GetPresencesFromUserIds
local GetUserV2FromUserId = dependencies.NetworkingUsers.GetUserV2FromUserId

local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local UIBlox = dependencies.UIBlox

local PlayerContext = UIBlox.App.Indicator.PlayerContext
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

export type Props = {
	userId: number | string,
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

	local selectUser = React.useCallback(function(state: any)
		local user = state.Users.byUserId[tostring(props.userId)]
		if not user then
			dispatch(GetUserV2FromUserId.API(props.userId))
		end
		return state.Users.byUserId[tostring(props.userId)]
	end, { props.userId })
	local user = useSelector(selectUser)

	local selectTag = React.useCallback(function(state: any)
		return state.Navigation.currentTag
	end, {})
	local tag = useSelector(selectTag)

	local image
	if FFlagLuaAppUnifyCodeToGenerateRbxThumb then
		image = getStandardUserAvatarHeadShotImage(tostring(props.userId))
	else
		image = SocialLibraries.User.getUserAvatarImage(props.userId)
	end

	return React.createElement("Frame", {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 92),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		BorderSizePixel = 0,
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
				Text = if user then user.displayName else "",
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
				Text = if user then "@" .. user.username else "",
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
				onActivated = function()
					if localPlayer then
						coroutine.wrap(function()
							local invokeIrisInviteRemoteEvent = RobloxReplicatedStorage:WaitForChild(
								"ContactListInvokeIrisInvite",
								math.huge
							) :: RemoteEvent
							invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(props.userId))
						end)()
					end
				end,
			})
			else nil,
	})
end

return FriendListItem
