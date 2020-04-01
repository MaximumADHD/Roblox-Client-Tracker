local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(editingAssets)
	assert(type(editingAssets) == "table",
		string.format("SetSelectedAssets requires a table, not %s", type(editingAssets)))

	return {
		editingAssets = editingAssets,
	}
end)