local Root = script.Parent.Parent

local GetFFlagIGPPPremiumPrice = require(Root.Flags.GetFFlagIGPPPremiumPrice)

-- Used on the data in the state
return function(productInfo, isPlayerPremium)
	if GetFFlagIGPPPremiumPrice() then
		if isPlayerPremium then
			if productInfo.premiumPrice ~= nil then
				return productInfo.premiumPrice
			else
				return productInfo.price
			end
		else
			return productInfo.price
		end
	else
		return productInfo.price
	end
end
