local CorePackages = game:GetService("CorePackages")
local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local ApiFetchUsersPresences = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchUsersPresences)
local ApiFetchUsersThumbnail = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchUsersThumbnail)
local ApiFetchUsersFriendCount = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchUsersFriendCount)
local UsersGetFriends = require(Requests.UsersGetFriends)

local AddUsers = require(CorePackages.AppTempCommon.LuaApp.Actions.AddUsers)
local FetchUserFriendsStarted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsStarted)
local FetchUserFriendsFailed = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsFailed)
local FetchUserFriendsCompleted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsCompleted)
local UserModel = require(CorePackages.AppTempCommon.LuaApp.Models.User)
local UpdateUsers = require(CorePackages.AppTempCommon.LuaApp.Thunks.UpdateUsers)

local LuaAppRemoveGetFriendshipCountApiCalls = settings():GetFFlag("LuaAppRemoveGetFriendshipCountApiCalls")
local homePageDataFetchRefactor = settings():GetFFlag('LuaHomePageDataFetchRefactor')

return function(requestImpl, userId, thumbnailRequest)
	return function(store)
		store:dispatch(FetchUserFriendsStarted(userId))
		if not LuaAppRemoveGetFriendshipCountApiCalls then
			store:dispatch(ApiFetchUsersFriendCount(requestImpl))
		end
		return UsersGetFriends(requestImpl, userId):andThen(function(response)
			local responseBody = response.responseBody

			local userIds = {}
			local newUsers = {}
			for _, userData in pairs(responseBody.data) do
				local id = tostring(userData.id)
				local newUser = UserModel.fromData(id, userData.name, true)

				table.insert(userIds, id)
				newUsers[newUser.id] = newUser
			end
			if LuaAppRemoveGetFriendshipCountApiCalls then
				store:dispatch(UpdateUsers(newUsers))
			else
				store:dispatch(AddUsers(newUsers))
			end
			return userIds
		end):andThen(function(userIds)
			-- Asynchronously fetch friend thumbnails so we don't block display of UI
			store:dispatch(ApiFetchUsersThumbnail(requestImpl, userIds, thumbnailRequest))
			return store:dispatch(ApiFetchUsersPresences(requestImpl, userIds))
		end):andThen(
			function(result)
				store:dispatch(FetchUserFriendsCompleted(userId))
				if homePageDataFetchRefactor then
					return Promise.resolve(result)
				end
			end,
			function(response)
				store:dispatch(FetchUserFriendsFailed(userId, response))
				if homePageDataFetchRefactor then
					return Promise.reject(response)
				end
			end
		)
	end
end
