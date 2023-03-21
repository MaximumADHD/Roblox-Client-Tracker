local Root = script.Parent.Parent

local strict = require(Root.strict)

return strict({
	ABTests = strict({
		PRODUCT_PURCHASE = "AllUsers.Payments.ProductPurchaseABTest",
		PRODUCT_PURCHASE_UPSELL = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTest",
		PRODUCT_PURCHASE_UPSELL_UWP = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTestUWP",
		PRODUCT_PURCHASE_UPSELL_AMAZON = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTestAmazon",
		PRODUCT_PURCHASE_UPSELL_XBOX = "AllUsers.Payments.ProductPurchaseRobuxUpsellABTestXbox",
	}, "Constants.ABTests"),
	PlatformPurchaseResult = strict({
		PurchaseResult_Error = -1,
		PurchaseResult_Success = 0,
		PurchaseResult_UserCancelled = 1,
		PurchaseResult_ConsumeRequestFail = 2,
		PurchaseResult_RobuxUpdated = 3,
		PurcahseResult_NoActionNeeded = 4, -- Mispelled in C++
	}, "Constants.PlatformPurchaseResult"),
	PurchaseFailureReason = strict({
		TwoStepVerificationRequired = "TwoStepVerificationRequired",
		EconomyDisabled = "EconomyDisabled",
	}, "Constants.TransactionStatus"),
	ProductType = strict({
		CollectibleItem = "Collectible Item",
		DeveloperProduct = "Developer Product",
	}, "Constants.ProductType")
}, "Constants")
