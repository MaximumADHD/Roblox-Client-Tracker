if not settings():GetFFlag("StudioGameSettingsAccessPermissions") then return nil end

--[[
	Reducer for cached friends/groups of the local user and cached web queries
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local CollaboratorSearchActions = require(Plugin.Src.Actions.CollaboratorSearchActions)
local LOADING_IN_BACKGROUND = require(Plugin.Src.Keys.loadingInProgress)

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