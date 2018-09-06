local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(AppTempCommon.Common.Immutable)
local ReceivedUserInviteStatus = require(ShareGame.Actions.ReceivedUserInviteStatus)
local StoppedToastTimer = require(ShareGame.Actions.StoppedToastTimer)

local Constants = require(ShareGame.Constants)
local InviteStatus = Constants.InviteStatus

return function(state, action)
	state = state or {
		moderated = {},
	}

	if action.type == ReceivedUserInviteStatus.name then
		local inviteStatus = action.inviteStatus
		if inviteStatus == InviteStatus.Moderated then
			local moderationModel = {
				timeStamp = tick(),
				id = action.userId,
				subjectType = "user",
			}

			state = Immutable.JoinDictionaries(state, {
				moderated = Immutable.JoinDictionaries(
					state.moderated, Immutable.Append(state.moderated, moderationModel)
				),
			})
		end

	elseif action.type == StoppedToastTimer.name then
		state = Immutable.JoinDictionaries(state, {
			moderated = {},
		})
	end

	return state
end