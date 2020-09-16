--[[
	Asynchronously loads the local user's friends/groups when they search
	Also loads the web search results for the search query
]]

local FFlagStudioAllowPkgPermsForOtherUsrsAndGrps = game:GetFastFlag("StudioAllowPkgPermsForOtherUsrsAndGrps")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Libs.Framework.Util.Promise)
local Cryo = require(Plugin.Libs.Cryo)

local Util = Plugin.Core.Util
local getUserId = require(Util.getUserId)
local Analytics = require(Util.Analytics.Analytics)
local CollaboratorSearchActions = require(Plugin.Core.Actions.CollaboratorSearchActions)

local GetLocalUserFriends = require(Plugin.Core.Networking.Requests.UserFriends).Get
local GetLocalUserGroups = require(Plugin.Core.Networking.Requests.UserGroups).Get
local SearchWebUsers = require(Plugin.Core.Networking.Requests.SearchUsers).Get
local SearchWebGroups = require(Plugin.Core.Networking.Requests.SearchGroups).Get

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

return function(networkInterface, searchText, broadSearch)
	return function(store)
		local state = store:getState()

		store:dispatch(CollaboratorSearchActions.SearchTextChanged(searchText))
		if searchText == "" then return end

		if not (state.localUserFriends) then
			store:dispatch(CollaboratorSearchActions.LoadingLocalUserFriends())
			spawn(function()
				local success, friends = GetLocalUserFriends(networkInterface, tostring(getUserId())):await()

				store:dispatch(CollaboratorSearchActions.LoadedLocalUserFriends(success, friends))
			end)
		end

		if not FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
			return
		end

		if not (state.CollaboratorSearch.LocalUserGroups) then
			store:dispatch(CollaboratorSearchActions.LoadingLocalUserGroups())
			spawn(function()
				local success,groups = GetLocalUserGroups(state.Settings.Current.studioUserId):await()
				store:dispatch(CollaboratorSearchActions.LoadedLocalUserGroups(success, groups))
			end)
		end

		if broadSearch and not state.CollaboratorSearch.cachedSearchResults[searchText] then
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