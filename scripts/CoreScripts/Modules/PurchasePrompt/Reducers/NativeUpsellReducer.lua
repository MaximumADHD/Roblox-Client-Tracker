local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)

local NativeUpsellReducer = Rodux.createReducer({}, {
	[PromptNativeUpsell.name] = function(state, action)

		return {
			robuxProductId = action.robuxProductId,
			robuxPurchaseAmount = action.robuxPurchaseAmount,
		}
	end,
})

return NativeUpsellReducer
