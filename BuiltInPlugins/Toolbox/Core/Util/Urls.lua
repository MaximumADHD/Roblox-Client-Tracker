local Plugin = script.Parent.Parent.Parent

local Url = require(Plugin.Libs.Http.Url)

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local Urls = {}

local GET_ASSETS = Url.BASE_URL .. "IDE/Toolbox/Items?"
local POST_VOTE = Url.BASE_URL .. "voting/vote"
local INSERT_ASSET = Url.BASE_URL .. "IDE/Toolbox/InsertAsset?"
local GET_MANAGEABLE_GROUPS = Url.BASE_URL .. "groups/can-manage-games"

local ASSET_ID_STRING = "rbxassetid://%d"
local ASSET_ID_PATH = "asset/?"
local ASSET_ID = Url.BASE_URL .. ASSET_ID_PATH
local ASSET_GAME_ASSET_ID = Url.GAME_ASSET_URL .. ASSET_ID_PATH

local ASSET_THUMBNAIL = Url.GAME_ASSET_URL .. "asset-thumbnail/image?"

local USER_SEARCH = Url.BASE_URL .. "search/users/results?"
local USER_THUMBNAIL = Url.BASE_URL .. "headshot-thumbnail/image?"

local CATALOG_V1_BASE = "https://catalog.roblox.com/v1%s"
local FAVORITE_COUNT_BASE = "/favorites/assets/%d/count"
local GET_FAVORITED_BASE = "/favorites/users/%d/assets/%d/favorite"
local POST_FAVORITED_BASE = "/favorites/users/%d/assets/%d/favorite"
local DELETE_FAVORITE_BASE = "/favorites/users/%d/assets/%d/favorite"

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

return wrapStrictTable(Urls)