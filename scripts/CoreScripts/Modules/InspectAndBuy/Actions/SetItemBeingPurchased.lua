local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator
local InspectAndBuyFolder = script.Parent.Parent
local FFlagAXIaBSinglePurchaseUnifiedEvents = require(InspectAndBuyFolder.Flags.FFlagAXIaBSinglePurchaseUnifiedEvents)

--[[
	`resalePrice` is set only when the prompt was for a limited resale, where the
	buyer pays the resale price rather than the catalog price. The purchase-success
	handler has no other way to know which of the two the buyer was charged.
]]
return Action(script.Name, function(itemId, itemType, resalePrice)
	return {
		itemId = itemId,
		itemType = itemType,
		resalePrice = if FFlagAXIaBSinglePurchaseUnifiedEvents then resalePrice else nil,
	}
end)
