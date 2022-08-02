local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local getFFlagVerifiedBadgeIXPEnabled = require(VerifiedBadges.Flags.getFFlagVerifiedBadgeIXPEnabled)
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getFFlagOverrideVerifiedBadgeExperiment = require(VerifiedBadges.Flags.getFFlagOverrideVerifiedBadgeExperiment)
local constants = require(VerifiedBadges.constants)

return function(IXPService: IXPService)
	local function appendVerifiedBadge(inputString: string)
		if getFFlagVerifiedBadgeIXPEnabled() or getFFlagOverrideVerifiedBadgeExperiment() then
			local layer = IXPService:GetUserLayerVariables(getFStringVerifiedBadgeLayer())

			if layer.verifiedBadgeEnabled or getFFlagOverrideVerifiedBadgeExperiment() then
				return inputString .. " " .. constants.VERIFIED_EMOJI
			end
		end

		return inputString
	end

	return appendVerifiedBadge
end
