local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(assetId, status)
	return {
		assetId = assetId,
		status = status,
	}
end)
