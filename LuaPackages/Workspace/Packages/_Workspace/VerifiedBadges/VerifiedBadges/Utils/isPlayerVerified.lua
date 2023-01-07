local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local getFFlagOverridePlayerVerifiedBadge = require(VerifiedBadges.Flags.getFFlagOverridePlayerVerifiedBadge)
local getFStringWhitelistVerifiedUserId = require(VerifiedBadges.Flags.getFStringWhitelistVerifiedUserId)

export type Player = {
	DisplayName: string,
	Name: string,
	HasVerifiedBadge: boolean,
	UserId: number,
}

--[=[
	Returns whether the given player has the verified badge.

	Setting FFlagOverridePlayerVerifiedBadge to true will make this function
	always return true

	Setting FStringWhitelistVerifiedUserId to a user id will make this function
	always return true for that user id.

	@within VerifiedBadges
]=]
local function isPlayerVerified(player: Player)
	if getFFlagOverridePlayerVerifiedBadge() then
		return true
	end

	if tostring(player.UserId) == getFStringWhitelistVerifiedUserId() then
		return true
	end

	if player.HasVerifiedBadge ~= nil then
		return player.HasVerifiedBadge
	end

	return false
end

return isPlayerVerified
