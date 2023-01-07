local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact

local AddFriendsEmptyState = require(script.Parent)

return function()
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 200, 0, 300),
		BackgroundTransparency = 1,
	}, {
		EmptyState = Roact.createElement(AddFriendsEmptyState),
	})
end
