local CorePackages = game:GetService("CorePackages")

local Utils = CorePackages.AppTempCommon.LuaChat.Utils

local getPlaceIds = require(Utils.getFriendsActiveGamesPlaceIdsFromUsersPresence)
local receiveUsersPresence = require(Utils.receiveUsersPresence)

local ApiFetchGamesDataByPlaceIds = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchGamesDataByPlaceIds)
local UsersGetPresence = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.UsersGetPresence)

local FFlagLuaHomeGetFriendsPlayingGamesInfo = settings():GetFFlag("LuaHomeGetFriendsPlayingGamesInfo")

return function(networkImpl, userIds)
	return function(store)
		return UsersGetPresence(networkImpl, userIds):andThen(function(result)
			local userPresences = result.responseBody.userPresences
			receiveUsersPresence(userPresences, store)

			if FFlagLuaHomeGetFriendsPlayingGamesInfo then
				local placeIds = getPlaceIds(userPresences, store)

				store:dispatch(ApiFetchGamesDataByPlaceIds(networkImpl, placeIds))
			end
		end)
	end
end