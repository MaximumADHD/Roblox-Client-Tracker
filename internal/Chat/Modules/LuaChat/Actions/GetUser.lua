local Modules = script.Parent.Parent

local UserModel = require(Modules.Models.User)
local WebApi = require(Modules.WebApi)

local AddUser = require(Modules.Actions.AddUser)
local FetchingUser = require(Modules.Actions.FetchingUser)

return function(userId)
	return function(store)
		local oldUser = store:GetState().Users[userId]
		if not oldUser or not oldUser.isFetching then
			store:Dispatch(FetchingUser(userId, true))

			spawn(function()
				local status, result = WebApi.GetUser(userId)
				store:Dispatch(FetchingUser(userId, false))
				if status ~= WebApi.Status.OK then

					warn("WebApi failure in GetUser")
					return
				end

				store:Dispatch(AddUser(UserModel.fromData(result.Id, result.Username, false)))
			end)
		end
	end
end