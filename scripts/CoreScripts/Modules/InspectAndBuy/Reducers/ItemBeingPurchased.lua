local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)

local DEFAULT_INFORMATION = {
	itemType = nil,
	itemId = nil,
}

return Rodux.createReducer(
	DEFAULT_INFORMATION
, {
	[SetItemBeingPurchased.name] = function(state, action)
		local newInformation = {
			itemType = action.itemType,
			itemId = action.itemId,
		}

		return newInformation
	end,
})