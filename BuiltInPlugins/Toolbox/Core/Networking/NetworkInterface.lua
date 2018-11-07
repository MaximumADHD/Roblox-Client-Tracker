--[[
	NetworkInterface

	Provides an interface between real Networking implementation and Mock one for production and test
]]--

local Plugin = script.Parent.Parent.Parent

local Networking = require(Plugin.Libs.Http.Networking)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local Urls = require(Plugin.Core.Util.Urls)
local Constants = require(Plugin.Core.Util.Constants)

local Category = require(Plugin.Core.Types.Category)

local NetworkInterface = {}
NetworkInterface.__index = NetworkInterface

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

function NetworkInterface:getAssets(pageInfo)
	local category = PageInfoHelper.getCategoryForPageInfo(pageInfo) or ""
	local searchTerm = pageInfo.searchTerm or ""
	local pageSize = pageInfo.pageSize or Constants.GET_ITEMS_PAGE_SIZE
	local page = pageInfo.page or 1
	local sortType = PageInfoHelper.getSortTypeForPageInfo(pageInfo) or ""
	local groupId = Category.categoryIsGroupAsset(pageInfo.categoryIndex)
		and PageInfoHelper.getGroupIdForPageInfo(pageInfo)
		or 0

	local targetUrl = Urls.constructGetAssetsUrl(category, searchTerm, pageSize, page, sortType, groupId)

	printUrl("getAssets", "GET", targetUrl)
	return self._networkImp:httpGetJson(targetUrl)
end

function NetworkInterface:postVote(assetId, bool)
	local targetUrl = Urls.constructPostVoteUrl()

	local payload = self._networkImp:jsonEncode({
		assetId = assetId,
		vote = bool,
	})

	printUrl("postVote", "POST", targetUrl, payload)
	return self._networkImp:httpPostJson(targetUrl, payload)
end

function NetworkInterface:postUnvote(assetId)
	local targetUrl = Urls.constructPostVoteUrl()

	local payload = self._networkImp:jsonEncode({
		assetId = assetId,
	})

	printUrl("postUnvote", "POST", targetUrl, payload)
	return self._networkImp:httpPostJson(targetUrl, payload)
end

function NetworkInterface:postInsertAsset(assetId)
	local targetUrl = Urls.constructInsertAssetUrl(assetId)

	local payload = self._networkImp:jsonEncode({
		assetId = assetId,
	})

	printUrl("postInsertAsset", "POST", targetUrl, payload)
	return self._networkImp:httpPost(targetUrl, payload)
end

function NetworkInterface:getManageableGroups()
	local targetUrl = Urls.constructGetManageableGroupsUrl()

	printUrl("getManageableGroups", "GET", targetUrl)
	return self._networkImp:httpGetJson(targetUrl)
end

return NetworkInterface