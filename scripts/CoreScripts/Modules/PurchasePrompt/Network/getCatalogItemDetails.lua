local Root = script.Parent.Parent

local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function getCatalogItemDetails(network: any, itemId: number, itemType: ("asset" | "bundle"))
	return network
		.getCatalogItemDetails(itemId, itemType)
		:andThen(function(result)
			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getCatalogItemDetails
