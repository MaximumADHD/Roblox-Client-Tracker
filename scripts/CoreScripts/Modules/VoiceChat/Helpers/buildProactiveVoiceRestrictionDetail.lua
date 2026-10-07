local CorePackages = game:GetService("CorePackages")

local ModerationTypes = require(CorePackages.Workspace.Packages.ModerationCommon.Types)
local createVoiceRestrictionController =
	require(CorePackages.Workspace.Packages.VoiceChat.createVoiceRestrictionController)

type ModerationDetail = ModerationTypes.ModerationDetail
type VoiceSettings = createVoiceRestrictionController.VoiceSettings
type Options = {
	settings: VoiceSettings?,
	userId: number,
	now: number,
	format: (string, { [string]: any }?) -> string,
}

local ABUSE_VECTOR_KEY = "Feature.UniversalFeatureRestrictions.AbuseVector.LabelName.Voice"
local ABUSE_VECTOR_LOWERCASE_KEY = "Feature.UniversalFeatureRestrictions.AbuseVector.Lowercase.LabelName.Voice"
local BANNED_BODY_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogBody.Banned"
local BANNED_TITLE_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogTitle.Banned"
local NUDGE_BODY_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogBody.Nudge"
local NUDGE_TITLE_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Nudge"
local SUSPENDED_BODY_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogBody.Suspended"
local SUSPENDED_MINUTE_TITLE_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Suspended.Minute"
local SUSPENDED_MINUTES_TITLE_KEY = "Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Suspended.Minutes"

--[[
	Adapts voice settings to the ModerationDetail contract required by UFR,
	selecting the appropriate nudge, permanent-ban, or temporary-timeout presentation.
--]]
local function buildProactiveVoiceRestrictionDetail(options: Options): ModerationDetail
	local settings = options.settings
	local format = options.format

	local title
	local body
	local endDate = ""
	local punishmentType = ""

	if not settings then
		punishmentType = "nudge"
		body = format(NUDGE_BODY_KEY)
		title = format(NUDGE_TITLE_KEY, {
			abuseVector = format(ABUSE_VECTOR_LOWERCASE_KEY),
		})
	elseif not settings.bannedUntil then
		punishmentType = "ban"
		body = format(BANNED_BODY_KEY)
		title = format(BANNED_TITLE_KEY, {
			abuseVector = format(ABUSE_VECTOR_LOWERCASE_KEY),
		})
	else
		local remainingMinutes = (settings.bannedUntil.Seconds - options.now) / 60
		local roundedRemainingMinutes = math.max(1, math.ceil(remainingMinutes))

		punishmentType = "timeout"
		body = format(SUSPENDED_BODY_KEY)
		title = format(
			if roundedRemainingMinutes == 1 then SUSPENDED_MINUTE_TITLE_KEY else SUSPENDED_MINUTES_TITLE_KEY,
			{
				abuseVector = format(ABUSE_VECTOR_KEY),
				number = roundedRemainingMinutes,
			}
		)
		endDate = DateTime.fromUnixTimestamp(settings.bannedUntil.Seconds):ToIsoDate()
	end

	return {
		punishmentId = 0,
		punishedUserId = options.userId,
		interventionId = "",
		messageToUser = "",
		title = title,
		body = body,
		punishmentTypeDescription = punishmentType,
		acknowledgeable = false,
		-- Voice settings provide an expiry, not the original start or duration.
		beginDate = "",
		endDate = endDate,
		badUtterances = {},
		context = {},
		verificationCategory = "",
		consequenceTransparencyMessage = "",
		showAppealsProcessLink = false,
		isForeshadowingConsequenceEnabled = false,
		showUGCAvatarGuidelinesLink = false,
		labelTranslationKey = "",
	}
end

return buildProactiveVoiceRestrictionDetail
