local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

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