local Root = script.Parent.Parent

local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)
local GetFFlagNewEconomyDeveloperProductUrl = require(Root.Flags.GetFFlagNewEconomyDeveloperProductUrl)

local function performPurchase(network, infoType, productId, expectedPrice, requestId, isRobloxPurchase)
	return network.performPurchase(infoType, productId, expectedPrice, requestId, isRobloxPurchase)
		:andThen(function(result)
			--[[
				User might purchase the product through the web after having
				opened the purchase prompt, so an AlreadyOwned status is
				acceptable.
			]]

			--[[
				Assets and Gamepasses use the new economy purchasing endpoint. Developer Products still use
				the old marketplace/submitpurchase endpoint.
			]]
			if infoType == Enum.InfoType.Asset or infoType == Enum.InfoType.GamePass or infoType == Enum.InfoType.Bundle
					or (GetFFlagNewEconomyDeveloperProductUrl() and infoType == Enum.InfoType.Product) then
				if result.purchased or result.reason == "AlreadyOwned" then
					return Promise.resolve(result)
				elseif result.reason == "EconomyDisabled" then
					return Promise.reject(PurchaseError.PurchaseDisabled)
				else
					return Promise.reject(PurchaseError.UnknownFailure)
				end
			elseif infoType == Enum.InfoType.Product then
				if result.success or result.status == "AlreadyOwned" then
					return Promise.resolve(result)
				elseif not result.receipt then
					return Promise.reject(PurchaseError.UnknownFailure)
				else
					if result.status == "EconomyDisabled" then
						return Promise.reject(PurchaseError.PurchaseDisabled)
					else
						return Promise.reject(PurchaseError.UnknownFailure)
					end
				end
			elseif infoType == Enum.InfoType.Subscription then
				if result.success or result.reason == "AlreadyOwned" then
					return Promise.resolve(result)
				elseif result.reason == "EconomyDisabled" then
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
