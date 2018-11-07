local CorePackages = game:GetService("CorePackages")

local LuaApp = CorePackages.AppTempCommon.LuaApp

local AppFlags = CorePackages.AppTempCommon.LuaApp.Flags
local ChatUtils = CorePackages.AppTempCommon.LuaChat.Utils

local getPlaceIds = require(ChatUtils.getFriendsActiveGamesPlaceIdsFromUsersPresence)
local receiveUsersPresence = require(ChatUtils.receiveUsersPresence)

local ApiFetchGamesDataByPlaceIds = require(LuaApp.Thunks.ApiFetchGamesDataByPlaceIds)
local UsersGetPresence = require(LuaApp.Http.Requests.UsersGetPresence)

local FFlagFetchGamesDataWhenFetchingUserPresences = require(AppFlags.ShouldFetchGamesDataWhenFetchingUserPresences)

return function(networkImpl, userIds)
	return function(store)
		return UsersGetPresence(networkImpl, userIds):andThen(function(result)
			local userPresences = result.responseBody.userPresences
			receiveUsersPresence(userPresences, store)

			if FFlagFetchGamesDataWhenFetchingUserPresences() then
				local placeIds = getPlaceIds(userPresences, store)

				store:dispatch(ApiFetchGamesDataByPlaceIds(networkImpl, placeIds))
			end
		end)
	end
end