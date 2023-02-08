local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local TextKeys = require(FriendsLanding.Common.TextKeys)
local dependencies = require(AddFriends.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local UIBloxEmptyState = UIBlox.App.Indicator.EmptyState

local getFFlagAddFriendsNewEmptyState = dependencies.getFFlagAddFriendsNewEmptyState

local AddFriendsEmptyState = Roact.PureComponent:extend("AddFriendsEmptyState")

local EMPTY_STATE_IMAGE = if getFFlagAddFriendsNewEmptyState() then "rbxassetid://12261497919" else nil
local EMPTY_STATE_ICON_SIZE = if getFFlagAddFriendsNewEmptyState() then UDim2.new(0, 255, 0, 170) else nil

if getFFlagAddFriendsNewEmptyState() then
	AddFriendsEmptyState.validateProps = t.strictInterface({
		screenSize = t.optional(t.Vector2),
	})
end

function AddFriendsEmptyState:render()
	return withLocalization({
		noRequestsText = if getFFlagAddFriendsNewEmptyState() then nil else "Feature.AddFriends.Label.NoRequests",
		emptyStatePromptText = if getFFlagAddFriendsNewEmptyState()
			then TextKeys.ADD_FRIENDS_EMPTY_STATE_PROMPT_TEXT
			else nil,
		titleText = if getFFlagAddFriendsNewEmptyState() then TextKeys.ADD_FRIENDS_TOOLTIP_TITLE else nil,
	})(function(localization)
		if getFFlagAddFriendsNewEmptyState() then
			return Roact.createElement(UIBloxEmptyState, {
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
