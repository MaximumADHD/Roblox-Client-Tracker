local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerFriendStatus", function(player, friendStatus)
	return {
		player = player,
		userId = player.UserId,
		friendStatus = friendStatus,
	}
end)