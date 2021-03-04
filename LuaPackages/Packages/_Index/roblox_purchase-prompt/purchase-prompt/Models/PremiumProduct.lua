--[[
	Docs: https://premiumfeatures.roblox.com/docs#!/PremiumFeaturesProducts/get_v1_products

	Provides a model for response from product purchase request.
]]
local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local t = require(LuaPackages.t)

local strict = require(Root.strict)

local checkJson = t.interface({
	productId = t.number,
	mobileProductId = t.string,
	robuxAmount = t.number,
	isSubscriptionOnly = t.boolean,
	premiumFeatureTypeName = t.string,
	description = t.string,
	price = t.interface({
		amount = t.number,
		currency = t.interface({
			currencySymbol = t.string
		})
	})
})

return function(jsonData)
	local success, error = checkJson(jsonData)
	if not success then
		return nil
	end

	return {
		productId = jsonData.productId,
		mobileProductId = jsonData.mobileProductId,
		robuxAmount = jsonData.robuxAmount,
		isSubscriptionOnly = jsonData.isSubscriptionOnly,
		premiumFeatureTypeName = jsonData.premiumFeatureTypeName,
		description = jsonData.description,
		price = jsonData.price.amount,
		currencySymbol = jsonData.price.currency.currencySymbol,
	}
end