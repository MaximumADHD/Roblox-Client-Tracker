return {
	ProductPurchase = require(script.ProductPurchase.ProductPurchasePrompt),
	ProductPurchaseRobuxUpsell = require(script.ProductPurchaseRobuxUpsell.ProductPurchaseRobuxUpsell),

	PurchaseFlow = {
		RobuxUpsellFlow = require(script.PurchaseFlow.RobuxUpsell.RobuxUpsellFlow),
		RobuxUpsellFlowState = require(script.PurchaseFlow.RobuxUpsell.RobuxUpsellFlowState),
		PurchaseErrorType = require(script.Generic.PurchaseErrorType),
		U13ConfirmType = require(script.Generic.U13ConfirmType),
	},

	Locale = {
		LocaleProvider = require(script.Locale.LocaleProvider),
	}
}
