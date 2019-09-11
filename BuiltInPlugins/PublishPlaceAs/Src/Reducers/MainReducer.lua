local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local ExistingGame = require(Plugin.Src.Reducers.ExistingGame)
local NewGameSettings = require(Plugin.Src.Reducers.NewGameSettings)
local PublishedPlace = require(Plugin.Src.Reducers.PublishedPlace)
local Screen = require(Plugin.Src.Reducers.Screen)

local MainReducer = Rodux.combineReducers({
	Screen = Screen,
	ExistingGame = ExistingGame,
	NewGameSettings = NewGameSettings,
	PublishedPlace = PublishedPlace,
})

return MainReducer
