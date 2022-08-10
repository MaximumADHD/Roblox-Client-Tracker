local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getFFlagOverrideVerifiedBadgeExperiment = require(VerifiedBadges.Flags.getFFlagOverrideVerifiedBadgeExperiment)
local constants = require(VerifiedBadges.constants)

return function(IXPService: IXPService)
	--[=[
		Appends the Verified emoji to the end of the given string.

		@within VerifiedBadges
	]=]
	local function appendVerifiedBadge(inputString: string)
		local layer = IXPService:GetUserLayerVariables(getFStringVerifiedBadgeLayer())

		if layer and layer.verifiedBadgeEnabled or getFFlagOverrideVerifiedBadgeExperiment() then
			return inputString .. constants.VERIFIED_EMOJI
		else
			return inputString
		end
	end

	return appendVerifiedBadge
end
