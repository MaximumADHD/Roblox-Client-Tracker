local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)

local DEFAULT_INFO = {
	tryingOn = false,
	assetId = nil,
	assetTypeId = nil,
}

return Rodux.createReducer(DEFAULT_INFO, {
	[SetTryingOnInfo.name] = function(state, action)
		local newInfo = {
			tryingOn = action.tryingOn,
			assetId = action.assetId,
			assetTypeId = action.assetTypeId,
		}

		return newInfo
	end,
})
