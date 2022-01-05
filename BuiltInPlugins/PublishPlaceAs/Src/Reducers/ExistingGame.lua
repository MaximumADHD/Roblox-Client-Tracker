local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Resources.Constants)

local FFlagFixPublishAsWhenQueryFails = game:GetFastFlag("FixPublishAsWhenQueryFails")
local FFlagPlacePublishManagementUI = game:GetFastFlag("PlacePublishManagementUI")

if FFlagFixPublishAsWhenQueryFails then
	local initial = {
		placeInfo = { places = {}, parentGame = {}, queryState = Constants.QUERY_STATE.QUERY_STATE_NONE },
		gameInfo = { games = {}, queryState = Constants.QUERY_STATE.QUERY_STATE_NONE },
		selectedGame = {},
		gameConfiguration = { optInRegions = {} },
	}

	return Rodux.createReducer(initial, {
		SetChooseGameQueryState = function (state, action)
			return Cryo.Dictionary.join(state, {
				gameInfo = Cryo.Dictionary.join(state.gameInfo, action.gameInfo)
			})
		end,

		SetSelectedGame = function (state, action)
			return Cryo.Dictionary.join(state, {
				selectedGame = action.selectedGame
			})
		end,

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

		SetChoosePlaceQueryState = function (state, action)
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

		SetGameConfiguration = function(state, action)
			return Cryo.Dictionary.join(state, {
				gameConfiguration = Cryo.Dictionary.join(state.gameConfiguration, action.gameConfiguration),
			})
		end,
	})
else
	local initial = {
		placeInfo = { places = {}, parentGame = {} },
		gameInfo = { games = {} },		
		gameConfiguration = { optInRegions = {} },
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

		SetGameConfiguration = function(state, action)
			return Cryo.Dictionary.join(state, {
				gameConfiguration = Cryo.Dictionary.join(state.gameConfiguration, action.gameConfiguration),
			})
		end,
	})
end

