local Root = script.Parent.Parent


-- Used on the data directly from the endpoint
-- TODO: Consolidate this with the other function
return function(productInfo, isPlayerPremium)
	if isPlayerPremium then
		if productInfo.PremiumPriceInRobux ~= nil then
			return productInfo.PremiumPriceInRobux
		else
			return productInfo.PriceInRobux or 0
		end
	else
		return productInfo.PriceInRobux or 0
	end
end
