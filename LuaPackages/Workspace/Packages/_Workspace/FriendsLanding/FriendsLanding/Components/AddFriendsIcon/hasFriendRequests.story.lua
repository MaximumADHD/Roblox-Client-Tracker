local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local FriendRequestsIcon = require(script.Parent)

local Story = Roact.PureComponent:extend("Story")

function Story:render()
	return Roact.createElement("Frame", { Size = UDim2.new(0, 100, 0, 100), BackgroundTransparency = 1 }, {
		FriendRequestsIcon = Roact.createElement(FriendRequestsIcon, {
			friendRequestCount = self.props.controls.friendRequestCount,
			position = UDim2.new(0, 0, 0, 50),
		}),
	})
end

return {
	controls = {
		friendRequestCount = 99,
	},
	story = Story,
}
