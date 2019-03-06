local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerIsCreator", function(player, isCreator)
	return {
		player = player,
		userId = player.UserId,
		isCreator = isCreator,
	}
end)