local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local UsersGetHeadshot = require(Requests.UsersGetHeadshot)
local SetUserHeadshot = require(Actions.SetUserHeadshot)
local Promise = require(Modules.LuaApp.Promise)

local function fetchHeadshotsBatch(networkImpl, userIds, thumbnailSize)
	local fetchingPromises = {}

	for _, userId in pairs(userIds) do
		table.insert(fetchingPromises, UsersGetHeadshot(userId, thumbnailSize))
	end

	return Promise.all(fetchingPromises)
end

return function(networkImpl, userIds, thumbnailSize)
	return function(store)
		return fetchHeadshotsBatch(networkImpl, userIds, thumbnailSize):andThen(function(result)
			for _, data in pairs(result) do
				store:Dispatch(SetUserHeadshot(data.id, data.image, data.thumbnailSize))
			end
		end)
	end
end