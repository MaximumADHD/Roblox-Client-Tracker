local Root = script.Parent.Parent
local Promise = require(Root.Promise)
local parseSubscriptionError = require(Root.Utils.parseSubscriptionError)

local function getSubscriptionPurchaseInfo(network, subscriptionId)
	return network.getSubscriptionPurchaseInfo(subscriptionId)
		:catch(function(failure)
			return Promise.reject(parseSubscriptionError(failure))
		end)
end

return getSubscriptionPurchaseInfo
