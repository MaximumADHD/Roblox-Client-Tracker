local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local ProductInfoReceived = require(script.Parent.Parent.Actions.ProductInfoReceived)

local getPreviewImageUrl = require(script.Parent.Parent.getPreviewImageUrl)

local ProductInfoReducer = Rodux.createReducer({}, {
	[ProductInfoReceived.name] = function(state, action)
		local productInfo = action.productInfo

		return {
			name = productInfo.Name,
			price = productInfo.PriceInRobux or 0,
			imageUrl = getPreviewImageUrl(productInfo),
			assetTypeId = productInfo.AssetTypeId,
			productId = productInfo.ProductId,
			bcLevelRequired = productInfo.MinimumMembershipLevel,
		}
	end,
})

return ProductInfoReducer