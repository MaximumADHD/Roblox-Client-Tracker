local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(isItemTagsFeatureEnabled, enabledAssetTypes, maximumItemTagsPerItem)
	return {
		isItemTagsFeatureEnabled = isItemTagsFeatureEnabled,
		enabledAssetTypesForItemTags = enabledAssetTypes,
		maximumItemTagsPerItem = maximumItemTagsPerItem,
	}
end)
