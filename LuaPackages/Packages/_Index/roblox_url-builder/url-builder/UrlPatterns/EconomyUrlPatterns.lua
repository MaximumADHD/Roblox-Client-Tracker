return function(UrlBuilder)
	local EconomyPatterns = {
		paymentsGateway = {
			getUpsellProduct = UrlBuilder.fromString("apis:payments-gateway/v1/products/get-upsell-product"),
		},
		purchaseWarning = {
			getPurchaseWarning = function(mobileProductId: string)
				return UrlBuilder.fromString(string.format("apis:purchase-warning/v1/purchase-warnings?mobileProductId=%s", mobileProductId))()
			end,
			ackPurchaseWarning = UrlBuilder.fromString("apis:purchase-warning/v1/purchase-warnings/acknowledge"),
		}
	}

	return EconomyPatterns
end
