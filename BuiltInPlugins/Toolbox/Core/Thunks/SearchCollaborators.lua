--[[
	Asynchronously loads the local user's friends/groups when they search
	Also loads the web search results for the search query
]]

local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local getUserId = require(Util.getUserId)
local CollaboratorSearchActions = require(Plugin.Core.Actions.CollaboratorSearchActions)

local GetLocalUserFriends = require(Plugin.Core.Networking.Requests.UserFriends).Get

return function(networkInterface, searchText, broadSearch)
	return function(store)
		local state = store:getState()

		store:dispatch(CollaboratorSearchActions.SearchTextChanged(searchText))
		if searchText == "" then
			return
		end

		if not state.localUserFriends then
			store:dispatch(CollaboratorSearchActions.LoadingLocalUserFriends())
			spawn(function()
				local success, friends = GetLocalUserFriends(networkInterface, tostring(getUserId())):await()

				store:dispatch(CollaboratorSearchActions.LoadedLocalUserFriends(success, friends))
			end)
		end
	end
end
