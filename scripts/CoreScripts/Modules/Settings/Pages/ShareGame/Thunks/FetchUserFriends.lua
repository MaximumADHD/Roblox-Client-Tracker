local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame

local RetrievalStatus = require(AppTempCommon.LuaApp.Enum.RetrievalStatus)
local ApiFetchUsersFriends = require(ShareGame.Thunks.ApiFetchUsersFriends)

local Constants = require(ShareGame.Constants)

return function(requestImpl, userId)
	return function(store)
		local state = store:getState()

		local friendsRetrievalStatus = state.Friends.retrievalStatus[userId]
		if friendsRetrievalStatus ~= RetrievalStatus.Fetching then
			store:dispatch(ApiFetchUsersFriends(requestImpl, userId, Constants.ThumbnailRequest.InviteToGame))
		end
	end
end