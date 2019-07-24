local PurchaseError = require(script.Parent.Parent.PurchaseError)
local Promise = require(script.Parent.Parent.Promise)

local DFFlagUseEconomyPurchaseProductsEndPoint = settings():GetFFlag("UseEconomyPurchaseProductsEndPoint")
local FFlagSetupEconomyPurchaseProductsEndPoint = settings():GetFFlag("SetupEconomyPurchaseProductsEndPoint")
local usingNewPurchaseEndPoint = DFFlagUseEconomyPurchaseProductsEndPoint and FFlagSetupEconomyPurchaseProductsEndPoint

local FFlagPerformPurchaseNewBundleInfoTypeEnabled = settings():GetFFlag("PerformPurchaseNewBundleInfoTypeEnabled")

local function performPurchase(network, infoType, productId, expectedPrice, requestId)
	return network.performPurchase(infoType, productId, expectedPrice, requestId)
		:andThen(function(result)
			--[[
				User might purchase the product through the web after having
				opened the purchase prompt, so an AlreadyOwned status is
				acceptable.
			]]
			if usingNewPurchaseEndPoint then
				--[[
					Assets and Gamepasses use the new economy purchasing endpoint. Developer Products still use
					the old marketplace/submitpurchase endpoint.
				]]
				if infoType == Enum.InfoType.Asset or infoType == Enum.InfoType.GamePass or
					(FFlagPerformPurchaseNewBundleInfoTypeEnabled and infoType == Enum.InfoType.Bundle) then
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
				end
			else
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
			end
		end, function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return performPurchase