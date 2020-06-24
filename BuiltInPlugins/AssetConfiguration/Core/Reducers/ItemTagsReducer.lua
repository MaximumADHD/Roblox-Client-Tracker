local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

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
