local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(assetId, status)
	return {
		assetId = assetId,
		status = status,
	}
end)
