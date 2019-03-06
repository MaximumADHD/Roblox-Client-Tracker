local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerIsBlocked", function(player, isBlocked)
	return {
		player = player,
		userId = player.UserId,
		isBlocked = isBlocked,
	}
end)