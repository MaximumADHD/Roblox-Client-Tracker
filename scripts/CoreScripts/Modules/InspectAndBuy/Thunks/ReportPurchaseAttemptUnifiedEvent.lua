local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local GetPurchaseAnalyticsOptions = require(InspectAndBuyFolder.Selectors.GetPurchaseAnalyticsOptions)

local requiredServices = {
	Analytics,
}

--[[
	Reports an attempted single-item purchase to the unified marketplace funnel,
	and to the legacy eventstream for backwards compatibility.

	`resalePrice` is only set when the prompt is for a limited resale, where the
	buyer pays the resale price rather than the catalog price held in the store.
]]
local function ReportPurchaseAttemptUnifiedEvent(itemId, itemType, resalePrice: number?)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		analytics.reportPurchaseAttemptUnifiedEvent(
			itemType,
			itemId,
			GetPurchaseAnalyticsOptions(store:getState(), itemId, itemType, resalePrice)
		)
	end)
end

return ReportPurchaseAttemptUnifiedEvent
