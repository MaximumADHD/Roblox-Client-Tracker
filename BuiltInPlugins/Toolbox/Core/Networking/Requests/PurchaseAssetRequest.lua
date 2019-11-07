--[[
	A request used to purchase an asset with a ProductId.

	Params:
		networkInterface = The NetworkInterface impl.
		assetId = The asset's assetId.
		productId = The asset's productId.
		price = The expected price of the product.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetOwnsAsset = require(Plugin.Core.Actions.SetOwnsAsset)
local SetPurchaseStatus = require(Plugin.Core.Actions.SetPurchaseStatus)
local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

return function(networkInterface, assetId, productId, price)
	return function(store)
		store:dispatch(SetPurchaseStatus(PurchaseStatus.Waiting))
		local info = {
			expectedPrice = price,

			-- TODO: Remove when switching to the v2 endpoint.
			-- The v1 endpoint always expects "expectedCurrency = 0" for Robux.
			expectedCurrency = 0,
		}
		return networkInterface:purchaseAsset(productId, info):andThen(function(result)
			local purchased = result.responseBody.purchased
			if purchased then
				store:dispatch(SetPurchaseStatus(PurchaseStatus.Success))
				store:dispatch(SetOwnsAsset(true, assetId))
			else
				store:dispatch(SetPurchaseStatus(PurchaseStatus.Failed))
			end
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Could not purchase asset")
			end

			store:dispatch(SetPurchaseStatus(PurchaseStatus.Failed))
			store:dispatch(NetworkError(result))
		end)
	end
end
