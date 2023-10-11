local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local getFFlagOverridePlayerVerifiedBadge = require(ExperienceChat.Flags.getFFlagOverridePlayerVerifiedBadge)
local getFStringWhitelistVerifiedUserId = require(ExperienceChat.Flags.getFStringWhitelistVerifiedUserId)

--[=[
	Returns whether the given player has the verified badge.
	
	Setting FFlagOverridePlayerVerifiedBadge to true will make this function
	always return true.

	Setting FStringWhitelistVerifiedUserId to a user id will make this function
	always return true for that user id.
]=]

local function isPlayerVerified(player: Player)
	if getFFlagOverridePlayerVerifiedBadge() then
		return true
	end

	if tostring(player.UserId) == getFStringWhitelistVerifiedUserId() then
		return true
	end

	return player.HasVerifiedBadge
end

return isPlayerVerified
