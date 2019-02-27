local PurchaseError = require(script.Parent.Parent.PurchaseError)
local Promise = require(script.Parent.Parent.Promise)

local function getProductInfo(network, id, infoType)
	return network.getProductInfo(id, infoType)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailureNoItemName)
		end)
end

return getProductInfo