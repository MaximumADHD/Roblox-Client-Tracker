local FFlagToolboxUseVerifiedIdAsDefault = game:GetFastFlag("ToolboxUseVerifiedIdAsDefault")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local Category = require(Plugin.Core.Types.Category)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local SetLiveSearch = require(Plugin.Core.Actions.SetLiveSearch)
local SetLoading = require(Plugin.Core.Actions.SetLoading)
local StopPreviewSound = require(Plugin.Core.Actions.StopPreviewSound)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local CreatorInfoHelper = require(Plugin.Core.Util.CreatorInfoHelper)

local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

local function searchUsers(networkInterface, searchTerm, store)
	-- For some usernames, other accounts might appear above them in the search results, so fetch more results to be safe.
	-- 3 results corresponds with the number of results returned from the LiveSearchDropdown.
	local totalToFetch = 3

	return networkInterface:getUsers(searchTerm, totalToFetch):andThen(function(result)
		local data = result.responseBody
		if data then
			local userSearchResults = data.UserSearchResults
			if userSearchResults and #userSearchResults > 0 then
				local index = 1
				local lcaseSearch = string.lower(searchTerm)
				for i, userInfo in ipairs(userSearchResults) do
					if string.lower(userInfo.Name) == lcaseSearch then
						index = i
						break
					end
				end

				local info = userSearchResults[index]
				return {
					Name = info.Name,
					Id = info.UserId,
					Type = CreatorInfoHelper.clientToBackend(Enum.CreatorType.User.Value),
				}
			end
		end

		return {
			Name = searchTerm,
			Id = -1,
			Type = CreatorInfoHelper.clientToBackend(Enum.CreatorType.User.Value),
		}
	end)
end

return function(networkInterface, settings, options)
	return function(store)
		store:dispatch(SetLoading(true))
		store:dispatch(ClearAssets())

		local audioSearchInfo = options.AudioSearch or Cryo.None

		local includeOnlyVerifiedCreators
		local includeUnverifiedCreators
		if FFlagToolboxUseVerifiedIdAsDefault then
			includeUnverifiedCreators = options.includeUnverifiedCreators
		else
			includeOnlyVerifiedCreators = options.includeOnlyVerifiedCreators
		end

		local sound = store:getState().sound
		if sound ~= nil and sound.isPlaying then
			store:dispatch(StopPreviewSound())
		end

		if options.Creator and options.Creator ~= "" then
			local updateSearchResultsHandler = function(creatorInfo)
				store:dispatch(SetLoading(false))
				store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
					audioSearchInfo = audioSearchInfo,
					includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else includeOnlyVerifiedCreators,
					includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then includeUnverifiedCreators else nil,
					targetPage = 1,
					currentPage = 0,
					creator = creatorInfo,
					sortIndex = options.SortIndex or 1, -- defualt to 1
					requestReason = RequestReason.StartSearch,
				}))

				Analytics.onCreatorSearched(creatorInfo.Name, creatorInfo.Id)
			end

			if type(options.Creator) == "string" then
				-- we don't really know who the creator is, so fetch the first result based on their name
				searchUsers(networkInterface, options.Creator, store):andThen(
					updateSearchResultsHandler,
					function(err)
						-- We should still handle the error if searchUser fails.
					end
				)
			elseif type(options.Creator == "table") then
				-- assume we've gotten the creator details from the dropdown already
				local details = {
					Name = options.Creator.Name,
					Id = options.Creator.Id,
					Type = CreatorInfoHelper.clientToBackend(Enum.CreatorType.User.Value),
				}
				updateSearchResultsHandler(details)
			end
		else
			local creator = Cryo.None
			if showRobloxCreatedAssets() then
				local currentTab = PageInfoHelper.getCurrentTab(store:getState().pageInfo)
				if currentTab == Category.MARKETPLACE_KEY then
					creator = Category.CREATOR_ROBLOX
				end
			end

			store:dispatch(SetLoading(false))
			store:dispatch(SetLiveSearch("", {}))
			store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
				audioSearchInfo = audioSearchInfo,			
				includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else includeOnlyVerifiedCreators,
				includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then includeUnverifiedCreators else nil,
				targetPage = 1,
				currentPage = 0,
				sortIndex = options.SortIndex or 1, -- defualt to 1
				creator = creator,
				requestReason = RequestReason.StartSearch,
			}))
		end
	end
end
