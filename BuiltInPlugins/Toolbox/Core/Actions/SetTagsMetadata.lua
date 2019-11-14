local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(isItemTagsFeatureEnabled, enabledAssetTypes, maximumItemTagsPerItem)
	return {
		isItemTagsFeatureEnabled = isItemTagsFeatureEnabled,
		enabledAssetTypesForItemTags = enabledAssetTypes,
		maximumItemTagsPerItem = maximumItemTagsPerItem,
	}
end)
