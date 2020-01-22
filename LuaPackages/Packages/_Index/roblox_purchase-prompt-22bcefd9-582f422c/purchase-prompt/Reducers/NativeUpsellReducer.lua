local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Rodux = require(LuaPackages.Rodux)

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