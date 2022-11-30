local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local SocialTabContext = require(SocialTab.SocialTabContext)

local React = dependencies.React
local UIBlox = dependencies.UIBlox
local useLocalization = dependencies.useLocalization
local useSelector = dependencies.useSelector

local useStyle = UIBlox.Core.Style.useStyle
local Badge = UIBlox.App.Indicator.Badge
local BadgeStates = UIBlox.App.Indicator.Enum.BadgeStates
local getPageMargin = UIBlox.App.Container.getPageMargin

local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.Constant.IconSize
local IconButton = UIBlox.App.Button.IconButton
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local HEADER_HEIGHT = 48
local ICON_SIZE = 44
local SMALL_BADGE_X_OFFSET = 2
local SMALL_BADGE_Y_OFFSET = 6

export type Props = {
	onChatActivated: any,
	onGroupsActivated: any,
	onAddFriendActivated: any,
}

local function socialPanelHeaderSelector(state)
	return {
		unreadConversationCount = state.SocialTab and state.SocialTab.UnreadConversationCount or 0,
		friendRequestsCount = state.SocialTab and state.SocialTab.Friends.requests.receivedCount or 0,
		uid = state.LocalUserId or nil,
	}
end

local function SocialPanelHeader(props: Props)
	local onChatActivated = props.onChatActivated
	local onGroupsActivated = props.onGroupsActivated
	local onAddFriendActivated = props.onAddFriendActivated

	local selection = useSelector(socialPanelHeaderSelector)
	local friendRequestsCount = selection.friendRequestsCount
	local unreadConversationCount = selection.unreadConversationCount
	local uid = selection.uid

	local style = useStyle()
	local margin, setMargin = React.useState(0)

	local socialContext: any = React.useContext(SocialTabContext.Context)

	local analytics = socialContext.useRoactService(socialContext.roactAnalytics)
	local localized = useLocalization({
		connect = "Feature.SocialTab.Label.Connect",
	})

	local iconBadge = React.createElement(Badge, {
		position = UDim2.new(0.6, SMALL_BADGE_X_OFFSET, 0, SMALL_BADGE_Y_OFFSET),
		anchorPoint = Vector2.new(0, 0.5),
		value = BadgeStates.isEmpty,
	})

	local onResize = function(rbx)
		local margin = getPageMargin(rbx.AbsoluteSize.X)
		setMargin(margin)
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
		[React.Change.AbsoluteSize] = onResize,
		BackgroundTransparency = 1,
	}, {
		PanelLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Header = React.createElement("Frame", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, ICON_SIZE),
		}, {

			Paddig = React.createElement("UIPadding", {
				PaddingRight = UDim.new(0, margin),
				PaddingLeft = UDim.new(0, margin),
			}),
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}),
			Title = React.createElement(StyledTextLabel, {
				fluidSizing = false,
				size = UDim2.new(1, -ICON_SIZE * 3, 0, HEADER_HEIGHT),
				fontStyle = style.Font.Title,
				colorStyle = style.Theme.TextEmphasis,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
				text = localized.connect,
				textTruncate = Enum.TextTruncate.AtEnd,
			}),

			IconAdd = React.createElement(IconButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 2,
				icon = Images["icons/actions/friends/friendAdd"],
				onActivated = function()
					analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
						btn = "FriendReqeusts",
						uid = uid,
					})
					onAddFriendActivated()
				end,
			}, {
				FriendRequestsBadge = friendRequestsCount > 0 and iconBadge or nil,
			}),

			IconChat = React.createElement(IconButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 3,
				icon = Images["icons/menu/chat_off"],
				onActivated = function()
					-- analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
					-- 	btn = "Chats",
					-- 	uid = uid,
					-- })
					onChatActivated()
				end,
			}, {
				ChatBadge = unreadConversationCount > 0 and iconBadge or nil,
			}),

			IconGroup = React.createElement(IconButton, {
				iconSize = IconSize.Medium,
				layoutOrder = 4,
				icon = Images["icons/menu/groups"],
				onActivated = function()
					-- analytics.EventStream:setRBXEvent("SocialTab", "buttonClick", {
					-- 	btn = "Groups",
					-- 	uid = uid,
					-- })
					onGroupsActivated()
				end,
			}),
		}),
	})
end

return SocialPanelHeader
