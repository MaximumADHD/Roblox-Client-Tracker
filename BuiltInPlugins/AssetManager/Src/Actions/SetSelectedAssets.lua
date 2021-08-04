local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function(selectedAssets)
	assert(type(selectedAssets) == "table",
		string.format("SetSelectedAssets requires a table, not %s", type(selectedAssets)))

	return {
		selectedAssets = selectedAssets,
	}
end)
