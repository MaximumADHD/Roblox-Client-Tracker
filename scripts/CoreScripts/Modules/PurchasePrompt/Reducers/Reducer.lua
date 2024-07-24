--[[
	The main reducer for the app's store
]]
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local ToastLite = require(CorePackages.Workspace.Packages.ToastLite)
local Rodux = PurchasePromptDeps.Rodux

local PromptRequestReducer = require(script.Parent.PromptRequestReducer)
local PurchaseFlowReducer = require(script.Parent.PurchaseFlowReducer)
local ProductInfoReducer = require(script.Parent.ProductInfoReducer)
local PremiumProductsReducer = require(script.Parent.PremiumProductsReducer)
local NativeUpsellReducer = require(script.Parent.NativeUpsellReducer)
local PromptStateReducer = require(script.Parent.PromptStateReducer)
local PurchaseErrorReducer = require(script.Parent.PurchaseErrorReducer)
local AccountInfoReducer = require(script.Parent.AccountInfoReducer)
local PurchasingStartTimeReducer = require(script.Parent.PurchasingStartTimeReducer)
local HasCompletedPurchaseReducer = require(script.Parent.HasCompletedPurchaseReducer)
local GamepadEnabledReducer = require(script.Parent.GamepadEnabledReducer)
local ABVariationReducer = require(script.Parent.ABVariationReducer)
local WindowStateReducer = require(script.Parent.WindowStateReducer)
local ButtonStateReducer = require(script.Parent.ButtonStateReducer)
local SubscriptionPurchaseInfoReducer = require(script.Parent.SubscriptionPurchaseInfoReducer)
local CurrentToastMessagesReducer = ToastLite.Reducers.CurrentToastMessagesReducer

local GetFFlagEnableToastLiteRender = require(Root.Flags.GetFFlagEnableToastLiteRender)

local Reducer = Rodux.combineReducers({
	promptRequest = PromptRequestReducer,
	purchaseFlow = PurchaseFlowReducer,
	productInfo = ProductInfoReducer,
	premiumProductInfo = PremiumProductsReducer,
	nativeUpsell = NativeUpsellReducer,
	promptState = PromptStateReducer,
	purchaseError = PurchaseErrorReducer,
	accountInfo = AccountInfoReducer,
	purchasingStartTime = PurchasingStartTimeReducer,
	hasCompletedPurchase = HasCompletedPurchaseReducer,
	gamepadEnabled = GamepadEnabledReducer,
	abVariations = ABVariationReducer,
	windowState = WindowStateReducer,
	buttonState = ButtonStateReducer,
	subscriptionPurchaseInfo = SubscriptionPurchaseInfoReducer,
	currentToastMessages = if GetFFlagEnableToastLiteRender() then CurrentToastMessagesReducer else nil,
})

return Reducer
