--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui

local Constants = require(root.Components.Constants)
local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)

local FFlagAddPreselectedAbuseTypeAnalytics =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAddPreselectedAbuseTypeAnalytics

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
		if FFlagAddPreselectedAbuseTypeAnalytics then
			analyticsDispatch({
				type = Constants.AnalyticsActions.SetPreselectedAbuseSelection,
				selection = Constants.AbuseMethods.VoiceChat,
			})
		end
	elseif TnSIXPWrapper.getReportAnythingAvatarEnabled() then
		dispatchUIStates({
			type = Constants.PlayerMenuActions.UpdateMethodOfAbuse,
			methodOfAbuse = Constants.AbuseMethods.TextChat,
		})
		analyticsDispatch({
			type = Constants.AnalyticsActions.SetTypeOfAbuseSelection,
			selection = Constants.AbuseMethods.TextChat,
		})
		if FFlagAddPreselectedAbuseTypeAnalytics then
			analyticsDispatch({
				type = Constants.AnalyticsActions.SetPreselectedAbuseSelection,
				selection = Constants.AbuseMethods.TextChat,
			})
		end
	elseif FFlagAddPreselectedAbuseTypeAnalytics then
		analyticsDispatch({
			type = Constants.AnalyticsActions.SetPreselectedAbuseSelection,
			selection = "None",
		})
	end
	dispatchUIStates({
		type = Constants.PlayerMenuActions.SetPreselectedPlayer,
		player = player,
	})
end

return handlePreselectedPlayer
