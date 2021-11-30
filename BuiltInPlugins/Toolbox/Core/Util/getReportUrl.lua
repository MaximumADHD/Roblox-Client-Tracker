local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local EnumConvert = require(Util.EnumConvert)

return function(assetId, assetTypeId)
	local baseUrl = ContentProvider.BaseUrl
	local assetTypeEnum = EnumConvert.convertAssetTypeValueToEnum(assetTypeId)
	local rawUrl;
	if AssetConfigConstants.LIBRARY_REPORT_ASSET_TYPES[assetTypeEnum] == true then
		rawUrl = "%s/abusereport/library?id=%s&source=Studio"
	else
		rawUrl = "%s/abusereport/asset?id=%s"
	end

	return string.format(rawUrl, baseUrl, HttpService:urlEncode(assetId))
end
