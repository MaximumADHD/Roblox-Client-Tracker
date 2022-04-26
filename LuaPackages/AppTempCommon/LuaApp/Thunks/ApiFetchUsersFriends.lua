local CorePackages = game:GetService("CorePackages")
local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local ApiFetchUsersPresences = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchUsersPresences)
local ApiFetchUsersThumbnail = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchUsersThumbnail)
local UsersGetFriends = require(Requests.UsersGetFriends)

local FetchUserFriendsStarted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsStarted)
local FetchUserFriendsFailed = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsFailed)
local FetchUserFriendsCompleted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsCompleted)
local UserModel = require(CorePackages.AppTempCommon.LuaApp.Models.User)
local UpdateUsers = require(CorePackages.AppTempCommon.LuaApp.Thunks.UpdateUsers)

return function(requestImpl, userId, thumbnailRequest, userSort)
	return function(store)
		store:dispatch(FetchUserFriendsStarted(userId))

		local fetchedUserIds = {}
		return UsersGetFriends(requestImpl, userId, userSort):andThen(function(response)
			local responseBody = response.responseBody
			local newUsers = {}
			for rank, userData in pairs(responseBody.data) do
				local id = tostring(userData.id)

				userData.isFriend = true
				userData.friendRank = rank
				local newUser = UserModel.fromDataTable(userData)

				table.insert(fetchedUserIds, id)
				newUsers[newUser.id] = newUser
			end
			store:dispatch(UpdateUsers(newUsers))

			return fetchedUserIds
		end):andThen(function(userIds)
			-- Asynchronously fetch friend thumbnails so we don't block display of UI
			store:dispatch(ApiFetchUsersThumbnail.Fetch(requestImpl, userIds, thumbnailRequest))

			return store:dispatch(ApiFetchUsersPresences(requestImpl, userIds))
		end):andThen(
			function(result)
				store:dispatch(FetchUserFriendsCompleted(userId))

				return Promise.resolve(fetchedUserIds)
			end,
			function(response)
				store:dispatch(FetchUserFriendsFailed(userId, response))
				return Promise.reject(response)
			end
		)
	end
end
