local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local FriendRequestsIcon = require(script.Parent)

return function(props)
	return Roact.createElement(FriendRequestsIcon, props)
end
