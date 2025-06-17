local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)

local NativeUpsellReducer = Rodux.createReducer({}, {
	[PromptNativeUpsell.name] = function(state, action)
		local newState = {
			robuxProductId = action.robuxProductId,
			productId = action.productId,
			robuxPurchaseAmount = action.robuxPurchaseAmount,
			robuxAmountBeforeBonus = action.robuxAmountBeforeBonus,
			price = action.price,
			itemProductId = action.itemProductId,
			itemName = action.itemName,
			universeId = action.universeId,
		}
		
		return newState
	end,
})

return NativeUpsellReducer 