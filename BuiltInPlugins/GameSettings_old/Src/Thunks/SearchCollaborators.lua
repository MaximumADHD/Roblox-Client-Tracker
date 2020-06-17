--[[
	Asynchronously loads the local user's friends/groups when they search
	Also loads the web search results for the search query
]]

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)

local Analytics = require(Plugin.Src.Util.Analytics)
local CollaboratorSearchActions = require(Plugin.Src.Actions.CollaboratorSearchActions)

local GetLocalUserFriends = require(Plugin.Src.Networking.Requests.Permissions.UserFriends).Get
local GetLocalUserGroups = require(Plugin.Src.Networking.Requests.Permissions.UserGroups).Get
local SearchWebUsers = require(Plugin.Src.Networking.Requests.Permissions.SearchUsers).Get
local SearchWebGroups = require(Plugin.Src.Networking.Requests.Permissions.SearchGroups).Get

return function(searchText, broadSearch)
	return function(store)
		local state = store:getState()

		store:dispatch(CollaboratorSearchActions.SearchTextChanged(searchText))
		if searchText == "" then return end

		if not (state.CollaboratorSearch.LocalUserFriends) then
			store:dispatch(CollaboratorSearchActions.LoadingLocalUserFriends())
			spawn(function()
				local success,friends = GetLocalUserFriends(state.Settings.Current.studioUserId):await()
				store:dispatch(CollaboratorSearchActions.LoadedLocalUserFriends(success, friends))
			end)
		end
		if not (state.CollaboratorSearch.LocalUserGroups) then
			store:dispatch(CollaboratorSearchActions.LoadingLocalUserGroups())
			spawn(function()
				local success,groups = GetLocalUserGroups(state.Settings.Current.studioUserId):await()
				store:dispatch(CollaboratorSearchActions.LoadedLocalUserGroups(success, groups))
			end)
		end

		if broadSearch and not state.CollaboratorSearch.CachedSearchResults[searchText] then
			store:dispatch(CollaboratorSearchActions.LoadingWebResults(searchText))
			spawn(function()
				local success,results = Promise.all({ SearchWebUsers(searchText), SearchWebGroups(searchText) }):await()
				if success then
					results = Cryo.Dictionary.join(unpack(results))
				end
				store:dispatch(CollaboratorSearchActions.LoadedWebResults(success, searchText, results))
			end)
		end
	end
end