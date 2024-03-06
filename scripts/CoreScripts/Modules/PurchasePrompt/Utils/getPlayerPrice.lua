local Root = script.Parent.Parent

-- Used on the data in the state
return function(productInfo: { [any]: any }, isPlayerPremium: boolean, expectedPrice: number?)
	if expectedPrice and expectedPrice > 0 then
		return expectedPrice
	end
	if isPlayerPremium then
		if productInfo.premiumPrice ~= nil then
			return productInfo.premiumPrice
		else
			return productInfo.price
		end
	else
		return productInfo.price
	end
end
