local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local constants = require(VerifiedBadges.constants)

return function(inputString: string)
	return inputString .. " " .. constants.PREMIUM_EMOJI
end
