--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("AddPlayer", function(player)
	return {
		player = player,
		userId = player.UserId,
	}
end)