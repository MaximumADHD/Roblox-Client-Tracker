--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui

local Constants = require(root.Components.Constants)
local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local playerUsedVoice = function(player: Player)
	local voiceData = VoiceChatServiceManager:getRecentUsersInteractionData()
	local userId = tostring(player.UserId)
	return voiceData[userId] ~= nil
end
function handlePreselectedPlayer(
	player: Player,
	voiceChatEnabled: boolean,
	dispatchUIStates: (any) -> (),
	analyticsDispatch: (any) -> ()
)
	if voiceChatEnabled and playerUsedVoice(player) then
		dispatchUIStates({
			type = Constants.PlayerMenuActions.UpdateMethodOfAbuse,
			methodOfAbuse = Constants.AbuseMethods.VoiceChat,
		})
		analyticsDispatch({
			type = Constants.AnalyticsActions.SetTypeOfAbuseSelection,
			selection = Constants.AbuseMethods.VoiceChat,
		})
	elseif TnSIXPWrapper.getReportAnythingAvatarEnabled() then
		dispatchUIStates({
			type = Constants.PlayerMenuActions.UpdateMethodOfAbuse,
			methodOfAbuse = Constants.AbuseMethods.TextChat,
		})
		analyticsDispatch({
			type = Constants.AnalyticsActions.SetTypeOfAbuseSelection,
			selection = Constants.AbuseMethods.TextChat,
		})
	end
	dispatchUIStates({
		type = Constants.PlayerMenuActions.SetPreselectedPlayer,
		player = player,
	})
end

return handlePreselectedPlayer
