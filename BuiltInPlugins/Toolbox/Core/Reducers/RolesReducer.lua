local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Core.Actions
local SetAllowedAssetTypes = require(Actions.SetAllowedAssetTypes)

local FFlagToolboxAssetConfigurationMinPriceFloor2 = game:GetFastFlag("ToolboxAssetConfigurationMinPriceFloor2")

if FFlagToolboxAssetConfigurationMinPriceFloor2 then
	return Rodux.createReducer({
		allowedAssetTypesForRelease = {},
		allowedAssetTypesForUpload = {},
		allowedAssetTypesForFree = {},
	}, {
		[SetAllowedAssetTypes.name] = function(state, action)
			return Cryo.Dictionary.join(state, {
				allowedAssetTypesForRelease = action.allowedAssetTypesForRelease,
				allowedAssetTypesForUpload = action.allowedAssetTypesForUpload,
				allowedAssetTypesForFree = action.allowedAssetTypesForFree,
			})
		end,
	})
else
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
end
