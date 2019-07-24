
local Action = require(script.Parent.Action)

return Action(script.Name, function(gamesLock)
	assert(type(gamesLock) == "boolean", "SetGamesLock Action requires a boolean arg")

	return {
		gamesLock = gamesLock
	}
end)
