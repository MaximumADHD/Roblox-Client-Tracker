local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")
local FFlagStudioUseDevelopAPIForPackages = settings():GetFFlag("StudioUseDevelopAPIForPackages")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")
local FFlagStudioFixComparePageInfo = game:GetFastFlag("StudioFixComparePageInfo")

local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local GetAssets = require(Actions.GetAssets)
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)
local SetCachedCreatorInfo = require(Actions.SetCachedCreatorInfo)
local SetCurrentPage = require(Actions.SetCurrentPage)

local Category = require(Plugin.Core.Types.Category)

local Util = Plugin.Core.Util
local PageInfoHelper = require(Util.PageInfoHelper)
local PagedRequestCursor = require(Util.PagedRequestCursor)
local DebugFlags = require(Util.DebugFlags)

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local function extractAssetIdsFromGetAssetsResponse(data)
	local result = {}
	if data then
		for _,value in pairs(data) do
			result[#result + 1] = value.assetId
		end
	end
	return result
end

local function convertCreationsDetailsToResultsFormat(data, assetType, creatorName)
	local result = {}
	if data then
		for _,value in pairs(data) do
			local assetResultTable
			assetResultTable = AssetInfo.fromCreationsDetails(value, assetType, creatorName)

			result[#result + 1] = assetResultTable
		end
	end
	return result
end

local function extractCreatorInfo(responseBodyResults)
	if responseBodyResults and #responseBodyResults > 0 then
		return responseBodyResults[1].Creator.Id, responseBodyResults[1].Creator.Name
	end
end

local function dispatchCreatorInfo(store, id, name)
	store:dispatch(SetCachedCreatorInfo({Id=id, Name=name}))
end

local function dispatchGetAssets(store, pageInfo, creationDetailsTable, creatorName, nextCursor)
	local assetType = PageInfoHelper.getEngineAssetTypeForPageInfoCategory(pageInfo)
	store:dispatch(GetAssets(convertCreationsDetailsToResultsFormat(creationDetailsTable, assetType, creatorName), nil, nextCursor))
	store:dispatch(SetCurrentPage(0))
	store:dispatch(SetLoading(false))
end

local function dispatchGetAssetsWarning(store, errorText, nextCursor)
	if DebugFlags.shouldDebugWarnings() then
		warn(errorText)
	end
	store:dispatch(GetAssets({}, nil, nextCursor))
	store:dispatch(SetLoading(false))
end

return function(networkInterface, pageInfoOnStart)
	return function(store)
		store:dispatch(SetLoading(true))
		local isCreatorSearchEmpty = pageInfoOnStart.creator and pageInfoOnStart.creator.Id == -1
		local isCreationSearch
		if FFlagUseCategoryNameInToolbox then
			isCreationSearch = Category.getTabForCategoryName(pageInfoOnStart.categoryName) == Category.CREATIONS
		else
			isCreationSearch = Category.CREATIONS_KEY == pageInfoOnStart.currentTab
		end

		local errorFunc = function(result)
			if FFlagStudioFixComparePageInfo then
				if PageInfoHelper.isPageInfoStale(pageInfoOnStart, store) then
					return
				end
			end
			store:dispatch(NetworkError(result))
			store:dispatch(SetLoading(false))
		end

		local generalGetAssetHandleFunc = function(result)
			-- Base on pageInfoOnStart and current pageInfo, we can decide what to do after the asset is loaded
			local data = result.responseBody
			local pageInfo = store:getState().pageInfo
			local categoryOnStart
			if FFlagUseCategoryNameInToolbox then
				categoryOnStart = pageInfoOnStart.categoryName
			else
				categoryOnStart = pageInfoOnStart.categories[pageInfoOnStart.categoryIndex]
			end
			local categoryOnRequestFinish
			if FFlagUseCategoryNameInToolbox then
				categoryOnRequestFinish = pageInfo.categoryName
			else
				categoryOnRequestFinish = pageInfo.categories[pageInfo.categoryIndex]
			end
      
			local isResponseFresh

			if FFlagStudioFixComparePageInfo then
				isResponseFresh = not PageInfoHelper.isPageInfoStale(pageInfoOnStart, store)
			else
				isResponseFresh = categoryOnStart == categoryOnRequestFinish and pageInfoOnStart.targetPage - pageInfo.currentPage == 1
			end

			if isResponseFresh then
				if data then
					dispatchCreatorInfo(store, extractCreatorInfo(data.Results))
					store:dispatch(GetAssets(data.Results or {}, data.TotalResults))
					-- If success get asset, update currentPage.
					store:dispatch(SetCurrentPage(pageInfoOnStart.targetPage))
				end
				store:dispatch(SetLoading(false))
			end
		end

		-- Search Creator
		if isCreatorSearchEmpty then
			local data = {
				Results = {},
				TotalResults = 0,
			}
			store:dispatch(GetAssets(data.Results, data.TotalResults))
			store:dispatch(SetCurrentPage(0))
			store:dispatch(SetLoading(false))
		elseif isCreationSearch then -- General Category Search
			-- Creations search
			local currentCursor = store:getState().assets.currentCursor
			if PagedRequestCursor.isNextPageAvailable(currentCursor) then
				return networkInterface:getAssetCreations(pageInfoOnStart, PagedRequestCursor.getNextPageCursor(currentCursor)):andThen(function(creationsResult)
					local nextCursor = PagedRequestCursor.createCursor(creationsResult.responseBody)
					local assetIds = extractAssetIdsFromGetAssetsResponse(creationsResult.responseBody and creationsResult.responseBody.data)
					if assetIds and #assetIds > 0 then
						networkInterface:getAssetCreationDetails(assetIds):andThen(function(creationDetailsResult)
							local creationDetailsTable = creationDetailsResult.responseBody
							if creationDetailsTable and #creationDetailsTable > 0 then
								local isNameEndPointCallRequired = false
								local cachedCreatorId = store:getState().assets.cachedCreatorInfo and store:getState().assets.cachedCreatorInfo.Id
								local newCreatorId = creationDetailsTable[1].creatorTargetId
								if (not cachedCreatorId) or cachedCreatorId ~= newCreatorId then
									isNameEndPointCallRequired = true
									networkInterface:getCreatorName(creationDetailsTable[1].creatorTargetId):andThen(function(creatorNameResult)
										local creatorName = creatorNameResult.responseBody and creatorNameResult.responseBody.Username
										dispatchCreatorInfo(store, newCreatorId, creatorName)
										dispatchGetAssets(store, pageInfoOnStart, creationDetailsTable, creatorName, nextCursor)
									end, errorFunc)
								end

								if not isNameEndPointCallRequired then
									local creatorName = store:getState().assets.cachedCreatorInfo.Name
									dispatchGetAssets(store, pageInfoOnStart, creationDetailsTable, creatorName, nextCursor)
								end
							else
								dispatchGetAssetsWarning(store, "getAssetCreationDetails() did not return any asset details", nextCursor)
							end
						end, errorFunc)
					else
						dispatchGetAssetsWarning(store, "getAssetCreations() did not return any assets for cursor", nextCursor)
					end
				end, errorFunc)
			end
		else -- Everything else, change category, tabs, and getAsset
			-- We check if we are trying to access
			local useDevelopAssetAPI = false

			local isAudio
			local isVideo = false
			if FFlagUseCategoryNameInToolbox then
				isAudio = Category.categoryIsAudio(pageInfoOnStart.categoryName)
				if FFlagEnableToolboxVideos then
					isVideo = Category.categoryIsVideo(pageInfoOnStart.categoryName)
				end
			else
				isAudio = Category.categoryIsAudio(pageInfoOnStart.currentTab, pageInfoOnStart.categoryIndex or 1)
				if FFlagEnableToolboxVideos then
					isVideo = Category.categoryIsVideo(pageInfoOnStart.currentTab, pageInfoOnStart.categoryIndex or 1)
				end
			end

			if (FFlagEnablePurchasePluginFromLua2 and PageInfoHelper.isDeveloperCategory(pageInfoOnStart))
				or (FFlagStudioUseDevelopAPIForPackages and PageInfoHelper.isPackagesCategory(pageInfoOnStart))
				or isAudio
				or isVideo
			then
				useDevelopAssetAPI = true
			end

			if useDevelopAssetAPI then
				return networkInterface:getDevelopAsset(pageInfoOnStart):andThen(generalGetAssetHandleFunc, errorFunc)
			else
				return networkInterface:getAssets(pageInfoOnStart):andThen(generalGetAssetHandleFunc, errorFunc)
			end
		end
	end
end
