--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("AddTeam", function(team)
	return {
		team = team
	}
end)