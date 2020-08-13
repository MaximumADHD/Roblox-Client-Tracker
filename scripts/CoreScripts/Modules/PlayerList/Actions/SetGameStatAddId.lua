local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetGameStatAddId", function(statName, serverAddId)
	return {
		statName = statName,
		serverAddId = serverAddId,
	}
end)