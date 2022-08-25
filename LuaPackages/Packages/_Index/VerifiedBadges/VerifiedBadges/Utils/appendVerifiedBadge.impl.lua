local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getFFlagOverrideVerifiedBadgeExperiment = require(VerifiedBadges.Flags.getFFlagOverrideVerifiedBadgeExperiment)
local constants = require(VerifiedBadges.constants)
local types = require(VerifiedBadges.types)

return function(IXPService: IXPService)
	--[=[
		Appends the Verified emoji to the end of the given string.

		@within VerifiedBadges
	]=]
	local function appendVerifiedBadge(inputString: string)
		local success, result = pcall(function()
			return IXPService:GetUserLayerVariables(getFStringVerifiedBadgeLayer())
		end)

		local layer: types.VerifiedBadgeLayer = if success then result else {}

		if layer and layer.verifiedBadgesEnabled or getFFlagOverrideVerifiedBadgeExperiment() then
			return inputString .. constants.VERIFIED_EMOJI
		else
			return inputString
		end
	end

	return appendVerifiedBadge
end
