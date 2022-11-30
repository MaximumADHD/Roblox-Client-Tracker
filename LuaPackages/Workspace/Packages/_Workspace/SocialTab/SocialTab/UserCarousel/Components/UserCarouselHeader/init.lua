--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local Mock = dependencies.Mock

local Badge = UIBlox.App.Indicator.Badge
local BadgeStates = UIBlox.App.Indicator.Enum.BadgeStates
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton
local withStyle = UIBlox.Style.withStyle

local LocalizedKeys = require(SocialTab.Enums.LocalizedKeys)
local withLocalization = dependencies.withLocalization

local HEADER_HEIGHT = 50
local ICON_BUTTON_SIZE = 28

local SMALL_BADGE_X_OFFSET = 2
local SMALL_BADGE_Y_OFFSET = 6

local UserCarouselHeader = Roact.PureComponent:extend("UserCarouselHeader")
UserCarouselHeader.defaultProps = {
	friendCount = 0,
	hasFriendRequests = false,
	layoutOrder = 0,
	goToFriendRequestsPage = function() end,
	goToFriendsPage = function() end,
}

UserCarouselHeader.validateProps = t.interface({
	friendCount = t.number,
	hasFriendRequests = t.boolean,
	layoutOrder = t.optional(t.number),
	goToFriendRequestsPage = t.union(t.callback, Mock.MagicMock.is),
	goToFriendsPage = t.union(t.callback, Mock.MagicMock.is),
})

function UserCarouselHeader:init()
	self.goToFriendRequestsPage = function(...)
		return self.props.goToFriendRequestsPage(...)
	end
end

function UserCarouselHeader:render()
	local carouselHeaderKey = self.props.friendCount ~= 0
			and {
				LocalizedKeys.FriendsHeaderWithCount.rawValue(),
				friendCount = self.props.friendCount,
			}
		or LocalizedKeys.FriendsHeader.rawValue()

	return withLocalization({
		headerText = carouselHeaderKey,
	})(function(localizedStrings)
		return withStyle(function(style)
			local friendRequestsBadge = Roact.createElement(Badge, {
				position = UDim2.new(0.6, SMALL_BADGE_X_OFFSET, 0, SMALL_BADGE_Y_OFFSET),
				anchorPoint = Vector2.new(0, 0.5),
				value = BadgeStates.isEmpty,
			}) or Roact.createElement(Badge, {
				position = UDim2.new(0.6, 0, 0, 0),
				anchorPoint = Vector2.new(0, 0.5),
				value = "",
			})

			return Roact.createElement("Frame", {
				LayoutOrder = self.props.layoutOrder,
				Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextButton", {
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					Font = style.Font.Header1.Font,
					Size = UDim2.new(0, 0, 0, HEADER_HEIGHT),
					Text = localizedStrings.headerText,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = style.Font.Header1.RelativeSize * style.Font.BaseSize,
					TextTransparency = style.Theme.TextEmphasis.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

					[Roact.Event.Activated] = self.props.goToFriendsPage,
				}),
				FriendRequests = Roact.createElement(IconButton, {
					size = UDim2.fromOffset(ICON_BUTTON_SIZE, ICON_BUTTON_SIZE),
					icon = Images["icons/actions/friends/friendAdd"],
					position = UDim2.new(1, 0, 0.5, 0),
					anchorPoint = Vector2.new(1, 0.5),
					onActivated = self.goToFriendRequestsPage,
				}, {
					FriendRequestsBadge = self.props.hasFriendRequests and friendRequestsBadge or nil,
				}),
			})
		end)
	end)
end

return UserCarouselHeader
