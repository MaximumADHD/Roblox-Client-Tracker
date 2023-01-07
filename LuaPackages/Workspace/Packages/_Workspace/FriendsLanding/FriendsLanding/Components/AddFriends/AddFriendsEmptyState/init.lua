local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local UIBloxEmptyState = UIBlox.App.Indicator.EmptyState

local AddFriendsEmptyState = Roact.PureComponent:extend("AddFriendsEmptyState")

function AddFriendsEmptyState:render()
	return withLocalization({
		noRequestsText = "Feature.AddFriends.Label.NoRequests",
	})(function(localization)
		return Roact.createElement(UIBloxEmptyState, {
			text = localization.noRequestsText,
			size = UDim2.fromScale(1, 1),
		})
	end)
end

return AddFriendsEmptyState
