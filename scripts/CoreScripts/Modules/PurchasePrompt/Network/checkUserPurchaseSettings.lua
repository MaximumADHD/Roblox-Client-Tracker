local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

-- See https://github.rbx.com/Roblox/payments-gateway/blob/master/services/payments-gateway-api/src/Models/Responses/CheckUserPurchaseSettingsResponse.cs for response

local function checkUserPurchaseSettings(network)
	return network.checkUserPurchaseSettings()
		:andThen(function(result)
            return Promise.resolve(result)
		end)
		:catch(function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
	    end)
end

return checkUserPurchaseSettings
