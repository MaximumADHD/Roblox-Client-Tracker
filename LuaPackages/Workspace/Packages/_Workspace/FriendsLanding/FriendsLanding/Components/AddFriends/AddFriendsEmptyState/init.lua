local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local TextKeys = require(FriendsLanding.Common.TextKeys)
local dependencies = require(AddFriends.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local UIBloxEmptyState = UIBlox.App.Indicator.EmptyState
local Colors = UIBlox.App.Style.Colors

local AddFriendsEmptyState = Roact.PureComponent:extend("AddFriendsEmptyState")

local EMPTY_STATE_IMAGE = "rbxassetid://12261497919"
local EMPTY_STATE_ICON_SIZE = UDim2.new(0, 255, 0, 170)

AddFriendsEmptyState.validateProps = t.strictInterface({
	screenSize = t.optional(t.Vector2),
	showNewAddFriendsPageVariant = t.optional(t.boolean),
})

function AddFriendsEmptyState:render()
	return withLocalization({
		noRequestsText = "Feature.AddFriends.Label.NoRequests",
		emptyStatePromptText = if self.props.showNewAddFriendsPageVariant
			then TextKeys.ADD_FRIENDS_EMPTY_STATE_PROMPT_TEXT
			else nil,
		titleText = if self.props.showNewAddFriendsPageVariant then TextKeys.ADD_FRIENDS_TOOLTIP_TITLE else nil,
	})(function(localization)
		if self.props.showNewAddFriendsPageVariant then
			return Roact.createElement(UIBloxEmptyState, {
				-- Need iconColor = White for colored icons to show color correctly
				iconColor = Colors.White,
				icon = EMPTY_STATE_IMAGE,
				iconSize = EMPTY_STATE_ICON_SIZE,
				titleProps = {
					titleText = localization.titleText,
				},
				text = localization.emptyStatePromptText,
				maxSizeTextLabel = self.props.screenSize,
			})
		else
			return Roact.createElement(UIBloxEmptyState, {
				text = localization.noRequestsText,
				size = UDim2.fromScale(1, 1),
			})
		end
	end)
end

return AddFriendsEmptyState
