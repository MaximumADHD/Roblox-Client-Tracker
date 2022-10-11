local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local constants = require(VerifiedBadges.constants)

--[=[
	Appends the Verified emoji to the end of the given string.

	@within VerifiedBadges
]=]
local function appendVerifiedBadge(inputString: string)
	return inputString .. constants.VERIFIED_EMOJI
end

return appendVerifiedBadge
