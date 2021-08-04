local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(recentViewToggled)
	assert(typeof(recentViewToggled) == "boolean",
		string.format("SetRecentViewToggled requires a boolean, not %s", type(recentViewToggled)))

	return {
		recentViewToggled = recentViewToggled,
	}
end)
