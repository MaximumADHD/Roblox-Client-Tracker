local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Framework.Util.Action)

return Action(script.Name, function(editPlaceId)
	assert(type(editPlaceId) == "number", string.format("SetAssets requires a number, not %s", type(editPlaceId)))

	return {
		editPlaceId = editPlaceId
	}
end)