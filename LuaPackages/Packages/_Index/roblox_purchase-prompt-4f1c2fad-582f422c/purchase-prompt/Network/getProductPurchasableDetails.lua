local PurchaseError = require(script.Parent.Parent.PurchaseError)

local Promise = require(script.Parent.Parent.Promise)

local function getProductPurchasableDetails(network, productId)
	return network.getProductPurchasableDetails(productId)
		:andThen(function(result)
			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getProductPurchasableDetails