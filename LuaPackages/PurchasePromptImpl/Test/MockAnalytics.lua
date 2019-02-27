--[[
	Mocks our analytics interface so we can make sure certain thunks
	trigger analytics calls without actually calling the real ones.

	This mock service has some ad hoc mechanisms to introspect into it,
	but we should create an actual spy pattern to use with it in the future
]]
local MockAnalytics = {}

function MockAnalytics.new()
	local service = {
		reportRobuxUpsellStarted_callCount = 0,
		signalPurchaseSuccess_callCount = 0,
	}

	setmetatable(service, {
		__tostring = function()
			return "Service(MockAnalytics)"
		end,
	})

	function service.reportRobuxUpsellStarted()
		service.reportRobuxUpsellStarted_callCount = service.reportRobuxUpsellStarted_callCount + 1
	end

	function service.signalPurchaseSuccess(id, infoType, salePrice, result)
		service.signalPurchaseSuccess_callCount = service.signalPurchaseSuccess_callCount + 1
	end

	return service
end

return MockAnalytics