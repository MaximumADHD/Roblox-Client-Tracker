local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local ExistingGame = require(Plugin.Src.Reducers.ExistingGame)

local MainReducer = Rodux.combineReducers({
	ExistingGame = ExistingGame,
})

return MainReducer
