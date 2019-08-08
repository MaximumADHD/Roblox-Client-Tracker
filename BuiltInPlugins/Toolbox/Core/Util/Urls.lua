local Plugin = script.Parent.Parent.Parent

local Url = require(Plugin.Libs.Http.Url)

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local EnableDeveloperGetManageGroupUrl = game:DefineFastFlag("EnableDeveloperGetManageGroupUrl", false)

local Urls = {}

local GET_ASSETS = Url.BASE_URL .. "IDE/Toolbox/Items?"
local GET_ASSETS_CREATIONS = Url.ITEM_CONFIGURATION_URL .. "v1/creations/get-assets?"
local GET_ASSETS_CREATION_DETAILS = Url.ITEM_CONFIGURATION_URL .. "v1/creations/get-asset-details"
local GET_CREATOR_NAME = Url.API_URL .. "users/%d"
local GET_METADATA = Url.ITEM_CONFIGURATION_URL .. "v1/metadata"
local GET_UPLOAD_CATALOG_ITEM = Url.PUBLISH_URL .. "v1/assets/upload"
local GET_CONFIG_CATALOG_ITEM = Url.DEVELOP_URL .. "v1/assets/%d"
local GET_CONFIGURE_SALES = Url.ITEM_CONFIGURATION_URL .. "v1/assets/%d/release"
local GET_UPDATE_SALES = Url.ITEM_CONFIGURATION_URL .. "v1/assets/%d/update-price"

local POST_VOTE = Url.BASE_URL .. "voting/vote"
local INSERT_ASSET = Url.BASE_URL .. "IDE/Toolbox/InsertAsset?"
local GET_MANAGEABLE_GROUPS
if EnableDeveloperGetManageGroupUrl then
	GET_MANAGEABLE_GROUPS = Url.DEVELOP_URL .. "v1/user/groups/canmanage"
else
	GET_MANAGEABLE_GROUPS = Url.BASE_URL .. "groups/can-manage-games"
end
local ASSET_ID_STRING = "rbxassetid://%d"
local ASSET_ID_PATH = "asset/?"
local ASSET_ID = Url.BASE_URL .. ASSET_ID_PATH
local ASSET_GAME_ASSET_ID = Url.GAME_ASSET_URL .. ASSET_ID_PATH

local ASSET_THUMBNAIL = Url.GAME_ASSET_URL .. "asset-thumbnail/image?"

local USER_SEARCH = Url.BASE_URL .. "search/users/results?"
local USER_THUMBNAIL = Url.BASE_URL .. "headshot-thumbnail/image?"

local CATALOG_V1_BASE = Url.CATALOG_URL .. "v1%s"
local FAVORITE_COUNT_BASE = "/favorites/assets/%d/count"
local GET_FAVORITED_BASE = "/favorites/users/%d/assets/%d/favorite"
local POST_FAVORITED_BASE = "/favorites/users/%d/assets/%d/favorite"
local DELETE_FAVORITE_BASE = "/favorites/users/%d/assets/%d/favorite"

local GET_VERSION_HISTORY_BASE = Url.DEVELOP_URL .. "v1/assets/%s/saved-versions"
local POST_REVERT_HISTORY_BASE = Url.DEVELOP_URL .. "v1/assets/%s/revert-version?"
local GET_ASSET_CONFIG = Url.DEVELOP_URL .. "v1/assets?"
local GET_ASSET_GROUP = Url.DEVELOP_URL .. "/v1/groups/%s"

local PATCH_ASSET_BASE = Url.DEVELOP_URL .. "v1/assets/%s?"
local POST_UPLOAD_ASSET_BASE = Url.DATA_URL .. "Data/Upload.ashx?"

local GET_MY_GROUPS = Url.GROUP_URL .. "v2/users/%%20%%20%s/groups/roles"
local GET_IS_VERIFIED_CREATOR = Url.DEVELOP_URL .. "v1/user/is-verified-creator"

local DEFAULT_ASSET_SIZE = 100
local DEFAULT_SEARCH_ROWS = 3

function Urls.constructGetAssetsUrl(category, searchTerm, pageSize, page, sortType, groupId, creatorId)
	return GET_ASSETS .. Url.makeQueryString({
		category = category,
		keyword = searchTerm,
		num = pageSize,
		page = page,
		sort = sortType,
		groupId = groupId,
		creatorId = creatorId,
	})
end

function Urls.constructGetAssetCreationsUrl(assetType, limit, cursor)
	return GET_ASSETS_CREATIONS .. Url.makeQueryString({
		assetType = assetType,
		isArchived=false,
		limit = limit,
		cursor = cursor,
	})
end

function Urls.constructGetAssetCreationDetailsUrl()
	return GET_ASSETS_CREATION_DETAILS
end

function Urls.constructGetCreatorNameUrl(creatorId)
	return GET_CREATOR_NAME:format(creatorId)
end

function Urls.constructGetMetaDataUrl()
	return GET_METADATA
end

function Urls.constructUploadCatalogItemUrl()
	return GET_UPLOAD_CATALOG_ITEM
end

function Urls.constructConfigureSalesUrl(assetId)
	return GET_CONFIGURE_SALES:format(assetId)
end

function Urls.constructUpdateSalesUrl(assetId)
	return GET_UPDATE_SALES:format(assetId)
end

function Urls.constructConfigureCatalogItemUrl(assetId)
	return GET_CONFIG_CATALOG_ITEM:format(assetId)
end

function Urls.constructPostVoteUrl()
	return POST_VOTE
end

function Urls.constructInsertAssetUrl(assetId)
	return INSERT_ASSET .. Url.makeQueryString({
		assetId = assetId
	})
end

function Urls.constructGetManageableGroupsUrl()
	return GET_MANAGEABLE_GROUPS
end

function Urls.constructAssetIdString(assetId)
	return ASSET_ID_STRING:format(assetId)
end

function Urls.constructAssetIdUrl(assetId)
	return ASSET_ID .. Url.makeQueryString({
		id = assetId,
	})
end

function Urls.constructAssetSavedVersionString(assetId)
	return (GET_VERSION_HISTORY_BASE):format(assetId)
end

function Urls.constructRevertAssetVersionString(assetId, versionNumber)
	return (POST_REVERT_HISTORY_BASE):format(assetId)
		.. Url.makeQueryString({
			assetVersionNumber = versionNumber
		})
end

function Urls.constructAssetConfigDataUrl(assetId)
	return GET_ASSET_CONFIG
		.. Url.makeQueryString({
			assetIds = assetId
		})
end

function Urls.constructAssetConfigGroupDataUrl(groupId)
	return (GET_ASSET_GROUP):format(groupId)
end

function Urls.constructAssetGameAssetIdUrl(assetId, assetTypeId, isPackage)
	return ASSET_GAME_ASSET_ID
		.. Url.makeQueryString({
			id = assetId,
		})
		.. "#"
		.. Url.makeQueryString({
			assetTypeId = assetTypeId,
			isPackage = isPackage,
		})
end

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

function Urls.constructUserSearchUrl(searchTerm, numResults)
	return USER_SEARCH .. Url.makeQueryString({
		keyword = searchTerm,
		maxRows = numResults or DEFAULT_SEARCH_ROWS,
	})
end

function Urls.constructUserThumbnailUrl(userId, width)
	-- The URL only accepts certain sizes for thumbnails. This includes 50, 75, 100, 150, 250, 420 etc.
	width = width or DEFAULT_ASSET_SIZE

	return USER_THUMBNAIL .. Url.makeQueryString({
		userId = userId,
		width = width,
		height = width,
		format = "png",
	})
end

function Urls.constructFavoriteCountsUrl(assetId)
	return CATALOG_V1_BASE:format(FAVORITE_COUNT_BASE:format(assetId))
end

function Urls.constructGetFavoritedUrl(userId, assetId)
	return CATALOG_V1_BASE:format(GET_FAVORITED_BASE:format(userId, assetId))
end

function Urls.constructPostFavoriteUrl(userId, assetId)
	return CATALOG_V1_BASE:format(POST_FAVORITED_BASE:format(userId, assetId))
end

function Urls.constructDeleteFavoriteUrl(userId, assetId)
	return CATALOG_V1_BASE:format(DELETE_FAVORITE_BASE:format(userId, assetId))
end


function Urls.constructPatchAssetUrl(assetId)
	return (PATCH_ASSET_BASE):format(assetId)
end

function Urls.constructPostUploadAssetUrl(assetid, type, name, description, genreTypeId, ispublic, allowComments, groupId)
	return POST_UPLOAD_ASSET_BASE .. Url.makeQueryString({
		assetid = assetid,
		type = tostring(type),
		name = tostring(name),
		description = tostring(description),
		genreTypeId = genreTypeId,
		ispublic = ispublic and "True" or "False",
		allowComments = allowComments and "True" or "False",
		groupId = groupId or ""
	})
end

function Urls.constructOverrideAssetsUrl(assetid, type)
	return POST_UPLOAD_ASSET_BASE .. Url.makeQueryString({
		assetid = assetid,
		type = type
	})
end

function Urls.constructGetMyGroupUrl(userId)
	return (GET_MY_GROUPS):format(tostring(userId))
end

function Urls.constructIsVerifiedCreatorUrl()
	return GET_IS_VERIFIED_CREATOR
end

return wrapStrictTable(Urls)