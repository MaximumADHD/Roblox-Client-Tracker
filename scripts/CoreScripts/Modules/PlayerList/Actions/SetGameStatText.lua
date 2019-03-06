local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetGameStatText", function(statName, text)
	return {
		statName = statName,
		text = text,
	}
end)