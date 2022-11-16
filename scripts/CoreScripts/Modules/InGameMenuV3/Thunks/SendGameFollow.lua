local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local InGameMenu = script.Parent.Parent
local Promise = require(CorePackages.AppTempCommon.LuaApp.Promise)

local FollowingsPostFollowRequest = require(InGameMenu.Network.Requests.Games.FollowingsPostFollow)
local FollowingsDeleteFollowRequest = require(InGameMenu.Network.Requests.Games.FollowingsDeleteFollow)
local SetGameFollow = require(InGameMenu.Actions.SetGameFollow)
local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local function SendGameFollow(networkImpl, universeId, isFollowed)
	if type(universeId) ~= "string" then
		error("SendGameFollow thunk expects universeId to be a string")
	end
	if type(isFollowed) ~= "boolean" then
		error("SendGameFollow thunk expects isFollowed to be a boolean")
	end

	return PerformFetch.Single("SendGameFollow"..universeId, function(store)
		local userId = tostring((Players.LocalPlayer :: Player).UserId)

		if isFollowed then
			return FollowingsPostFollowRequest(networkImpl, userId, universeId):andThen(
				function(result)
					local curIsFollowed = store:getState().gameInfo.isFollowed
					if curIsFollowed then
						return Promise.resolve(result)
					else
						return SendGameFollow(networkImpl, universeId, false)
					end
				end,
				function(err)
					store:dispatch(SetGameFollow(universeId, false))
					return Promise.reject(err)
				end
			)
		else
			return FollowingsDeleteFollowRequest(networkImpl, userId, universeId):andThen(
				function(result)
					local curIsFollowed = store:getState().gameInfo.isFollowed
					if not curIsFollowed then
						return Promise.resolve(result)
					else
						return SendGameFollow(networkImpl, universeId, true)
					end
				end,
				function(err)
					store:dispatch(SetGameFollow(universeId, true))
					return Promise.reject(err)
				end
			)
		end
	end)
end

return SendGameFollow
