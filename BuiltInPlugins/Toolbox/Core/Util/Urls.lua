local Plugin = script.Parent.Parent.Parent

local Url = require(Plugin.Libs.Http.Url)

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local EnableDeveloperGetManageGroupUrl = game:DefineFastFlag("EnableDeveloperGetManageGroupUrl", false)
local FFlagUseRBXThumbInToolbox = game:GetFastFlag("UseRBXThumbInToolbox")
local FFlagEnablePurchaseV2 = game:GetFastFlag("EnablePurchaseV2")

local Urls = {}

local GET_ASSETS = Url.BASE_URL .. "IDE/Toolbox/Items?"
local GET_ASSETS_DEVELOPER = Url.DEVELOP_URL .. "v1/toolbox/items?"
local GET_ASSETS_CREATIONS = Url.ITEM_CONFIGURATION_URL .. "v1/creations/get-assets?"
local GET_ASSETS_CREATION_DETAILS = Url.ITEM_CONFIGURATION_URL .. "v1/creations/get-asset-details"
local GET_CREATOR_NAME = Url.API_URL .. "users/%d"
local GET_METADATA = Url.ITEM_CONFIGURATION_URL .. "v1/metadata"
local GET_UPLOAD_CATALOG_ITEM = Url.PUBLISH_URL .. "v1/assets/upload"
local POST_UPLOAD_ASSET_THUMBNAIL =  Url.PUBLISH_URL .. "v1/assets/%d/thumbnail"
local GET_CONFIG_CATALOG_ITEM = Url.DEVELOP_URL .. "v1/assets/%d"
local GET_CONFIGURE_SALES = Url.ITEM_CONFIGURATION_URL .. "v1/assets/%d/release"
local GET_UPDATE_SALES = Url.ITEM_CONFIGURATION_URL .. "v1/assets/%d/update-price"
local Get_THUMBNAIL_STATUS = Url.THUMBNAIL_URL .. "v1/assets?"

local POST_VOTE = Url.BASE_URL .. "voting/vote"
local INSERT_ASSET = Url.BASE_URL .. "IDE/Toolbox/InsertAsset?"
local GET_MANAGEABLE_GROUPS
if EnableDeveloperGetManageGroupUrl then
	GET_MANAGEABLE_GROUPS = Url.DEVELOP_URL .. "v1/user/groups/canmanage"
else
	GET_MANAGEABLE_GROUPS = Url.BASE_URL .. "groups/can-manage-games"
end

local GET_ASSET_VERSION = Url.BASE_URL .. "studio/plugins/info?"
local GET_PLUGIN_INFO = Url.DEVELOP_URL .. "v1/plugins?"

local ASSET_ID_STRING = "rbxassetid://%d"
local ASSET_ID_PATH = "asset/?"
local ASSET_ID = Url.BASE_URL .. ASSET_ID_PATH
local ASSET_GAME_ASSET_ID = Url.GAME_ASSET_URL .. ASSET_ID_PATH

local ASSET_THUMBNAIL = Url.GAME_ASSET_URL .. "asset-thumbnail/image?"

local RBXTHUMB_BASE_URL = "rbxthumb://type=%s&id=%d&w=%d&h=%d"

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
local GET_GROUP_ROLE_INFO = Url.GROUP_URL .. "v1/groups/%s/roles"

local GET_USER_FRIENDS_URL = Url.FRIENDS_URL .. "v1/users/%d/friends"
local ROBUX_PURCHASE_URL = Url.BASE_URL .. "upgrades/robux"
local ROBUX_BALANCE_URL = Url.ECONOMY_URL .. "v1/users/%d/currency"
local OWNS_ASSET_URL = Url.API_URL .. "ownership/hasasset?assetId=%d&userId=%d"
local CAN_MANAGE_ASSET_URL = Url.API_URL .. "users/%d/canmanage/%d"
local ASSET_PURCHASE_URL = Url.ECONOMY_URL .. "v1/purchases/products/%d"
local ASSET_PURCHASE_URLV2 = Url.ECONOMY_URL .. "/v2/user-products/%d/purchase"

-- Package Permissions URLs
local GET_PACKAGE_COLLABORATORS = Url.DEVELOP_URL .. "v1/packages/assets/%s/permissions?"
local POST_PACKAGE_METADATA = Url.DEVELOP_URL .. "v1/packages/assets/versions/metadata/get"
local PUT_PACKAGE_PERMISSIONS = Url.DEVELOP_URL .. "v1/packages/assets/%s/permissions-batch"
local GET_PACKAGE_HIGHEST_PERMISSION_LIST = Url.DEVELOP_URL .. "v1/packages/assets/highest-permissions?assetIds=%s"

local GET_TAGS_PREFIX_SEARCH = Url.ITEM_CONFIGURATION_URL .. "v1/tags/prefix-search?"
local GET_ITEM_TAGS_METADATA = Url.ITEM_CONFIGURATION_URL .. "v1/item-tags/metadata"
local GET_ITEM_TAGS = Url.ITEM_CONFIGURATION_URL .. "v1/item-tags?"
local ADD_ASSET_TAG = Url.ITEM_CONFIGURATION_URL .. "v1/item-tags"
local DELETE_ITEM_TAG = Url.ITEM_CONFIGURATION_URL .. "v1/item-tags/%s"

local GET_TOOLBOX_ITEMS = Url.APIS_URL .. "toolbox-service/v1/%s?"
local GET_ITEM_DETAILS = Url.APIS_URL .. "toolbox-service/v1/items/details"

local DEFAULT_ASSET_SIZE = 100
local DEFAULT_SEARCH_ROWS = 3

function Urls.constructPostGetItemDetails()
	return GET_ITEM_DETAILS
end

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

function Urls.constructGetToolboxItemsUrl(category, sortType, creatorType, minDuration, maxDuration, creatorTargetId,
keyword, cursor, limit)
	local targetUrl = string.format(GET_TOOLBOX_ITEMS, category)
	return targetUrl .. Url.makeQueryString({
		sortType = sortType,
		creatorType = creatorType,
		minDuration = minDuration,
		maxDuration = maxDuration,
		creatorTargetId = creatorTargetId,
		keyword = keyword,
		cursor = cursor,
		limit = limit,
	})
end
-- category, string, neccesary parameter.
-- keyword, string, used for searching.
-- sort, string, default to relevence.
-- creatorId, number, user id or group id.
-- num, number, how many asset per page.
-- page, number, which page are we requesting.
-- groupId, number, used to fetch group asset.
-- creatorType, number, unused, maybe will be put in use one day.
function Urls.getDevelopAssetUrl(category, keyword, sort, creatorId, num, page, groupId, creatorType)
	return GET_ASSETS_DEVELOPER .. Url.makeQueryString({
		category = category,
		keyword = keyword,
		num = num,
		page = page,
		sort = sort,
		groupId = groupId,
		creatorType = creatorType,
		creatorId = creatorId,
	})
end

function Urls.constructGetAssetCreationsUrl(assetType, limit, cursor, isPackageExcluded, groupId)
	return GET_ASSETS_CREATIONS .. Url.makeQueryString({
		assetType = assetType,
		isArchived=false,
		limit = limit,
		cursor = cursor,
		groupId = groupId,
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

function Urls.constructUploadAssetThumbnailUrl(assetId)
	return POST_UPLOAD_ASSET_THUMBNAIL:format(assetId)
end


function Urls.contuctGetThumbnailStatusUrl(assetIds)
	return Get_THUMBNAIL_STATUS .. Url.makeQueryString({
		assetIds = assetIds,
		format = "Png", -- Even you can't choos other option, you still need this.
		size= "150x150", -- Again, not optional here.
	})
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

function Urls.constructGetAssetVersionUrl(assetId)
	return GET_ASSET_VERSION .. Url.makeQueryString({
		assetId = assetId
	})
end

function Urls.constructGetPluginInfoUrl(assetId)
	return GET_PLUGIN_INFO .. Url.makeQueryString({
		pluginIds = assetId,
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
	if FFlagUseRBXThumbInToolbox then
		return RBXTHUMB_BASE_URL:format("Asset", tonumber(assetId) or 0, width, height)
	else
		-- The URL only accepts certain sizes for thumbnails. This includes 50, 75, 100, 150, 250, 420 etc.
		width = width or DEFAULT_ASSET_SIZE
		height = height or DEFAULT_ASSET_SIZE

		return ASSET_THUMBNAIL .. Url.makeQueryString({
			assetId = assetId,
			width = width,
			height = height,
		})
	end
end

function Urls.constructRBXThumbUrl(type, assetId, size)
	if not FFlagUseRBXThumbInToolbox then
		return ""
	end
	return RBXTHUMB_BASE_URL:format(type, tonumber(assetId) or 0, size, size)
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

function Urls.constructGetUserFriendsUrl(userId)
	return GET_USER_FRIENDS_URL:format(userId)
end

function Urls.constructGetPackageCollaboratorsUrl(assetId)
	return GET_PACKAGE_COLLABORATORS:format(assetId) .. Url.makeQueryString({
		actionsTextToFilter = "UseView,Edit"
	})
end

function Urls.constructPutPackagePermissionsUrl(assetId)
	return PUT_PACKAGE_PERMISSIONS:format(assetId)
end

function Urls.getRobuxPurchaseUrl()
	return ROBUX_PURCHASE_URL
end

function Urls.constructPostPackageMetadata()
	return POST_PACKAGE_METADATA
end

function Urls.constructGetRobuxBalanceUrl(userId)
	return ROBUX_BALANCE_URL:format(userId)
end

function Urls.constructGetGroupRoleInfoUrl(groupId)
	return GET_GROUP_ROLE_INFO:format(groupId)
end

function Urls.constructPackageHighestPermissionUrl(assetIds)
	local assetIdStringList = ""
	for i, assetId in ipairs(assetIds) do
		assetIdStringList = assetIdStringList .. assetId .. (assetIds[i+1] ~= nil and "," or "")
	end
	return GET_PACKAGE_HIGHEST_PERMISSION_LIST:format(assetIdStringList)
end

function Urls.constructOwnsAssetUrl(assetId, userId)
	return OWNS_ASSET_URL:format(assetId, userId)
end

function Urls.constructCanManageAssetUrl(assetId, userId)
	return CAN_MANAGE_ASSET_URL:format(userId, assetId)
end

function Urls.constructAssetPurchaseUrl(productId)
	if FFlagEnablePurchaseV2 then
		return ASSET_PURCHASE_URLV2:format(productId)
	else
		return ASSET_PURCHASE_URL:format(productId)
	end

end

function Urls.constructGetTagsPrefixSearchUrl(prefix, numberOfResults)
	return GET_TAGS_PREFIX_SEARCH .. Url.makeQueryString({
		prefix = prefix,
		numberOfResults = numberOfResults,
	})
end

function Urls.constructGetTagsMetadataUrl()
	return GET_ITEM_TAGS_METADATA
end

function Urls.constructGetAssetItemTagsUrl(assetId)
	return GET_ITEM_TAGS .. Url.makeQueryString({
		itemIds = string.format("AssetId:%d", assetId)
	})
end

function Urls.constructAddAssetTagUrl()
	return ADD_ASSET_TAG
end

function Urls.constructDeleteAssetItemTagUrl(itemTagId)
	return DELETE_ITEM_TAG:format(itemTagId)
end

return wrapStrictTable(Urls)
