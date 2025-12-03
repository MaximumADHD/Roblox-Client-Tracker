local CorePackages = game:GetService("CorePackages")

local Requests = require(CorePackages.Workspace.Packages.Http).Requests

local Promise = require(CorePackages.Packages.Promise)
local ApiFetchUsersPresences = require(CorePackages.Workspace.Packages.UserLib).Thunks.ApiFetchUsersPresences
local DEPRECATED_UsersGetFriends = Requests.DEPRECATED_UsersGetFriends
local FetchUserFriendsStarted = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsStarted
local FetchUserFriendsFailed = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsFailed
local FetchUserFriendsCompleted = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsCompleted
local UserModel = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local UpdateUsers = require(CorePackages.Workspace.Packages.UserLib).Thunks.UpdateUsers

local GetFFlagInviteListRerank = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInviteListRerank

return function(requestImpl, userId, thumbnailRequest, userSort)
	return function(store)
		store:dispatch(FetchUserFriendsStarted(userId))

		return DEPRECATED_UsersGetFriends(requestImpl, userId, userSort)
			:andThen(function(response)
				local responseBody = response.responseBody

				local userIds = {}
				local newUsers = {}
				for rank, userData in pairs(responseBody.data) do
					local id = tostring(userData.id)
					userData.isFriend = true

					if GetFFlagInviteListRerank() then
						userData.friendRank = rank
					end

					local newUser = UserModel.fromDataTable(userData)

					table.insert(userIds, id)
					newUsers[newUser.id] = newUser
				end
				store:dispatch(UpdateUsers(newUsers))

				return userIds
			end)
			:andThen(function(userIds)
				return store:dispatch(ApiFetchUsersPresences(requestImpl, userIds))
			end)
			:andThen(function(result)
				store:dispatch(FetchUserFriendsCompleted(userId))

				return Promise.resolve(result)
			end, function(response)
				store:dispatch(FetchUserFriendsFailed(userId, response))
				return Promise.reject(response)
			end)
	end
end
