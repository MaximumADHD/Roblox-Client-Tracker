--[[
	Reducer for metadata of a game that can't be directly changed by the user (otherwise put in Settings)
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	game = nil,
	gameId = nil,
}, {
	ResetStore = function(state, action)
		return {}
	end,

	SetGameId = function(state, action)
		return Cryo.Dictionary.join(state, {
			gameId = action.gameId,
		})
	end,

	SetGame = function(state, action)
		return Cryo.Dictionary.join(state, {
			game = action.game,
		})
	end,
})