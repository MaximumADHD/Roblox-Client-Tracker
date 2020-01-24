local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function getPremiumProductInfo(network)
	return network.getPremiumProductInfo()
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailureNoItemName)
		end)
end

return getPremiumProductInfo