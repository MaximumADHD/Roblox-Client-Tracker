local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)
local Cryo = require(LuaPackages.Cryo)

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