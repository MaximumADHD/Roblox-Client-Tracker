local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)

local DEFAULT_INFORMATION = {
	viewingDetails = false,
	assetId = nil,
}

return Rodux.createReducer(DEFAULT_INFORMATION, {
	[SetDetailsInformation.name] = function(state, action)
		local newInformation = {
			viewingDetails = action.viewingDetails,
			assetId = action.assetId,
		}

		return newInformation
	end,
})
