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

function Urls.constructGetAssetsUrl(category, searchTerm, pageSize, page, sortType, groupId)
	return GET_ASSETS .. Url.makeQueryString({
		category = category,
		keyword = searchTerm,
		num = pageSize,
		page = page,
		sort = sortType,
		groupId = groupId,
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

function Urls.constructAssetGameAssetIdUrl(assetId, assetTypeId)
	return ASSET_GAME_ASSET_ID
		.. Url.makeQueryString({
			id = assetId,
		})
		.. "#"
		.. Url.makeQueryString({
			assetTypeId = assetTypeId,
		})
end

function Urls.constructAssetThumbnailUrl(assetId, width, height)
	-- The URL only accepts certain sizes for thumbnails. This includes 50, 75, 100, 150, 250, 420 etc.
	local DEFAULT_ASSET_SIZE = 100
	width = width or DEFAULT_ASSET_SIZE
	height = height or DEFAULT_ASSET_SIZE

	return ASSET_THUMBNAIL .. Url.makeQueryString({
		assetId = assetId,
		width = width,
		height = height,
	})
end

return wrapStrictTable(Urls)
