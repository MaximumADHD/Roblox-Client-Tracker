local CorePackages = game:GetService("CorePackages")
local Requests = require(CorePackages.Workspace.Packages.Http).Requests

local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local ApiFetchUsersPresences = require(CorePackages.Workspace.Packages.UserLib).Thunks.ApiFetchUsersPresences
local UsersGetFriends = Requests.UsersGetFriends

local FetchUserFriendsStarted = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsStarted
local FetchUserFriendsFailed = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsFailed
local FetchUserFriendsCompleted = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsCompleted
local UserModel = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local UpdateUsers = require(CorePackages.Workspace.Packages.UserLib).Thunks.UpdateUsers

return function(requestImpl, userId, thumbnailRequest, userSort): any
	return function(store)
		store:dispatch(FetchUserFriendsStarted(userId))

		local fetchedUserIds = {}
		return UsersGetFriends(requestImpl, userId, userSort)
			:andThen(function(response)
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
			end)
			:andThen(function(userIds)
				return store:dispatch(ApiFetchUsersPresences(requestImpl, userIds))
			end)
			:andThen(function(result)
				store:dispatch(FetchUserFriendsCompleted(userId))

				return Promise.resolve(fetchedUserIds)
			end, function(response)
				store:dispatch(FetchUserFriendsFailed(userId, response))
				return Promise.reject(response)
			end)
	end
end
