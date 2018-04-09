local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local UsersGetThumbnail = require(Requests.UsersGetThumbnail)
local SetUserThumbnail = require(Actions.SetUserThumbnail)
local Promise = require(Modules.LuaApp.Promise)

local function fetchThumbnailsBatch(networkImpl, userIds, thumbnailType, thumbnailSize)
	local fetchingPromises = {}

	for _, userId in pairs(userIds) do
		table.insert(fetchingPromises, UsersGetThumbnail(userId, thumbnailType, thumbnailSize))
	end

	return Promise.all(fetchingPromises)
end

return function(networkImpl, userIds, thumbnailType, thumbnailSize)
	return function(store)
		return fetchThumbnailsBatch(networkImpl, userIds, thumbnailType, thumbnailSize):andThen(function(result)
			for _, data in pairs(result) do
				store:Dispatch(SetUserThumbnail(data.id, data.image, data.thumbnailType, data.thumbnailSize))
			end
		end)
	end
end