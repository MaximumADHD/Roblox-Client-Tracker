local Root = script.Parent.Parent
local Promise = require(Root.Promise)
local parseSubscriptionError = require(Root.Utils.parseSubscriptionError)
local GetFFlagEnableRobloxCreditPurchase = require(Root.Flags.GetFFlagEnableRobloxCreditPurchase)

local function performSubscriptionPurchase(network, subscriptionId, paymentMethod)
	if GetFFlagEnableRobloxCreditPurchase() then
		return network.performSubscriptionPurchase(subscriptionId, paymentMethod):catch(function(failure)
			return Promise.reject(parseSubscriptionError(failure))
		end)
	else
		return network.DEPRECATED_performSubscriptionPurchase(subscriptionId):catch(function(failure)
			return Promise.reject(parseSubscriptionError(failure))
		end)
	end
end

return performSubscriptionPurchase
