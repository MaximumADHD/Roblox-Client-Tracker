local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux
local Cryo = PurchasePromptDeps.Cryo

local SetABVariation = require(Root.Actions.SetABVariation)

local ABVariationReducer = Rodux.createReducer({}, {
	[SetABVariation.name] = function(state, action)
		assert(type(action.key) == "string", "Expected 'key' to be a string")
		assert(type(action.variation) == "string", "Expected 'variation' to be a string")
		return Cryo.Dictionary.join(state, {
			[action.key] = action.variation
		})
	end,
})

return ABVariationReducer
