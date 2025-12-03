--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerIsFollowing", function(player, isFollowing)
	return {
		player = player,
		userId = player.UserId,
		isFollowing = isFollowing,
	}
end)