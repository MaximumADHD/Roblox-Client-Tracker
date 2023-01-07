local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact

local PlayerTileFriendshipButton = require(script.Parent)

return function()
	return Roact.createElement(PlayerTileFriendshipButton, {
		status = Enum.FriendStatus.NotFriend,
	})
end
