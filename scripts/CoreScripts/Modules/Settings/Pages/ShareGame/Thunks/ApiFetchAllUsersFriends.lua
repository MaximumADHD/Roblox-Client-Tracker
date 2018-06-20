local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Promise = require(ShareGame.Promise)
local ApiFetchUsersFriendPage = require(ShareGame.Thunks.ApiFetchUsersFriendPage)
local ApiFetchUsersFriendCount = require(ShareGame.Thunks.ApiFetchUsersFriendCount)

return function(networkImpl, thumbnailType)
	return function(store)
		return store:dispatch(ApiFetchUsersFriendCount(networkImpl)):andThen(function(friendCount)
			local fetchPromises = {}

			local retrievedFriends = 0
			local page = 0
			local function callNextPage()
				page = page + 1
				local fetchPage = ApiFetchUsersFriendPage(networkImpl, page, thumbnailType)
				local promise = store:dispatch(fetchPage):andThen(function(userIds)
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