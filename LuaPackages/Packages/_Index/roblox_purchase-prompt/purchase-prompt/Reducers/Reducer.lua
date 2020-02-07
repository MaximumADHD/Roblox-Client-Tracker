--[[
	The main reducer for the app's store
]]
local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

local PromptRequestReducer = require(script.Parent.PromptRequestReducer)
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

local Reducer = Rodux.combineReducers({
	promptRequest = PromptRequestReducer,
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
})

return Reducer