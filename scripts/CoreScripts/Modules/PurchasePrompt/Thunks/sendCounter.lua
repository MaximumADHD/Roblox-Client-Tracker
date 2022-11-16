local Root = script.Parent.Parent

local Counter = require(Root.Enums.Counter)
local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local PaymentPlatform = require(Root.Enums.PaymentPlatform)

local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)

local getPaymentPlatform = require(Root.Utils.getPaymentPlatform)
local getCounterCombinations = require(Root.Utils.getCounterCombinations)

local Thunk = require(Root.Thunk)

local COUNTER_PREFIX = "PurchasePrompt"

local requiredServices = {
	Analytics,
	ExternalSettings,
}

local function sendCounter(counter: any)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]

		local counterName = Counter.toRawValue(counter)

		local state = store:getState()
		-- state.purchaseFlow will be nil depending on the flow + state
		local purchaseFlow = state.purchaseFlow
		local purchaseFlowStr = if purchaseFlow ~= nil then PurchaseFlow.toRawValue(purchaseFlow) else nil

		-- state.nativeUpsell.robuxPurchaseAmount will be nil depending on the flow + state
		local robuxAmount = state.nativeUpsell.robuxPurchaseAmount

		local platform = externalSettings.getPlatform()
		local paymentPlatform = getPaymentPlatform(platform)
		local paymentPlatformStr = PaymentPlatform.toRawValue(paymentPlatform)

		local counters = getCounterCombinations(COUNTER_PREFIX, counterName, paymentPlatformStr, purchaseFlowStr, robuxAmount)

		for _, counter in counters do
			analytics.sendCounter(counter)
		end
	end)
end

return sendCounter
