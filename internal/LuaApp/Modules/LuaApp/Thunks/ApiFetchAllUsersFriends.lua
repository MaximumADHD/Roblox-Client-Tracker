local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Promise = require(Modules.LuaApp.Promise)
local ApiFetchUsersFriendPage = require(Modules.LuaApp.Thunks.ApiFetchUsersFriendPage)
local ApiFetchUsersFriendCount = require(Modules.LuaApp.Thunks.ApiFetchUsersFriendCount)

return function(networkImpl)
	return function(store)
		return Promise.new(function()
			store:Dispatch(ApiFetchUsersFriendCount(networkImpl)):andThen(function(friendCount)

				local retrievedFriends = 0
				local page = 0
				local function callNextPage()
					page = page + 1
					store:Dispatch(ApiFetchUsersFriendPage(networkImpl, page)):andThen(function(userIds)
						retrievedFriends = retrievedFriends + #userIds
						if retrievedFriends < friendCount and #userIds > 0 then
							callNextPage()
						end
					end)
				end

				callNextPage()
			end)
		end)
	end
end