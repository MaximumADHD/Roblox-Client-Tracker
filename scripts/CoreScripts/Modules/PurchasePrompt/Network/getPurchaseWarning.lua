local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function getPurchaseWarning(network: any, mobileProductId: string?, productId: number?, isPremium: boolean)
	return network.getPurchaseWarning(mobileProductId, productId, isPremium)
		:andThen(function(result)
			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getPurchaseWarning
