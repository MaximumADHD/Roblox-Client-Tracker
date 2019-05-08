local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame

local ApiSendGameInvite = require(AppTempCommon.LuaApp.Thunks.ApiSendGameInvite)
local ApiFetchPlaceInfos = require(AppTempCommon.LuaApp.Thunks.ApiFetchPlaceInfos)
local Promise = require(AppTempCommon.LuaApp.Promise)

local ReceivedUserInviteStatus = require(ShareGame.Actions.ReceivedUserInviteStatus)
local Constants = require(ShareGame.Constants)

local InviteStatus = Constants.InviteStatus

local FFlagLuaInviteFailOnZeroPlaceId = settings():GetFFlag("LuaInviteFailOnZeroPlaceIdV384")

local EMPTY_PLACE_ID = "0"

return function(requestImpl, userId, placeId)
	return function(store)
		if FFlagLuaInviteFailOnZeroPlaceId then
			if placeId == EMPTY_PLACE_ID then
				warn("Game Invite failed to send. Cannot send invite to unpublished Place.")
				store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Failed))
				return Promise.reject()
			end
		end

		local latestState = store:getState()

		return Promise.new(function(resolve, reject)
			-- Check that we haven't already invited this user
			if latestState.Invites[tostring(userId)] == InviteStatus.Pending then
				reject()
			else
				resolve()
			end
		end):andThen(function()
			local maybePlaceInfo = latestState.PlaceInfos[placeId]

			return Promise.new(function(resolve, reject)
				-- Log that we've tried inviting this user
				store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Pending))

				if maybePlaceInfo then
					resolve(maybePlaceInfo)
				else
					store:dispatch(ApiFetchPlaceInfos(requestImpl, {placeId})):andThen(function(placeInfos)
						if placeInfos[1] ~= nil then
							resolve(placeInfos[1])
						else
							reject()
						end
					end, function()
						reject()
					end)
				end
			end):andThen(function(placeInfo)
				return store:dispatch(ApiSendGameInvite(requestImpl, userId, placeInfo))
			end):andThen(function(results)
				store:dispatch(ReceivedUserInviteStatus(userId, results.resultType))
				return results
			end, function()
				store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Failed))
			end)
		end)
	end
end