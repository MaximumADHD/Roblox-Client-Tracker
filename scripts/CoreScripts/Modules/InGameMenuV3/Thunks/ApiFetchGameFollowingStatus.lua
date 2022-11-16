local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local InGameMenu = script.Parent.Parent
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)
local Logging = require(CorePackages.Logging)
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch
local FollowingsGetStatus = require(InGameMenu.Network.Requests.Games.FollowingsGetStatus)
local SetGameFollowingStatus = require(InGameMenu.Actions.SetGameFollowingStatus)

return function(networkImpl, universeId)
	if type(universeId) ~= "string" then
		error("ApiFetchGameFollowingStatus thunk expects universeId to be a string")
	end

	return PerformFetch.Single("ApiFetchGameFollowingStatus"..universeId, function(store)
		local userId = tostring((Players.LocalPlayer :: Player).UserId)
		return FollowingsGetStatus(networkImpl, userId, universeId):andThen(
			function(result)
				local data = result.responseBody

				if data ~= nil and data.CanFollow ~= nil and data.IsFollowing ~= nil then
                    store:dispatch(SetGameFollowingStatus(universeId, data.CanFollow, data.IsFollowing))
					return Promise.resolve(result)
				else
					Logging.warn("Response from FollowingsGetStatus is malformed!")
					return Promise.reject({HttpError = Enum.HttpError.OK})
				end
			end)
	end)
end
