local Packages = script:FindFirstAncestor("RoduxGames").Parent
local t = require(Packages.t)

export type Type = {
	productId: string,
	sellerId: string,
	price: number,
	isForSale: boolean,
}

local ProductModel = {}

function ProductModel.new(product)
	assert(ProductModel.isValid(product))

	ProductModel.__index = ProductModel

	local self = product

	setmetatable(self, ProductModel)

	return self
end

function ProductModel.mock(mergeTableFromArg)
	local mergeTable = mergeTableFromArg or {}

	local self = ProductModel.new({
		productId = mergeTable.productId or "productId",
		sellerId = mergeTable.sellerId or "sellerId",
		price = mergeTable.price or 666,
		isForSale = mergeTable.isForSale or true,
	})

	return self
end

function ProductModel.format(productData)
	local self = ProductModel.new({
		productId = tostring(productData.productId),
		sellerId = tostring(productData.sellerId),
		isForSale = productData.isForSale or false,
		price = productData.price or 0,
	})

	return self
end

ProductModel.isValid = t.strictInterface({
	productId = t.string,
	sellerId = t.string,
	price = t.number,
	isForSale = t.boolean,
})

return ProductModel
