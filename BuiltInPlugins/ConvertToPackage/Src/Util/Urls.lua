local Plugin = script.Parent.Parent.Parent

local Url = require(Plugin.DEPRECATED_modules.Http.Url)

local wrapStrictTable = require(Plugin.Src.Util.wrapStrictTable)
local Urls = {}

local USER_THUMBNAIL = Url.BASE_URL .. "headshot-thumbnail/image?"
local GET_ASSET_GROUP = Url.DEVELOP_URL .. "/v1/groups/%s"

local POST_UPLOAD_ASSET_BASE = Url.DATA_URL .. "Data/Upload.ashx?"

local GET_MY_GROUPS = Url.DEVELOP_URL .. "v1/user/groups/canmanage"

local DEFAULT_ASSET_SIZE = 100

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


function Urls.constructGetMyGroupUrl()
	return GET_MY_GROUPS
end

return wrapStrictTable(Urls)