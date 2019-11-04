local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Root = script.Parent.Parent

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