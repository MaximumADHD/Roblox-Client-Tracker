return function(UrlBuilder)
	local EconomyPatterns = {
		paymentsGateway = {
			getUpsellProduct = UrlBuilder.fromString("apis:payments-gateway/v1/products/get-upsell-product"),
			preparePayment = UrlBuilder.fromString("apis:payments-gateway/v1/prepare-payment"),
			checkUserPurchaseSettings = UrlBuilder.fromString("apis:payments-gateway/v1/check-user-purchase-settings"),
		},
		purchaseWarning = {
			getPurchaseWarning = function(mobileProductId: string?, productId: number?, is13To17ScaryModalEnabled: boolean?)
				local baseURL: string = "apis:purchase-warning/v1/purchase-warnings"
				local url: string = ""

				if mobileProductId ~= nil then
					url = string.format("%s?mobileProductId=%s", baseURL, mobileProductId)
				elseif productId ~= nil then 
					url = string.format("%s?productId=%d", baseURL, productId)
				else
					warn(string.format("%s - Invalid parameters, needs mobileProductId or productId", tostring(script.Name)))
					return nil
				end

				if is13To17ScaryModalEnabled then
					url = string.format("%s&is13To17ScaryModalEnabled=True", url)
				end
				
				return UrlBuilder.fromString(url)()
			end,
			ackPurchaseWarning = UrlBuilder.fromString("apis:purchase-warning/v1/purchase-warnings/acknowledge"),
		},
		vngPayments = {
			getVngShopUrl = UrlBuilder.fromString("apis:vng-payments/v1/getVngShopUrl"),
		}
	}

	return EconomyPatterns
end
