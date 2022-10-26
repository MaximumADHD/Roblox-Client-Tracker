local Root = script.Parent.Parent

local GetFFlagRobuxUpsellNRE = require(Root.Flags.GetFFlagRobuxUpsellNRE)

-- Used on the data in the state
if GetFFlagRobuxUpsellNRE() then
	return function(productInfo: { [any]: any }, isPlayerPremium: boolean)
		if isPlayerPremium then
			if productInfo.premiumPrice ~= nil then
				return productInfo.premiumPrice or 0
			else
				return productInfo.price or 0
			end
		else
			return productInfo.price or 0
		end
	end
else
	return function(productInfo: { [any]: any? }, isPlayerPremium: boolean)
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
end
