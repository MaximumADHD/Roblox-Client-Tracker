local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

--[[
	Documentation of endpoint:
	https://thumbnails.roblox.com/docs#!/Avatar/get_v1_users_avatar

	input:
		userIds
		thumbnailSize
	output:
		[
			{
				"targetId": number,
				"state": string,
				"imageUrl": string,
			},
		]
]]

local MAX_USER_IDS = 100

return function (networkImpl, userIds, thumbnailSize)
	assert(type(userIds) == "table", "ThumbnailsGetAvatar expects userIds to be a table")

	if #userIds == 0 or #userIds > MAX_USER_IDS then
		error(string.format("ThumbnailsGetAvatar request expects userIds count between 1-%d", MAX_USER_IDS))
	end

	local queryString = Url:makeQueryString({
		userIds = table.concat(userIds, ","),
		size = thumbnailSize,
		format = "png",
	})

	local url = string.format("%sv1/users/avatar?%s", Url.THUMBNAILS_URL, queryString)

	return networkImpl(url, "GET")
end
