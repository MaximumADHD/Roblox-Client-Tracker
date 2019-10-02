--[[
	The main reducer for the app's store
]]
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local ProductReducer = require(script.Parent.ProductReducer)
local ProductInfoReducer = require(script.Parent.ProductInfoReducer)
local NativeUpsellReducer = require(script.Parent.NativeUpsellReducer)
local PromptStateReducer = require(script.Parent.PromptStateReducer)
local PurchaseErrorReducer = require(script.Parent.PurchaseErrorReducer)
local AccountInfoReducer = require(script.Parent.AccountInfoReducer)
local PurchasingStartTimeReducer = require(script.Parent.PurchasingStartTimeReducer)
local GamepadEnabledReducer = require(script.Parent.GamepadEnabledReducer)

local Reducer = Rodux.combineReducers({
	product = ProductReducer,
	productInfo = ProductInfoReducer,
	nativeUpsell = NativeUpsellReducer,
	promptState = PromptStateReducer,
	purchaseError = PurchaseErrorReducer,
	accountInfo = AccountInfoReducer,
	purchasingStartTime = PurchasingStartTimeReducer,
	gamepadEnabled = GamepadEnabledReducer,
})

return Reducer