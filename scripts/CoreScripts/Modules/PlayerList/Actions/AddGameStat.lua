local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("AddGameStat", function(statName, isPrimary, priority)
	return {
		statName = statName,
		isPrimary = isPrimary,
		priority = priority,
	}
end)