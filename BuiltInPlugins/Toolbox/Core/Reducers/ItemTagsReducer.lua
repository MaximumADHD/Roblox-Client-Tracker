local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Core.Actions
local SetTagsMetadata = require(Actions.SetTagsMetadata)

return Rodux.createReducer({
	isItemTagsFeatureEnabled = false,
	enabledAssetTypesForItemTags = {},
	maximumItemTagsPerItem = 0,
}, {
	[SetTagsMetadata.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isItemTagsFeatureEnabled = action.isItemTagsFeatureEnabled,
			enabledAssetTypesForItemTags = action.enabledAssetTypesForItemTags,
			maximumItemTagsPerItem = action.maximumItemTagsPerItem,
		})
	end,
})
