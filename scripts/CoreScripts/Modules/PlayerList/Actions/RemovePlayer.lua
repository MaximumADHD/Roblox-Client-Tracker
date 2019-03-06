local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("RemovePlayer", function(player)
	return {
		player = player,
		userId = player.UserId,
	}
end)