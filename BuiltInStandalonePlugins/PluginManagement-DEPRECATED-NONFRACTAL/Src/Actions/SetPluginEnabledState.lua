local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Action)

return Action(script.Name, function(assetId, enabled)
	return {
		assetId = assetId,
		enabled = enabled,
	}
end)
