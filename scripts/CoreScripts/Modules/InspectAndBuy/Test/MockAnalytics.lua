--[[
	Mocks our analytics interface so we can make sure certain thunks
	trigger analytics calls without actually calling the real ones.

	This mock service has some ad hoc mechanisms to introspect into it,
	but we should create an actual spy pattern to use with it in the future
]]
local MockAnalytics = {}

function MockAnalytics.new()
	local service = {
		reportOpenInspectMenu_callCount = 0,
		reportTryOnButtonClicked_callCount = 0,
		reportFavoriteItem_callCount = 0,
		reportPurchaseAttempt_callCount = 0,
		reportPurchaseSuccess_callCount = 0,
	}

	setmetatable(service, {
		__tostring = function()
			return "Service(MockAnalytics)"
		end,
	})

	function service.reportOpenInspectMenu(ctx)
		service.reportOpenInspectMenu_callCount = service.reportOpenInspectMenu_callCount + 1
	end

	function service.reportTryOnButtonClicked(itemType, itemID, ctx)
		service.reportTryOnButtonClicked_callCount = service.reportTryOnButtonClicked_callCount + 1
	end

	function service.reportFavoriteItem(itemType, itemID, favorite, success, failureReason, favoriteCount, ctx)
		service.reportFavoriteItem_callCount = service.reportFavoriteItem_callCount + 1
	end

	function service.reportPurchaseAttempt(itemType, itemID, ctx)
		service.reportPurchaseAttempt_callCount = service.reportPurchaseAttempt_callCount + 1
	end

	function service.reportPurchaseSuccess()
		service.reportPurchaseSuccess_callCount = service.reportPurchaseSuccess_callCount + 1
	end

	return service
end

return MockAnalytics