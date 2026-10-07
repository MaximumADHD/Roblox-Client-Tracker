local CorePackages = game:GetService("CorePackages")

local createVoiceRestrictionController =
	require(CorePackages.Workspace.Packages.VoiceChat.createVoiceRestrictionController)
local VoiceConstants = require(script.Parent.Parent.Constants)

type VoiceSettings = createVoiceRestrictionController.VoiceSettings

export type NudgeType = "Nudge" | "NudgeBan" | "TemporaryBan" | "PermanentBan"

-- Nudges arrive without voice settings; bans without an expiry are permanent.
local function getRestrictionType(settings: VoiceSettings?): NudgeType
	if not settings then
		return "Nudge"
	elseif not settings.bannedUntil then
		return "PermanentBan"
	elseif settings.banReason == VoiceConstants.BAN_REASON.NUDGE_V3 then
		return "NudgeBan"
	end

	return "TemporaryBan"
end

return getRestrictionType
