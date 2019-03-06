local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerSpecialGroupIcon", function(player, groupIcon)
	return {
		player = player,
		userId = player.UserId,
		specialGroupIcon = groupIcon,
	}
end)