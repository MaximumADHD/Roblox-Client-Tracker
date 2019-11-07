--[[
	Holds onto the current message
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)


local ExampleReducer = Rodux.createReducer({
	message = nil,
},
{
	--[[ store the example message ]]
	ExampleAction = function(state, action)
		local msg = action.message

		return Cryo.Dictionary.join(state, {
			message = msg
		})
	end,
})

return ExampleReducer