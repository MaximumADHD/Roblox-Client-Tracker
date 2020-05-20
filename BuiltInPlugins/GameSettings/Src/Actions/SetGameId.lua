local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Framework.Util.Action)

return Action(script.Name, function(gameId)
	assert(typeof(gameId) == "number",
        string.format(script.Name.." requires gameId to be a number, not %s", typeof(gameId)))

	return {
        gameId = gameId,
	}
end)