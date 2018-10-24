local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local PromptNativeUpsell = require(script.Parent.Parent.Actions.PromptNativeUpsell)

local NativeUpsellReducer = Rodux.createReducer({}, {
	[PromptNativeUpsell.name] = function(state, action)

		return {
			robuxProductId = action.robuxProductId,
			robuxPurchaseAmount = action.robuxPurchaseAmount,
		}
	end,
})

return NativeUpsellReducer