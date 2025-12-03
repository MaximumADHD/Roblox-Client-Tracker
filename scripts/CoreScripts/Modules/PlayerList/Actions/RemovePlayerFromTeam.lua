--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("RemovePlayerFromTeam", function(player, team)
	return {
		player = player,
		userId = player.UserId,
		team = team,
	}
end)