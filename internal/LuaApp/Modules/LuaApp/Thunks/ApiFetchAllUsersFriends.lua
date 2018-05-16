local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Promise = require(Modules.LuaApp.Promise)
local ApiFetchUsersFriendPage = require(Modules.LuaApp.Thunks.ApiFetchUsersFriendPage)
local ApiFetchUsersFriendCount = require(Modules.LuaApp.Thunks.ApiFetchUsersFriendCount)

return function(networkImpl, thumbnailType)
	return function(store)
		return store:Dispatch(ApiFetchUsersFriendCount(networkImpl)):andThen(function(friendCount)
			local fetchPromises = {}

			local retrievedFriends = 0
			local page = 0
			local function callNextPage()
				page = page + 1
				local fetchPage = ApiFetchUsersFriendPage(networkImpl, page, thumbnailType)
				local promise = store:Dispatch(fetchPage):andThen(function(userIds)
					retrievedFriends = retrievedFriends + #userIds
					if retrievedFriends < friendCount and #userIds > 0 then
						callNextPage()
					end
				end)
				table.insert(fetchPromises, promise)
			end

			callNextPage()

			return Promise.all(fetchPromises)
		end)
	end
end