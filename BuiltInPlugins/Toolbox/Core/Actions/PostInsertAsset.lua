local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(assetId, newData)
	return {
		assetId = assetId,
		insertResponse = newData,
	}
end)
