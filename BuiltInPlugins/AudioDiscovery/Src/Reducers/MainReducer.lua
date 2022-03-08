local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local AudioReducer = require(script.Parent.AudioReducer)

return (Rodux.combineReducers({
	Audio = AudioReducer,
}))
