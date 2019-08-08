local Plugin = script.Parent.Parent.Parent.Parent

local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)

local getSettings = ContextGetter.getSettings

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetLoading = require(Plugin.Core.Actions.SetLoading)
local SetCachedCreatorInfo = require(Plugin.Core.Actions.SetCachedCreatorInfo)

local Category = require(Plugin.Core.Types.Category)

local PageInfoHelper = require(Util.PageInfoHelper)
local PagedRequestCursor = require(Util.PagedRequestCursor)
local DebugFlags = require(Util.DebugFlags)

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
			local assetResultTable =  {
				Asset = {
					Description = value.description,
					Id = value.assetId,
					Name = value.name,
					TypeId = assetType and assetType.Value,
					AssetGenres = {},
					Status = value.status
				},
				Creator = {
					Id = value.creatorTargetId,
					Name = creatorName
				}
			}
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
	store:dispatch(SetLoading(false))
end

local function dispatchGetAssetsWarning(store, errorText, nextCursor)
	if DebugFlags.shouldDebugWarnings() then
		warn(errorText)
	end
	store:dispatch(GetAssets({}, nil, nextCursor))
	store:dispatch(SetLoading(false))
end

return function(networkInterface, pageInfo)
	return function(store)
		if store:getState().assets.isLoading or store:getState().assets.hasReachedBottom then
			return
		end

		store:dispatch(SetLoading(true))

		if pageInfo.creator and pageInfo.creator.Id == -1 then
			local data = {
				Results = {},
				TotalResults = 0,
			}
			store:dispatch(GetAssets(data.Results, data.TotalResults))
			store:dispatch(SetLoading(false))
		else
			local errorFunc = function(result)
				store:dispatch(NetworkError(result))
				store:dispatch(SetLoading(false))
			end

			if Category.CREATIONS_KEY == pageInfo.currentTab then
				local currentCursor = store:getState().assets.currentCursor
				if PagedRequestCursor.isNextPageAvailable(currentCursor) then
					return networkInterface:getAssetCreations(pageInfo, PagedRequestCursor.getNextPageCursor(currentCursor)):andThen(function(creationsResult)
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
											dispatchGetAssets(store, pageInfo, creationDetailsTable, creatorName, nextCursor)
										end, errorFunc)
									end

									if not isNameEndPointCallRequired then
										local creatorName = store:getState().assets.cachedCreatorInfo.Name
										dispatchGetAssets(store, pageInfo, creationDetailsTable, creatorName, nextCursor)
									end
								else
									dispatchGetAssetsWarning(store, "getAssetCreationDetails() did not return any asset details", nextCursor)
								end
							end, errorFunc)
						else
							dispatchGetAssetsWarning(store, "getAssetCreations() did not return any assets for cursor", nextCursor)
						end
					end, errorFunc)
				else
					store:dispatch(SetLoading(false))
				end
			else
				local handlerFunc = function(result)
					local data = result.responseBody
					if data then
						dispatchCreatorInfo(store, extractCreatorInfo(data.Results))
						store:dispatch(GetAssets(data.Results or {}, data.TotalResults))
					end
					store:dispatch(SetLoading(false))
				end
				return networkInterface:getAssets(pageInfo):andThen(handlerFunc, errorFunc)
			end
		end
	end
end
