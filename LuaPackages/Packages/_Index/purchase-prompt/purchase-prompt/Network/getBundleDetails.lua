local PurchaseError = require(script.Parent.Parent.PurchaseError)

local Promise = require(script.Parent.Parent.Promise)

local function getBundleDetails(network, bundleId)
	return network.getBundleDetails(bundleId)
		:andThen(function(result)
			return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return getBundleDetails