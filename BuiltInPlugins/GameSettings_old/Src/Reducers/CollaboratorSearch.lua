--[[
	Reducer for cached friends/groups of the local user and cached web queries
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local LOADING_IN_BACKGROUND = require(Plugin.Src.Keys.loadingInProgress)

local DEFAULT_STATE = {
	LocalUserFriends = nil,
	LocalUserGroups = nil,
	CachedSearchResults = {},

	SearchText = "",
}

return Rodux.createReducer(DEFAULT_STATE, {
	ResetStore = function(state, action)
		return DEFAULT_STATE
	end,

	LoadedLocalUserFriends = function(state, action)
		return Cryo.Dictionary.join(state, {
			LocalUserFriends = action.success and action.friends or nil,
		})
	end,

	LoadedLocalUserGroups = function(state, action)
		return Cryo.Dictionary.join(state, {
			LocalUserGroups = action.success and action.groups or nil,
		})
	end,

	LoadedWebResults = function(state, action)
		return Cryo.Dictionary.join(state, {
			CachedSearchResults = Cryo.Dictionary.join(state.CachedSearchResults, {
				[action.key] = action.success and action.results or nil,
			})
		})
	end,

	LoadingWebResults = function(state, action)
		return Cryo.Dictionary.join(state, {
			CachedSearchResults = Cryo.Dictionary.join(state.CachedSearchResults, {
				[action.searchTerm] = LOADING_IN_BACKGROUND,
			})
		})
	end,

	LoadingLocalUserFriends = function(state, action)
		return Cryo.Dictionary.join(state, {
			LocalUserFriends = LOADING_IN_BACKGROUND,
		})
	end,

	LoadingLocalUserGroups = function(state, action)
		return Cryo.Dictionary.join(state, {
			LocalUserGroups = LOADING_IN_BACKGROUND,
		})
	end,

	SearchTextChanged = function(state, action)
		return Cryo.Dictionary.join(state, {
			SearchText = action.text,
		})
	end,
})
