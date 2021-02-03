local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local ExampleReducer = require(script.Parent.ExampleReducer)

return Rodux.combineReducers({
	ExampleReducer = ExampleReducer,
})
