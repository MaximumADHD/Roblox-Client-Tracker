local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local Requests = ShareGame.Http.Requests
local UsersGetFriendPage = require(Requests.UsersGetFriendPage)
local AddUser = require(ShareGame.Actions.AddUser)
local UserModel = require(ShareGame.Models.User)
local ApiFetchUsersData = require(ShareGame.Thunks.ApiFetchUsersData)

return function(networkImpl, page, thumbnailType)
	return function(store)
		return UsersGetFriendPage(networkImpl, page):andThen(function(result)
			local data = result.responseBody

			local userIds = {}
			for _, userData in pairs(data) do
				local newUser = UserModel.fromJsonData(userData)
				newUser.isFriend = true
				store:dispatch(AddUser(newUser))
				table.insert(userIds, newUser.id)
			end

			store:dispatch(ApiFetchUsersData(networkImpl, userIds, thumbnailType))

			return userIds
		end)
	end
end