local CorePackages = game:GetService("CorePackages")

local ShareGame = game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame
local Requests = require(CorePackages.Workspace.Packages.Http).Requests

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local ApiFetchUsersPresences = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchUsersPresences)
local ApiFetchUsersThumbnail = require(ShareGame.Thunks.ApiFetchUsersThumbnail)
local UsersGetFriends = Requests.UsersGetFriends

local FetchUserFriendsStarted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsStarted)
local FetchUserFriendsFailed = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsFailed)
local FetchUserFriendsCompleted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsCompleted)
local UserModel = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local UpdateUsers = require(CorePackages.AppTempCommon.LuaApp.Thunks.UpdateUsers)

return function(requestImpl, userId, thumbnailRequest)
	return function(store)
		store:dispatch(FetchUserFriendsStarted(userId))

		return UsersGetFriends(requestImpl, userId):andThen(function(response)
			local responseBody = response.responseBody

			local userIds = {}
			local newUsers = {}
			for _, userData in pairs(responseBody.data) do
				local id = tostring(userData.id)
				userData.isFriend = true
				local newUser = UserModel.fromDataTable(userData)

				table.insert(userIds, id)
				newUsers[newUser.id] = newUser
			end
			store:dispatch(UpdateUsers(newUsers))

			return userIds
		end):andThen(function(userIds)
			-- Asynchronously fetch friend thumbnails so we don't block display of UI
			store:dispatch(ApiFetchUsersThumbnail(requestImpl, userIds, thumbnailRequest))

			return store:dispatch(ApiFetchUsersPresences(requestImpl, userIds))
		end):andThen(
			function(result)
				store:dispatch(FetchUserFriendsCompleted(userId))

				return Promise.resolve(result)
			end,
			function(response)
				store:dispatch(FetchUserFriendsFailed(userId, response))
				return Promise.reject(response)
			end
		)
	end
end
