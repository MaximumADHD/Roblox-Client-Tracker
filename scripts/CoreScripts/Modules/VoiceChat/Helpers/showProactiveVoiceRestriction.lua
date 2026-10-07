local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")

local buildProactiveVoiceRestrictionDetail = require(script.Parent.buildProactiveVoiceRestrictionDetail)
local createVoiceRestrictionController =
	require(CorePackages.Workspace.Packages.VoiceChat.createVoiceRestrictionController)
local getRestrictionType = require(script.Parent.getRestrictionType)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local UFR = require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions)
local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)

local localization = Localization.new(LocalizationService.RobloxLocaleId)

type VoiceSettings = createVoiceRestrictionController.VoiceSettings
type Origin = createVoiceRestrictionController.Origin

type Props = {
	manager: any,
	settings: VoiceSettings?,
	origin: Origin,
	isCurrent: () -> boolean,
}

local function format(key: string, arguments: { [string]: any }?): string
	return localization:Format(key, arguments)
end

--[[
	Presents voice restrictions through direct UFR while bridging its lifecycle callbacks
	to existing voice moderation analytics and temporary-ban acknowledgement behavior.
]]
local function showProactiveVoiceRestriction(props: Props)
	local localPlayer = Players.LocalPlayer
	if not localPlayer then
		return
	end
	local userId = localPlayer.UserId

	local manager = props.manager
	local settings = props.settings
	local origin = props.origin
	local isCurrent = props.isCurrent

	local previousSessionId = if manager.service then manager.previousSessionId else ""
	local analytics = manager.Analytics

	local restrictionType = getRestrictionType(settings)
	local banReason = if settings then settings.banReason else nil

	local nudgeUserId, nudgeSessionId
	if not settings then
		nudgeUserId, nudgeSessionId = manager:GetNudgeAnalyticsData()
	end

	local detail = buildProactiveVoiceRestrictionDetail({
		settings = settings,
		userId = userId,
		now = DateTime.now().UnixTimestamp,
		format = format,
	})

	local dismissed = false
	local appealed = false
	local shown = false

	local function reportBan(event: string)
		analytics:reportBanMessageEvent(event)
		analytics:reportBanMessageEventV2(event, banReason, userId, previousSessionId)
	end

	local function onShown()
		if not shown then
			shown = true
			if restrictionType ~= "Nudge" then
				reportBan("Shown")
			end
		end
	end

	local function onAppeal()
		appealed = true
		if restrictionType == "Nudge" then
			analytics:reportDeniedNudge(nudgeUserId, nudgeSessionId)
		else
			reportBan("Denied")
		end
	end

	local function onDismiss()
		if dismissed then
			return
		end

		dismissed = true

		local isTemporary = restrictionType == "TemporaryBan" or restrictionType == "NudgeBan"
		if origin ~= "mic" and isTemporary and isCurrent() then
			VoiceChat.PostInformedOfBan(function(url, method, body)
				return manager:PostRequest(url, method, body)
			end, true)
		end

		if restrictionType == "Nudge" then
			analytics:reportClosedNudge(nudgeUserId, nudgeSessionId)
			if not appealed then
				analytics:reportAcknowledgedNudge(nudgeUserId, nudgeSessionId)
			end
		elseif not appealed then
			reportBan(if restrictionType == "NudgeBan" then "Understood" else "Acknowledged")
		end
	end

	UFR.showFeatureRestrictionDirect(UFR.AbuseVector.Voice, detail, {
		onShown = onShown,
		onDismiss = onDismiss,
		onAppeal = if restrictionType == "Nudge" or restrictionType == "NudgeBan" then onAppeal else nil,
	})
end

return showProactiveVoiceRestriction
