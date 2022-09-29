local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function getPurchaseWarning(network, productId)
	return network.getPurchaseWarning(productId)
		:andThen(function(result)
			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getPurchaseWarning
