local Players = game:GetService("Players")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Promise = require(Modules.LuaApp.Promise)

local THUMB_TYPE = Enum.ThumbnailType.HeadShot

return function(userId, thumbnailSize)
	return Promise.new(function(resolve, reject)
		--Async methods will yield the thread
		spawn(function()
			local result = {success = false}
			pcall(function()
				local image, isFinal = Players:GetUserThumbnailAsync(userId, THUMB_TYPE, thumbnailSize)
				result = {
					thumbnailSize = thumbnailSize,
					id = userId,
					image = image,
					isFinal = isFinal,
					success = true,
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