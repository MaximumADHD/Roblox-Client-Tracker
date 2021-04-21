local Root = script.Parent.Parent

local strict = require(Root.strict)

return strict({
	ABTests = strict({
		PRODUCT_PURCHASE = "AllUsers.Payments.ProductPurchaseABTest",
		PRODUCT_PURCHASE_UPSELL = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTest"
	}, "Constants.ABTests")
}, "Constants")
