local Plugin = script.Parent.Parent.Parent.Parent
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Packages = Plugin.Packages
local Cryo
if FFlagToolboxDeduplicatePackages then
	Cryo = require(Packages.Cryo)
else
	Cryo = require(Plugin.Libs.Cryo)
end

local Urls = require(Plugin.Core.Util.Urls)

local SetLiveSearch = require(Plugin.Core.Actions.SetLiveSearch)
local SetLiveSearching = require(Plugin.Core.Actions.SetLiveSearching)

local function searchUsers(networkInterface, searchTerm, store)
	return networkInterface:getUsers(searchTerm):andThen(function(result)
		local data = result.responseBody
		if data then
			local userSearchResults = data.UserSearchResults
			if userSearchResults and #userSearchResults > 0 then
				local results = {}
				for _, info in ipairs(userSearchResults) do
					results = Cryo.List.join(results, {
						{
							Name = info.Name,
							Id = info.UserId,
							Thumbnail = Urls.constructUserThumbnailUrl(info.UserId),
						},
					})
				end
				return results
			end
		end

		return {}
	end)
end

return function(networkInterface, searchTerm)
	return function(store)
		if #searchTerm < 3 then
			store:dispatch(SetLiveSearch(searchTerm, {}))
			return
		end

		if not store:getState().liveSearch.isSearching then
			store:dispatch(SetLiveSearching(true))

			searchUsers(networkInterface, searchTerm, store):andThen(function(results)
				store:dispatch(SetLiveSearch(searchTerm, results))
				store:dispatch(SetLiveSearching(false))
			end)
		end
	end
end