--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerLeaderstat", function(player, leaderstat, value)
	return {
		player = player,
		userId = player.UserId,
		leaderstat = leaderstat,
		value = value,
	}
end)