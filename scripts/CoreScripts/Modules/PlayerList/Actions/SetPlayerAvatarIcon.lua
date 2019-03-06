local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerAvatarIcon", function(player, avatarIcon)
	return {
		player = player,
		userId = player.UserId,
		avatarIcon = avatarIcon,
	}
end)