local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetTeamName", function(team, teamName)
	return {
		isTeamAction = true,
		team = team,
		teamName = teamName,
	}
end)