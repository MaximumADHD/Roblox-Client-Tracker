--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("RemoveGameStat", function(statName)
	return {
		statName = statName
	}
end)