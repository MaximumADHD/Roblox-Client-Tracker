--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("RemoveTeam", function(team)
	return {
		team = team
	}
end)