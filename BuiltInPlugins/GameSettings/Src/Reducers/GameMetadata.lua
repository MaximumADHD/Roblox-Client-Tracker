--[[
	Reducer for metadata of a game that can't be directly changed by the user (otherwise put in Settings)
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

return Rodux.createReducer({
	game = nil,
	gameId = nil,
	rootPlaceId = nil,
	creatorId = nil,
	creatorType = nil,
	creatorName = nil,
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

	SetGameMetadata = function(state, action)
		return Cryo.Dictionary.join(state, action.metadata)
	end,
})