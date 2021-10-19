--[[
	NetworkInterface

	Provides an interface between real Networking implementation and Mock one for production and test
]]--

local FFlagRemoveGetAssetConfigGroupDataRequest = game:GetFastFlag("RemoveGetAssetConfigGroupDataRequest")

local Plugin = script.Parent.Parent.Parent

local Networking = require(Plugin.Packages.Http).Networking

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local Urls = require(Plugin.Src.Util.Urls)

local NetworkInterface = {}
NetworkInterface.__index = NetworkInterface

function NetworkInterface.new()
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

function NetworkInterface:jsonEncode(data)
	return self._networkImp:jsonEncode(data)
end

if not FFlagRemoveGetAssetConfigGroupDataRequest then
	function NetworkInterface:getAssetGroupData(groupId)
		local targetUrl = Urls.constructAssetConfigGroupDataUrl(groupId)

		printUrl("getAssetConfigGroupData", "GET", targetUrl)
		return self._networkImp:httpGet(targetUrl)
	end
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

function NetworkInterface:getMyGroups(userId)
	local targetUrl = Urls.constructGetMyGroupUrl()
	printUrl("getMyGroups", "GET", targetUrl)
	return self._networkImp:httpGetJson(targetUrl)
end

return NetworkInterface
