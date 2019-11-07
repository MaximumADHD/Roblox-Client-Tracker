local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Actions = Plugin.Core.Actions
local SetCatalogItemCreator = require(Actions.SetCatalogItemCreator)
local SetAllowedAssetTypes =  require(Actions.SetAllowedAssetTypes)

return Rodux.createReducer({
	isCatalogItemCreator = false, -- remove with FFlagCMSRemoveUGCContentEnabledBoolean
	allowedAssetTypesForRelease = {},
	allowedAssetTypesForUpload = {}
}, {
	[SetCatalogItemCreator.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isCatalogItemCreator = action.isCatalogItemCreator,
		})
	end,

	[SetAllowedAssetTypes.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			allowedAssetTypesForRelease = action.allowedAssetTypesForRelease,
			allowedAssetTypesForUpload = action.allowedAssetTypesForUpload,
		})
	end,
})
