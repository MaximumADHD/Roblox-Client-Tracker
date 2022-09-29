local FFlagToolboxIncludeSearchSource = game:GetFastFlag("ToolboxIncludeSearchSource")
local FFlagToolboxUseVerifiedIdAsDefault = game:GetFastFlag("ToolboxUseVerifiedIdAsDefault2")
local FFlagToolboxAudioSearchOptions2 = game:GetFastFlag("ToolboxAudioSearchOptions2")

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
		local creatorTargetId = not isCreatorSearchEmpty and creator and creator.Id or nil
		local additionalAudioSearchInfo = pageInfo.additionalAudioSearchInfo or {}

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

			if
				categoryData.ownershipType == Category.OwnershipType.MY
				or categoryData.ownershipType == Category.OwnershipType.RECENT
			then
				ownerId = getUserId()
			elseif categoryData.ownershipType == Category.OwnershipType.GROUP then
				ownerId = PageInfoHelper.getGroupIdForPageInfo(pageInfo)
			end

			local includeOnlyVerifiedCreators
			local includeUnverifiedCreators
			if FFlagToolboxUseVerifiedIdAsDefault then
				includeUnverifiedCreators = pageInfo.includeUnverifiedCreators
			else
				includeOnlyVerifiedCreators = pageInfo.includeOnlyVerifiedCreators
			end

			local tags = {}
			if FFlagToolboxAudioSearchOptions2 then
				if additionalAudioSearchInfo.categories then
					for _, category in ipairs(additionalAudioSearchInfo.categories) do
						table.insert(tags, category)
					end
				end

				if additionalAudioSearchInfo.genre then
					table.insert(tags, additionalAudioSearchInfo.genre)
				end
			end

			local getRequest = networkInterface:getToolboxItems({
				categoryName = category,
				sortType = sortName,
				keyword = pageInfo.searchTerm or "",
				cursor = nextPageCursor,
				limit = Constants.TOOLBOX_ITEM_SEARCH_LIMIT,
				ownerId = ownerId,
				creatorType = pageInfo.creatorType,
				creatorTargetId = creatorTargetId,
				minDuration = audioSearchInfo and audioSearchInfo.minDuration or nil,
				maxDuration = audioSearchInfo and audioSearchInfo.maxDuration or nil,
				artist = if FFlagToolboxAudioSearchOptions2 then additionalAudioSearchInfo.artist else nil,
				album = if FFlagToolboxAudioSearchOptions2 then additionalAudioSearchInfo.albumn else nil,
				tags = if FFlagToolboxAudioSearchOptions2 then tags else nil,
				includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault
					then not includeUnverifiedCreators
					else includeOnlyVerifiedCreators,
				searchSource = if FFlagToolboxIncludeSearchSource then pageInfo.searchSource else nil,
			})

			return getRequest:andThen(function(result)
				if PageInfoHelper.isPageInfoStale(pageInfo, store) then
					return
				end
				store:dispatch(SetLoading(false))

				local data = result.responseBody
				local cursor = PagedRequestCursor.createCursor(data)

				if data and data.totalResults > 0 then
					store:dispatch(
						GetItemDetails(
							networkInterface,
							data.data,
							data.totalResults,
							audioSearchInfo,
							pageInfo.targetPage,
							cursor,
							pageInfo
						)
					)
				end

				if data and data.filteredKeyword and #data.filteredKeyword > 0 then
					store:dispatch(UpdateSearchTerm(data.filteredKeyword))
				end
			end, function(err)
				store:dispatch(SetLoading(false))
				store:dispatch(NetworkError(err))
			end)
		end
	end
end
