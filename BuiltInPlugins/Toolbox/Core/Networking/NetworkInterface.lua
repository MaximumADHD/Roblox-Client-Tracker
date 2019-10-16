--[[
	NetworkInterface

	Provides an interface between real Networking implementation and Mock one for production and test
]]--

local Plugin = script.Parent.Parent.Parent

local Networking = require(Plugin.Libs.Http.Networking)
local Promise = require(Plugin.Libs.Http.Promise)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local Urls = require(Plugin.Core.Util.Urls)
local Constants = require(Plugin.Core.Util.Constants)

local Category = require(Plugin.Core.Types.Category)

local NetworkInterface = {}
NetworkInterface.__index = NetworkInterface

local FFlagUseCreationToFetchMyOverrideData2 = game:GetFastFlag("UseCreationToFetchMyOverrideData2")

function NetworkInterface:new()
	local networkImp = {
		_networkImp = Networking.new()

	}
	setmetatable(networkImp, NetworkInterface)

	return networkImp
end

local function printUrl(method, httpMethod, url, payload)
	if DebugFlags.shouldDebugUrls() then
		print(("NetworkInterface:%s()"):format(method))
		print(("\t%s %s"):format(httpMethod:upper() or "method=nil", url or "url=nil"))
		if payload then
			print(("\t%s"):format(tostring(payload)))
		end
	end
end

local function sendRequestAndRetry(requestFunc, retryData)
	retryData = retryData or {
		attempts = 0,
		time = 0,
		maxRetries = 5
	}
	retryData.attempts = retryData.attempts + 1

	return requestFunc():catch(function(result)
		if retryData.attempts >= retryData.maxRetries then
			-- Eventually give up
			return Promise.reject(result)
		end

		local timeToWait = 2^(retryData.attempts - 1)
		wait(timeToWait)

		return sendRequestAndRetry(requestFunc, retryData)
	end)
end

function NetworkInterface:jsonEncode(data)
	return self._networkImp:jsonEncode(data)
end

function NetworkInterface:getAssets(pageInfo)
	local category = PageInfoHelper.getCategoryForPageInfo(pageInfo) or ""
	local searchTerm = pageInfo.searchTerm or ""
	local targetPage = pageInfo.targetPage or 1
	local sortType = PageInfoHelper.getSortTypeForPageInfo(pageInfo) or ""
	local groupId = Category.categoryIsGroupAsset(pageInfo.currentTab, pageInfo.categoryIndex)
		and PageInfoHelper.getGroupIdForPageInfo(pageInfo)
		or 0
	local creatorId = pageInfo.creator and pageInfo.creator.Id or ""

	local targetUrl = Urls.constructGetAssetsUrl(category, searchTerm, Constants.GET_ITEMS_PAGE_SIZE, targetPage, sortType, groupId, creatorId)

	return sendRequestAndRetry(function()
		printUrl("getAssets", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

-- For now, only whitelistplugin uses this endpoint to fetch data.
function NetworkInterface:getWhiteListPlugin(pageInfo)
	local category = PageInfoHelper.getCategoryForPageInfo(pageInfo) or ""
	local searchTerm = pageInfo.searchTerm or ""
	local targetPage = pageInfo.targetPage or 1
	local sortType = PageInfoHelper.getSortTypeForPageInfo(pageInfo) or ""
	local groupId = Category.categoryIsGroupAsset(pageInfo.currentTab, pageInfo.categoryIndex)
		and PageInfoHelper.getGroupIdForPageInfo(pageInfo)
		or 0
	local creatorId = pageInfo.creator and pageInfo.creator.Id or ""

	local targetUrl = Urls.constructGetAssetsUrl(category, searchTerm, sortType, creatorId,Constants.GET_ITEMS_PAGE_SIZE, targetPage, groupId, creatorId)

	return sendRequestAndRetry(function()
		printUrl("getWhiteListPlugin", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

function NetworkInterface:getOverrideModels(category, numPerPage, page, sort, groupId)
	local targetUrl = Urls.constructGetAssetsUrl(category, nil, numPerPage, page, sort, groupId)

	return sendRequestAndRetry(function()
		printUrl("getOverrideModelAssets", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

-- assetTypeOverride, used to override the assetType for requesting data. So, we don't need to deal with
-- categories and index.
function NetworkInterface:getAssetCreations(pageInfo, cursor, assetTypeOverride)
	local assetTypeName = assetTypeOverride
	if pageInfo then
		if game:GetFastFlag("CMSAdditionalAccessoryTypesV2") then
			assetTypeName = PageInfoHelper.getBackendNameForPageInfoCategory(pageInfo)
		else
			local assetType = PageInfoHelper.getEngineAssetTypeForPageInfoCategory(pageInfo)
			assetTypeName = assetType and assetType.Name or ""
		end
	end

	local targetUrl = Urls.constructGetAssetCreationsUrl(assetTypeName, Constants.GET_ASSET_CREATIONS_PAGE_SIZE_LIMIT, cursor)

	return sendRequestAndRetry(function()
		printUrl("getAssetCreations", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

function NetworkInterface:getAssetCreationDetails(assetIds)
	if DebugFlags.shouldDebugWarnings() and assetIds and #assetIds > Constants.GET_ASSET_CREATIONS_DETAILS_LIMIT then
		warn(("getAssetCreationDetails() does not support requests for more than %d assets at one time"):format(#assetIds))
	end

	local targetUrl = Urls.constructGetAssetCreationDetailsUrl()

	return sendRequestAndRetry(function()
		printUrl("getAssetCreationDetails", "POST", targetUrl)
		local payload = self._networkImp:jsonEncode({ assetIds = assetIds })
		return self._networkImp:httpPostJson(targetUrl, payload)
	end)
end

function NetworkInterface:getCreatorName(creatorId)
	local targetUrl = Urls.constructGetCreatorNameUrl(creatorId)

	return sendRequestAndRetry(function()
		printUrl("getCreatorName", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

function NetworkInterface:getMetaData()
	local targetUrl = Urls.constructGetMetaDataUrl()

	return sendRequestAndRetry(function()
		printUrl("getAccountInfo", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

function NetworkInterface:postVote(assetId, bool)
	local targetUrl = Urls.constructPostVoteUrl()

	local payload = self._networkImp:jsonEncode({
		assetId = assetId,
		vote = bool,
	})

	return sendRequestAndRetry(function()
		printUrl("postVote", "POST", targetUrl, payload)
		return self._networkImp:httpPostJson(targetUrl, payload)
	end)
end

function NetworkInterface:configureSales(assetId, saleStatus, price)
	local targetUrl = Urls.constructConfigureSalesUrl(assetId)

	local payload = self._networkImp:jsonEncode({
		price = price,
		saleStatus = saleStatus,
	})

	printUrl("configureSales", "POST", targetUrl, payload)
	return self._networkImp:httpPostJson(targetUrl, payload)
end

function NetworkInterface:updateSales(assetId, price)
	local targetUrl = Urls.constructUpdateSalesUrl(assetId)

	local payload = self._networkImp:jsonEncode({
		price = price,
	})

	printUrl("updateSales", "POST", targetUrl, payload)
	return self._networkImp:httpPostJson(targetUrl, payload)
end

function NetworkInterface:postUnvote(assetId)
	local targetUrl = Urls.constructPostVoteUrl()

	local payload = self._networkImp:jsonEncode({
		assetId = assetId,
	})

	return sendRequestAndRetry(function()
		printUrl("postUnvote", "POST", targetUrl, payload)
		return self._networkImp:httpPostJson(targetUrl, payload)
	end)
end

function NetworkInterface:postInsertAsset(assetId)
	local targetUrl = Urls.constructInsertAssetUrl(assetId)

	local payload = self._networkImp:jsonEncode({
		assetId = assetId,
	})

	return sendRequestAndRetry(function()
		printUrl("postInsertAsset", "POST", targetUrl, payload)
		return self._networkImp:httpPost(targetUrl, payload)
	end)
end

function NetworkInterface:getManageableGroups()
	local targetUrl = Urls.constructGetManageableGroupsUrl()

	return sendRequestAndRetry(function()
		printUrl("getManageableGroups", "GET", targetUrl)
		return self._networkImp:httpGetJson(targetUrl)
	end)
end

function NetworkInterface:getUsers(searchTerm, numResults)
	local targetUrl = Urls.constructUserSearchUrl(searchTerm, numResults)
	printUrl("getUsers", "GET", targetUrl)
	return self._networkImp:httpGetJson(targetUrl)
end

function NetworkInterface:getFavoriteCounts(assetId)
	local targetUrl = Urls.constructFavoriteCountsUrl(assetId)

	printUrl("getFavorites", "GET", targetUrl)
	return self._networkImp:httpGet(targetUrl)
end

function NetworkInterface:getFavorited(userId, assetId)
	local targetUrl = Urls.constructGetFavoritedUrl(userId, assetId)

	printUrl("getFavorited", "GET", targetUrl)
	return self._networkImp:httpGet(targetUrl)
end

function NetworkInterface:getAssetConfigData(assetId)
	local targetUrl = Urls.constructAssetConfigDataUrl(assetId)

	printUrl("getAssetConfigData", "GET", targetUrl)
	return self._networkImp:httpGet(targetUrl)
end

function NetworkInterface:getAssetGroupData(groupId)
	local targetUrl = Urls.constructAssetConfigGroupDataUrl(groupId)

	printUrl("getAssetConfigGroupData", "GET", targetUrl)
	return self._networkImp:httpGet(targetUrl)
end

function NetworkInterface:getVersionsHistory(assetId)
	local targetUrl = Urls.constructAssetSavedVersionString(assetId)

	printUrl("getVersionsHistory", "GET", targetUrl)
	return self._networkImp:httpGet(targetUrl)
end

function NetworkInterface:postRevertVersion(assetId, versionNumber)
	local targetUrl = Urls.constructRevertAssetVersionString(assetId, versionNumber)

	printUrl("postRevertVersion", "POST", targetUrl)
	return self._networkImp:httpPostJson(targetUrl, {})
end

function NetworkInterface:postFavorite(userId, assetId)
	local targetUrl = Urls.constructPostFavoriteUrl(userId, assetId)

	local payload = self._networkImp:jsonEncode({
		userId = userId,
		assetId = assetId,
	})

	printUrl("postFavorite", "POST", targetUrl, payload)
	return self._networkImp:httpPostJson(targetUrl, payload)
end

function NetworkInterface:deleteFavorite(userId, assetId)
	local targetUrl = Urls.constructDeleteFavoriteUrl(userId, assetId)

	printUrl("deleteFavorite", "DELETE", targetUrl)
	return self._networkImp:httpDelete(targetUrl)
end

function NetworkInterface:uploadCatalogItem(formBodyData, boundary)
	local targetUrl = Urls.constructUploadCatalogItemUrl()

	local requestInfo = {
		Url = targetUrl,
		Method = "POST",
		Body = formBodyData,
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "multipart/form-data; boundary=" .. boundary,
		}
	}

	printUrl("uploadCatalogItem", "FORM-DATA", targetUrl, formBodyData)
	return self._networkImp:requestInternal(requestInfo)
	:catch(function(err)
		return Promise.reject(err)
	end)
end

function NetworkInterface:configureCatalogItem(assetId, patchDataTable)
	local targetUrl = Urls.constructConfigureCatalogItemUrl(assetId)

	local patchPayload = self._networkImp:jsonEncode(patchDataTable)

	local requestInfo = {
		Url = targetUrl,
		Method = "PATCH",
		Body = patchPayload,
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "application/json",
		},
	}

	-- TODO: replace this with Networking:httpPatch
	printUrl("uploadCatalogItem", "PATCH", targetUrl, patchPayload)
	return self._networkImp:requestInternal(requestInfo)
	:catch(function(err)
		return Promise.reject(err)
	end)
end

--[[
	assetId (number, must)
	name (string, optional): Name of the asset ,
	description (string, optional): Description of the asset ,
	genres (Array[string], optional): List of genres of the asset ,
	enableComments (boolean, optional): Indicates comments enabled. ,
	isCopyingAllowed (boolean, optional): Indicates if copying is allowed. ,
	locale (string, optional),
	localName (string, optional),
	localDescription (string, optional)
]]
function NetworkInterface:patchAsset(assetId, name, description, genres, enableComments, isCopyingAllowed, locale, localName, localDescription)
	local targetUrl = Urls.constructPatchAssetUrl(assetId)

	local payload = self._networkImp:jsonEncode({
		name = name,
		description = description,
		genres = genres,
		enableComments = enableComments,
		isCopyingAllowed = isCopyingAllowed,
		locale = locale,
		localName = localName,
		localDescription = localDescription,
	})

	printUrl("patchAsset", "PATCH", targetUrl, payload)
	return self._networkImp:httpPatch(targetUrl, payload)
end

-- assetId, number, defualt to 0 for new asset.
-- type, string, the asset type of the asset.
-- name, string, need to be url encoded.
-- name, string, need to be url encoded.
-- description, string, need to be url encoded.
-- genreTypeId, Id, for genre.
-- ispublic, bool
-- allowComments, bool
-- groupId, number, default to nil
-- instanceData, serialised instance, used in post body
function NetworkInterface:postUploadAsset(assetid, type, name, description, genreTypeId, ispublic, allowComments, groupId, instanceData)
	local targetUrl = Urls.constructPostUploadAssetUrl(assetid, type, name, description, genreTypeId, ispublic, allowComments, groupId)

	printUrl("uploadCatalogItem", "POST", targetUrl, instanceData)
	return self._networkImp:httpPost(targetUrl, instanceData)
end

function NetworkInterface:postOverrideAsset(assetid, type, instanceData)
	local targetUrl = Urls.constructOverrideAssetsUrl(assetid, type)

	printUrl("postOverrideAsset", "POST", targetUrl)
	return self._networkImp:httpPost(targetUrl, instanceData)
end

function NetworkInterface:getMyGroups(userId)
	local targetUrl = Urls.constructGetMyGroupUrl(userId)

	printUrl("getMyGroups", "GET", targetUrl)
	return self._networkImp:httpGetJson(targetUrl)
end

function NetworkInterface:getIsVerifiedCreator()
	local targetUrl = Urls.constructIsVerifiedCreatorUrl()

	printUrl("getIsVerifiedCreator", "GET", targetUrl)
	return self._networkImp:httpGetJson(targetUrl)
end

function NetworkInterface:getAssetVersionId(assetId)
	local targetUrl = Urls.constructGetAssetVersionUrl(assetId)

	printUrl("getAssetVersionId", "GET", targetUrl)
	return self._networkImp:httpGet(targetUrl)
end

return NetworkInterface
