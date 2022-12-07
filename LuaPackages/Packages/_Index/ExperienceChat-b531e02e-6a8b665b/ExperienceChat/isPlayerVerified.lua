local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local getFFlagOverridePlayerVerifiedBadge = require(ExperienceChat.Flags.getFFlagOverridePlayerVerifiedBadge)
local getFStringWhitelistVerifiedUserId = require(ExperienceChat.Flags.getFStringWhitelistVerifiedUserId)

local function isPlayerVerified(player: Player)
	if getFFlagOverridePlayerVerifiedBadge() then
		return true
	end

	if tostring(player.UserId) == getFStringWhitelistVerifiedUserId() then
		return true
	end

	return false
end

return isPlayerVerified
