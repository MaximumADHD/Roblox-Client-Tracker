local Root = script.Parent.Parent
local Promise = require(Root.Promise)
local parseSubscriptionError = require(Root.Utils.parseSubscriptionError)

local function performSubscriptionPurchase(network, subscriptionId)
	return network.performSubscriptionPurchase(subscriptionId)
		:catch(function(failure)
			return Promise.reject(parseSubscriptionError(failure))
		end)
end

return performSubscriptionPurchase
