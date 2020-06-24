local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Actions = Plugin.Core.Actions
local SetAllowedAssetTypes =  require(Actions.SetAllowedAssetTypes)

return Rodux.createReducer({
	allowedAssetTypesForRelease = {},
	allowedAssetTypesForUpload = {}
}, {
	[SetAllowedAssetTypes.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			allowedAssetTypesForRelease = action.allowedAssetTypesForRelease,
			allowedAssetTypesForUpload = action.allowedAssetTypesForUpload,
		})
	end,
})
