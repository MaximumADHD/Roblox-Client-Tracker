local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)
local FFlagAXIaBSinglePurchaseUnifiedEvents = require(InspectAndBuyFolder.Flags.FFlagAXIaBSinglePurchaseUnifiedEvents)

local DEFAULT_INFORMATION = {
	itemType = nil,
	itemId = nil,
	resalePrice = nil,
}

return Rodux.createReducer(DEFAULT_INFORMATION, {
	[SetItemBeingPurchased.name] = function(state, action)
		local newInformation = {
			itemType = action.itemType,
			itemId = action.itemId,
			resalePrice = if FFlagAXIaBSinglePurchaseUnifiedEvents then action.resalePrice else nil,
		}

		return newInformation
	end,
})
