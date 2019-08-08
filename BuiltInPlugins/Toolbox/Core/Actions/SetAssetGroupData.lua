local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(assetGroupData)
	return {
		assetGroupData = assetGroupData,
	}
end)
