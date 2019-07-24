local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

return Rodux.createReducer({}, {
	SetGamesLock = function(state, action)
		return Cryo.Dictionary.join(state, {
			gamesLock = action.gamesLock
		})
	end,

	SetGames = function(state, action)
		return Cryo.Dictionary.join(state, {
			games = action.games
		})
	end,
})
