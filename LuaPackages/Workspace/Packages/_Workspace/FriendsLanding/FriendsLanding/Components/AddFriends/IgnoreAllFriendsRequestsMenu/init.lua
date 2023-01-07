local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local BaseMenu = UIBlox.App.Menu.BaseMenu

local IgnoreAllFriendsRequestsMenu = Roact.PureComponent:extend("IgnoreAllFriendsRequestsMenu")

IgnoreAllFriendsRequestsMenu.validateProps = t.strictInterface({
	open = t.boolean,
	onIgnoreAll = t.callback,
	width = t.optional(t.UDim),
	openPositionY = t.optional(t.UDim),
})

IgnoreAllFriendsRequestsMenu.defaultProps = {
	openPositionY = UDim.new(0, 0),
}

function IgnoreAllFriendsRequestsMenu:render()
	return withLocalization({
		ignoreAllLabel = "Feature.AddFriends.Action.IgnoreAll",
	})(function(localization)
		local open = self.props.open
		local onIgnoreAll = self.props.onIgnoreAll
		local width = self.props.width
		local openPositionY = self.props.openPositionY

		return open
				and Roact.createElement(BaseMenu, {
					buttonProps = {
						{
							text = localization.ignoreAllLabel,
							onActivated = onIgnoreAll,
						},
					},
					anchorPoint = Vector2.new(1, 0),
					width = width,
					position = UDim2.new(UDim.new(1, 0), openPositionY),
				})
			or nil
	end)
end

return IgnoreAllFriendsRequestsMenu
