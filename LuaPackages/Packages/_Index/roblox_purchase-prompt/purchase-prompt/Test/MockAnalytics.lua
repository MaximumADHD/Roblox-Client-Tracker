--[[
	Mocks our analytics interface so we can make sure certain thunks
	trigger analytics calls without actually calling the real ones.
]]
local createSpy = require(script.Parent.createSpy)

local MockAnalytics = {}

function MockAnalytics.new()
	local reportRobuxUpsellStarted = createSpy()
	local signalPurchaseSuccess = createSpy()
	local signalPremiumUpsellShownPremium = createSpy()
	local signalPremiumUpsellShownNonPremium = createSpy()

	local mockService = {
		reportRobuxUpsellStarted = reportRobuxUpsellStarted.value,
		signalPurchaseSuccess = signalPurchaseSuccess.value,
		signalPremiumUpsellShownPremium = signalPremiumUpsellShownPremium.value,
		signalPremiumUpsellShownNonPremium = signalPremiumUpsellShownNonPremium.value
	}

	local spies = {
		reportRobuxUpsellStarted = reportRobuxUpsellStarted,
		signalPurchaseSuccess = signalPurchaseSuccess,
		signalPremiumUpsellShownPremium = signalPremiumUpsellShownPremium,
		signalPremiumUpsellShownNonPremium = signalPremiumUpsellShownNonPremium
	}

	setmetatable(mockService, {
		__tostring = function()
			return "Service(MockAnalytics)"
		end,
	})

	return {
		spies = spies,
		mockService = mockService,
	}
end

return MockAnalytics