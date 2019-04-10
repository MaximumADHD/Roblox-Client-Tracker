local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Libs.Cryo)

local GetAssetsRequest = require(Plugin.Core.Networking.Requests.GetAssetsRequest)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

local SetLiveSearch = require(Plugin.Core.Actions.SetLiveSearch)
local SetLoading = require(Plugin.Core.Actions.SetLoading)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local function searchUsers(networkInterface, searchTerm, store)
	return networkInterface:getUsers(searchTerm, 1):andThen(function(result)
		local data = result.responseBody
		if data then
			local userSearchResults = data.UserSearchResults
			if userSearchResults and #userSearchResults > 0 then
				local info = userSearchResults[1]
				return {
					Name = info.Name,
					Id = info.UserId,
				}
			end
		end

		return {
			Name = searchTerm,
			Id = -1,
		}
	end)
end

local function setAndDispatchSearch(networkInterface, settings, options, store)
	if options.SortIndex then
		store:dispatch(UpdatePageInfo({
			sortIndex = options.SortIndex,
		}, settings))
	end

	store:dispatch(UpdatePageInfo({
		page = 1,
	}, settings))

	store:dispatch(SetLoading(false))
	store:dispatch(GetAssetsRequest(networkInterface, store:getState().pageInfo))
end

return function(networkInterface, settings, options)
	return function(store)
		if store:getState().assets.isLoading then
			return
		end

		store:dispatch(SetLoading(true))
		store:dispatch(ClearAssets())

		if options.Creator and options.Creator ~= "" then
			searchUsers(networkInterface, options.Creator, store):andThen(function(results)
				store:dispatch(UpdatePageInfo({
					creator = results,
				}, settings))
				setAndDispatchSearch(networkInterface, settings, options, store)

				Analytics.onCreatorSearched(options.Creator, results.Id)
			end)
		else
			store:dispatch(SetLiveSearch("", {}))
			store:dispatch(UpdatePageInfo({
				creator = Cryo.None,
			}, settings))
			setAndDispatchSearch(networkInterface, settings, options, store)
		end
	end
end
