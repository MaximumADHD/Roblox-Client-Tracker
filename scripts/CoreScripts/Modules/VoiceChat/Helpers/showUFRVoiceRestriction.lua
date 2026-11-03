local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local createVoiceRestrictionController =
	require(CorePackages.Workspace.Packages.VoiceChat.createVoiceRestrictionController)
local UFR = require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions)

type VoiceSettings = createVoiceRestrictionController.VoiceSettings

type Props = {
	manager: any,
	settings: VoiceSettings,
	onAcknowledgementSuccess: (() -> ())?,
}

--[[
	Presents a safety feature restriction through fetched UFR, which owns acknowledgement via
	PostDismissIntervention, while bridging its lifecycle callbacks to existing voice ban analytics.
]]
local function showUFRVoiceRestriction(props: Props)
	local localPlayer = Players.LocalPlayer
	if not localPlayer then
		return
	end
	local userId = localPlayer.UserId

	local manager = props.manager
	local analytics = manager.Analytics
	local banReason = props.settings.banReason
	local previousSessionId = if manager.service then manager.previousSessionId else ""

	local shown = false
	local appealed = false
	local dismissed = false

	local function logBanDialogEvent(event: string)
		analytics:reportBanMessageEvent(event)
		analytics:reportBanMessageEventV2(event, banReason, userId, previousSessionId)
	end

	UFR.showFeatureRestriction(UFR.AbuseVector.Voice, {
		onShown = function()
			if not shown then
				shown = true
				logBanDialogEvent("Shown")
			end
		end,
		onAppeal = function()
			appealed = true
			logBanDialogEvent("Denied")
		end,
		onDismiss = function()
			if dismissed then
				return
			end
			dismissed = true
			if not appealed then
				logBanDialogEvent("Acknowledged")
			end
		end,
		onAcknowledgementSuccess = props.onAcknowledgementSuccess,
	})
end

return showUFRVoiceRestriction
