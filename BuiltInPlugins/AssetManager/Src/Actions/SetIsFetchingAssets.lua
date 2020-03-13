local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(isFetchingAssets)
	assert(type(isFetchingAssets) == "boolean",
		string.format("SetScreen requires a boolean, not %s", type(isFetchingAssets)))

	return {
		isFetchingAssets = isFetchingAssets,
	}
end)