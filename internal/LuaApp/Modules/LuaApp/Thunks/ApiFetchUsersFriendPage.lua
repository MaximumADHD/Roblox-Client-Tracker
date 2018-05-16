local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Requests = Modules.LuaApp.Http.Requests
local UsersGetFriendPage = require(Requests.UsersGetFriendPage)
local AddUser = require(Modules.LuaApp.Actions.AddUser)
local UserModel = require(Modules.LuaApp.Models.User)
local ApiFetchUsersData = require(Modules.LuaApp.Thunks.ApiFetchUsersData)

return function(networkImpl, page, thumbnailType)
	return function(store)
		return UsersGetFriendPage(networkImpl, page):andThen(function(result)
			local data = result.responseBody

			local userIds = {}
			for _, userData in pairs(data) do
				local newUser = UserModel.fromJsonData(userData)
				newUser.isFriend = true
				store:Dispatch(AddUser(newUser))
				table.insert(userIds, newUser.id)
			end

			store:Dispatch(ApiFetchUsersData(networkImpl, userIds, thumbnailType))

			return userIds
		end)
	end
end