local Root = script.Parent.Parent

type Json = {
	roblox_product_id: number, -- The database ID of the product.
	provider_product_id: string, -- The id of the product defined by the provider.
	roblox_product_name: string, -- The name of the product defined by Roblox.
	robux_amount: number, -- The amount of Robux this product grants.
}

export type Product = {
	id: number, -- The database ID of the product.
	providerId: string, -- The id of the product defined by the provider.
	productName: string, -- The name of the product defined by Roblox.
	robuxAmount: number, -- The amount of Robux this product grants.
}

local RobuxUpsellProduct = {}

function RobuxUpsellProduct.new(productId: number, providerId: string, productName: string, robuxAmount: number) : Product
	return {
		id = productId,
		providerId = providerId,
		productName = productName,
		robuxAmount = robuxAmount,
	}
end

function RobuxUpsellProduct.fromJson(jsonData : Json) : Product
	return {
		id = jsonData.roblox_product_id,
		providerId = jsonData.provider_product_id,
		productName = jsonData.roblox_product_name,
		robuxAmount = jsonData.robux_amount,
	}
end

return RobuxUpsellProduct
