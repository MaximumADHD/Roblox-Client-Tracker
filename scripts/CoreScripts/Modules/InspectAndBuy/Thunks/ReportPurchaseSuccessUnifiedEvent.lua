local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local GetPurchaseAnalyticsOptions = require(InspectAndBuyFolder.Selectors.GetPurchaseAnalyticsOptions)

local requiredServices = {
	Analytics,
}

--[[
	Reports a completed single-item purchase to the unified marketplace funnel,
	and to the legacy eventstream for backwards compatibility.

	This is a thunk because the purchase-finished handler only knows the item's
	id and type; the sub-type and price it also has to report live in the store.

	`resalePrice` is recorded on `itemBeingPurchased` when the prompt opens, and is
	set only for limited resales. Passing it through keeps the success event
	reporting the same price the matching attempt event reported.
]]
local function ReportPurchaseSuccessUnifiedEvent(itemId, itemType, resalePrice: number?)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		analytics.reportPurchaseSuccessUnifiedEvent(
			itemType,
			itemId,
			GetPurchaseAnalyticsOptions(store:getState(), itemId, itemType, resalePrice)
		)
	end)
end

return ReportPurchaseSuccessUnifiedEvent
