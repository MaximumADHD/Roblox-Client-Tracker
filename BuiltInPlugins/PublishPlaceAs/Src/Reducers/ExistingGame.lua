local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local initial = {
	placeInfo = { places = {}, parentGame = {}, },
	gameInfo = { games = {}, },
}

return Rodux.createReducer(initial, {
	SetGameInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			gameInfo = Cryo.Dictionary.join(state.gameInfo, action.gameInfo)
		})
	end,

	SetPlaceInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			placeInfo = Cryo.Dictionary.join(state.placeInfo, action.placeInfo)
		})
	end,

	ResetInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			gameInfo = Cryo.Dictionary.join(state.gameInfo, action.gameInfo),
			placeInfo = Cryo.Dictionary.join(state.placeInfo, action.placeInfo),
		})
	end,
})
