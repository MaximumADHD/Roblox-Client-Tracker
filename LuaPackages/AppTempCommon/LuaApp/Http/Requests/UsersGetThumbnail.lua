local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local THUMBNAIL_TYPE_BY_NAME = {
	AvatarThumbnail = Enum.ThumbnailType.AvatarThumbnail,
	HeadShot = Enum.ThumbnailType.HeadShot,
}

local THUMBNAIL_SIZE_BY_NAME = {
	Size48x48 = Enum.ThumbnailSize.Size48x48,
	Size60x60 = Enum.ThumbnailSize.Size60x60,
	Size100x100 = Enum.ThumbnailSize.Size100x100,
	Size150x150 = Enum.ThumbnailSize.Size150x150,
	Size352x352 = Enum.ThumbnailSize.Size352x352
}

return function(userId, thumbnailType, thumbnailSize)
	return Promise.new(function(resolve, reject)
		--Async methods will yield the thread
		spawn(function()
			local result = {success = false}
			local success, message = pcall(function()
				local image, isFinal = Players:GetUserThumbnailAsync(
					tonumber(userId), THUMBNAIL_TYPE_BY_NAME[thumbnailType], THUMBNAIL_SIZE_BY_NAME[thumbnailSize]
				)

				result = {
					success = true,
					id = userId,
					thumbnailType = thumbnailType,
					thumbnailSize = thumbnailSize,

					image = isFinal and image or nil,
					isFinal = isFinal,
				}
			end)

			if success then
				resolve(result)
			else
				result.message = message
				reject(result)
			end
		end)
	end)
end