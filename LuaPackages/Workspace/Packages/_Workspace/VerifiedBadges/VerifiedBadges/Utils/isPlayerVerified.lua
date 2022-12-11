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
	Returns whether a given creator is a verified creator,
	accounting for creatorType.

	Uses the piece of rodux state populated by GamesApi,
	and universeId being passed as props.

	@within VerifiedBadges
]=]
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
