--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerIsLocalPlayer", function(player, isLocalPlayer)
	return {
		player = player,
		userId = player.UserId,
		isLocalPlayer = isLocalPlayer,
	}
end)