local Root = script.Parent.Parent

-- Used on the data in the state
return function(productInfo: { [any]: any }, isPlayerPremium: boolean)
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
