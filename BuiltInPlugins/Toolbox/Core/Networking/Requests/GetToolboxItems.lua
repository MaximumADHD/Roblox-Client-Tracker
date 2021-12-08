local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)
local UpdateSearchTerm = require(Actions.UpdateSearchTerm)

local GetItemDetails = require(Plugin.Core.Networking.Requests.GetItemDetails)
local GetCreatorName = require(Plugin.Core.Networking.Requests.GetCreatorName)

local Category = require(Plugin.Core.Types.Category)

local Util = Plugin.Core.Util
local getUserId = require(Util.getUserId)
local PagedRequestCursor = require(Util.PagedRequestCursor)
local Constants = require(Util.Constants)
local CreatorInfoHelper = require(Util.CreatorInfoHelper)
local PageInfoHelper = require(Util.PageInfoHelper)

return function(networkInterface, category, audioSearchInfo, pageInfo, settings, nextPageCursor)
	return function(store)
		store:dispatch(SetLoading(true))

		local creator = pageInfo.creator
		local isCreatorSearchEmpty = creator and creator.Id == -1
		local creatorTargetId = (not isCreatorSearchEmpty) and creator and creator.Id or nil

		local assetStore = store:getState().assets
		local currentCursor = assetStore.currentCursor

		if creator ~= nil then
			-- Creator filter was requested, but no creator with that name was found
			if creator.Name ~= nil and creator.Name ~= "" and creatorTargetId == nil then
				store:dispatch(SetLoading(false))
				return
			end

			if creatorTargetId ~= nil and (not CreatorInfoHelper.isCached(store, creatorTargetId, creator.Type)) then
				store:dispatch(GetCreatorName(networkInterface, creatorTargetId, creator.Type))
			end
		end

		-- Get from API
		if PagedRequestCursor.isNextPageAvailable(currentCursor) then
			local nextPageCursor = currentCursor.nextPageCursor
			local sort = pageInfo.sorts[pageInfo.sortIndex]
			local sortName
			if sort then
				sortName = sort.name
			else
				sortName = sort
			end

			local ownerId = nil

			local categoryData = Category.getCategoryByName(category)

			if not categoryData then
				error(string.format("Could not find categoryData for %s", category))
			end

			if categoryData.ownershipType == Category.OwnershipType.MY or categoryData.ownershipType == Category.OwnershipType.RECENT then
				ownerId = getUserId()
			elseif categoryData.ownershipType == Category.OwnershipType.GROUP then
				ownerId = PageInfoHelper.getGroupIdForPageInfo(pageInfo)
			end

			local getRequest = networkInterface:getToolboxItems(
				category,
				sortName,
				pageInfo.creatorType,
				audioSearchInfo and audioSearchInfo.minDuration or nil,
				audioSearchInfo and audioSearchInfo.maxDuration or nil,
				creatorTargetId,
				ownerId,
				pageInfo.searchTerm or "",
				nextPageCursor,
				Constants.TOOLBOX_ITEM_SEARCH_LIMIT
			)

			return getRequest:andThen(
				function(result)
					if PageInfoHelper.isPageInfoStale(pageInfo, store) then
						return
					end
					store:dispatch(SetLoading(false))

					local data = result.responseBody
					local cursor = PagedRequestCursor.createCursor(data)

					if data and data.totalResults > 0 then
						store:dispatch(GetItemDetails(
							networkInterface,
							data.data,
							data.totalResults,
							audioSearchInfo,
							pageInfo.targetPage,
							cursor,
							pageInfo
						))
					end

					if data and data.filteredKeyword and #data.filteredKeyword > 0 then
						store:dispatch(UpdateSearchTerm(data.filteredKeyword))
					end
				end,
				function(err)
					store:dispatch(SetLoading(false))
					store:dispatch(NetworkError(err))
				end
			)
		end
	end
end