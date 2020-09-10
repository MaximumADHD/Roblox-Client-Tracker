local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(recentAssets)
	assert(typeof(recentAssets) == "table",
		string.format("SetRecentAssets requires a table, not %s", type(recentAssets)))

	return {
		recentAssets = recentAssets,
	}
end)