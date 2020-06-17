local Root = script.Parent.Parent

local GetFFlagIGPPPremiumPrice = require(Root.Flags.GetFFlagIGPPPremiumPrice)

-- Used on the data directly from the endpoint
-- TODO: Consolidate this with the other function
return function(productInfo, isPlayerPremium)
	if GetFFlagIGPPPremiumPrice() then
		if isPlayerPremium then
			if productInfo.PremiumPriceInRobux ~= nil then
				return productInfo.PremiumPriceInRobux
			else
				return productInfo.PriceInRobux or 0
			end
		else
			return productInfo.PriceInRobux or 0
		end
	else
		return productInfo.PriceInRobux or 0
	end
end
