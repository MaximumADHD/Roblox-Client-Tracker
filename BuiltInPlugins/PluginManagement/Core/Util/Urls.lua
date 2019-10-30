local Plugin = script.Parent.Parent.Parent

local Url = require(Plugin.Libs.Http.Url)
local Urls = {}

local ASSET_THUMBNAIL = Url.GAME_ASSET_URL .. "asset-thumbnail/image?"
local ASSET_VERSION = Url.BASE_URL .. "studio/plugins/info?"
local PLUGIN_INFO = Url.DEVELOP_URL .. "v1/plugins?"

local DEFAULT_ASSET_SIZE = 100

function Urls.constructAssetThumbnailUrl(assetId, width, height)
	-- The URL only accepts certain sizes for thumbnails. This includes 50, 75, 100, 150, 250, 420 etc.
	width = width or DEFAULT_ASSET_SIZE
	height = height or DEFAULT_ASSET_SIZE

	return ASSET_THUMBNAIL .. Url.makeQueryString({
		assetId = assetId,
		width = width,
		height = height,
	})
end

function Urls.constructGetAssetVersionUrl(assetId)
	return ASSET_VERSION .. Url.makeQueryString({
		assetId = assetId
	})
end

function Urls.constructGetPluginInfoUrl(assetIds)
	local assetIdString = "" .. assetIds[1]
	for i = 2, #assetIds do
		assetIdString = assetIdString .. "," .. assetIds[i]
	end
	return PLUGIN_INFO .. Url.makeQueryString({
		pluginIds = assetIdString
	})
end

function Urls.constructFindPluginLibraryUrl()
	return Url.BASE_URL .. "develop/library?CatalogContext=2&SortType=0&SortAggregation=3&SortCurrency=0&Category=7"
end

return Urls