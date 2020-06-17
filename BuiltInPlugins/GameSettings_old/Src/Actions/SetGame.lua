local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Framework.Util.Action)

return Action(script.Name, function(game)
	assert(typeof(game) == "Instance" and game:IsA("DataModel"),
        string.format(script.Name.." requires game to be a DataModel, not %s", typeof(game)))

	return {
        game = game,
	}
end)