local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetTeamColor", function(team, teamColor)
	return {
		isTeamAction = true,
		team = team,
		teamColor = teamColor,
	}
end)