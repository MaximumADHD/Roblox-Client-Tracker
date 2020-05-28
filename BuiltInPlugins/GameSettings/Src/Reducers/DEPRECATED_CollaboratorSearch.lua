--[[
	Reducer for cached friends/groups of the local user and cached web queries
]]

-- TODO (awarwick) 5/17/2020 Remove with FFlagGameSettingsNetworkRefactor

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

if game:GetFastFlag("StudioGameSettingsResetStoreAction2") then
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
else
	local CollaboratorSearchActions = require(Plugin.Src.Actions.CollaboratorSearchActions)

	local function CollaboratorSearch(state, action)
		state = state or {
			LocalUserFriends = nil,
			LocalUserGroups = nil,
			CachedSearchResults = {},

			SearchText = "",
		}

		if action.type == CollaboratorSearchActions.LoadedLocalUserFriends.name then
			return Cryo.Dictionary.join(state, {
				LocalUserFriends = action.success and action.friends or nil,
			})
		elseif action.type == CollaboratorSearchActions.LoadedLocalUserGroups.name then
			return Cryo.Dictionary.join(state, {
				LocalUserGroups = action.success and action.groups or nil,
			})
		elseif action.type == CollaboratorSearchActions.LoadedWebResults.name then
			return Cryo.Dictionary.join(state, {
				CachedSearchResults = Cryo.Dictionary.join(state.CachedSearchResults, {
					[action.key] = action.success and action.results or nil,
				})
			})

		elseif action.type == CollaboratorSearchActions.LoadingWebResults.name then
			return Cryo.Dictionary.join(state, {
				CachedSearchResults = Cryo.Dictionary.join(state.CachedSearchResults, {
					[action.searchTerm] = LOADING_IN_BACKGROUND,
				})
			})
		elseif action.type == CollaboratorSearchActions.LoadingLocalUserFriends.name then
			return Cryo.Dictionary.join(state, {
				LocalUserFriends = LOADING_IN_BACKGROUND,
			})
		elseif action.type == CollaboratorSearchActions.LoadingLocalUserGroups.name then
			return Cryo.Dictionary.join(state, {
				LocalUserGroups = LOADING_IN_BACKGROUND,
			})

		elseif action.type == CollaboratorSearchActions.SearchTextChanged.name then
			return Cryo.Dictionary.join(state, {
				SearchText = action.text,
			})
		end

		return state
	end

	return CollaboratorSearch
end