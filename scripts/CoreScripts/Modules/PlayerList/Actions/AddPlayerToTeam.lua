--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("AddPlayerToTeam", function(player, team)
	return {
		player = player,
		userId = player.UserId,
		team = team,
	}
end)