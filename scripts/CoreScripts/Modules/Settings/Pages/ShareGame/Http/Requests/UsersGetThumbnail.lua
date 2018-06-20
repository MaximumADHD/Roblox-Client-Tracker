local Players = game:GetService("Players")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Promise = require(Modules.Settings.Pages.ShareGame.Promise)

local THUMBNAIL_TYPE_BY_NAME = {
	AvatarThumbnail = Enum.ThumbnailType.AvatarThumbnail,
	HeadShot = Enum.ThumbnailType.HeadShot,
}

local THUMBNAIL_SIZE_BY_NAME = {
	Size100x100 = Enum.ThumbnailSize.Size100x100,
	Size150x150 = Enum.ThumbnailSize.Size150x150,
}

return function(userId, thumbnailType, thumbnailSize)
	return Promise.new(function(resolve, reject)
		--Async methods will yield the thread
		spawn(function()
			local result = {success = false}
			pcall(function()
				local image, isFinal = Players:GetUserThumbnailAsync(
					userId, THUMBNAIL_TYPE_BY_NAME[thumbnailType], THUMBNAIL_SIZE_BY_NAME[thumbnailSize]
				)
				result = {
					success = true,
					id = userId,
					thumbnailType = thumbnailType,
					thumbnailSize = thumbnailSize,

					image = image,
					isFinal = isFinal,
				}
			end)

			if result.success then
				resolve(result)
			else
				reject(result)
			end
		end)
	end)
end