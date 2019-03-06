local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerFollowRelationship", function(player, isFollower, isFollowing)
	return {
		player = player,
		userId = player.UserId,
		isFollower = isFollower,
		isFollowing = isFollowing,
	}
end)