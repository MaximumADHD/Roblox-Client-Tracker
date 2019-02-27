local PurchaseError = require(script.Parent.Parent.PurchaseError)
local Promise = require(script.Parent.Parent.Promise)

local function performPurchase(network, infoType, productId, expectedPrice, requestId)
	return network.performPurchase(infoType, productId, expectedPrice, requestId)
		:andThen(function(result)
			--[[
				User might purchase the product through the web after having
				opened the purchase prompt, so an AlreadyOwned status is
				acceptable.
			]]
			if result.success or result.status == "AlreadyOwned" then
				return Promise.resolve(result)
			elseif infoType == Enum.InfoType.Product and not result.receipt then
				return Promise.reject(PurchaseError.UnknownFailure)
			else
				if result.status == "EconomyDisabled" then
					return Promise.reject(PurchaseError.PurchaseDisabled)
				else
					return Promise.reject(PurchaseError.UnknownFailure)
				end
			end
		end, function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return performPurchase