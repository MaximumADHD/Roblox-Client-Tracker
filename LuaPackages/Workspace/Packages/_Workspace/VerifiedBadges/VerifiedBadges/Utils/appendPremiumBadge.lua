local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local constants = require(VerifiedBadges.constants)

--[=[
	Appends the Premium emoji to the end of the given string.

	@within VerifiedBadges
]=]
local function appendPremiumBadge(inputString: string)
	return inputString .. constants.PREMIUM_EMOJI
end

return appendPremiumBadge
