local Root = script.Parent.Parent

local strict = require(Root.strict)

return strict({
	ABTests = strict({
		PRODUCT_PURCHASE = "AllUsers.Payments.ProductPurchaseABTest",
		PRODUCT_PURCHASE_UPSELL = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTest",
		PRODUCT_PURCHASE_UPSELL_UWP = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTestUWP",
		PRODUCT_PURCHASE_UPSELL_AMAZON = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTestAmazon",
		PRODUCT_PURCHASE_UPSELL_XBOX = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTestXbox",
	}, "Constants.ABTests")
}, "Constants")
