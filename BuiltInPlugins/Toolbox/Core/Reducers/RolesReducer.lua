local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Core.Actions
local SetAllowedAssetTypes = require(Actions.SetAllowedAssetTypes)

return Rodux.createReducer({
	allowedAssetTypesForRelease = {},
	allowedAssetTypesForUpload = {},
}, {
	[SetAllowedAssetTypes.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			allowedAssetTypesForRelease = action.allowedAssetTypesForRelease,
			allowedAssetTypesForUpload = action.allowedAssetTypesForUpload,
		})
	end,
})
