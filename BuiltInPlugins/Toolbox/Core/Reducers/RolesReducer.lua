local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

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
