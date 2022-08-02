--[[
	Takes in the layers supplied from IXPService to determine if the current
	client is enrolled in the Verified Badges experiment.

	Returns true if the user is enrolled in the experiment, false if they are in
	the control group, and nil if the experiment is not running.
]]

local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local getFFlagVerifiedBadgeIXPEnabled = require(VerifiedBadges.Flags.getFFlagVerifiedBadgeIXPEnabled)
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)

local function getExperimentValue(layers: { [string]: any }): boolean?
	local layer = getFStringVerifiedBadgeLayer()

	if getFFlagVerifiedBadgeIXPEnabled() then
		local verifiedBadgeLayer = layers[layer]

		if verifiedBadgeLayer then
			local verifiedBadgesEnabled = verifiedBadgeLayer.verifiedBadgesEnabled

			if verifiedBadgesEnabled ~= nil then
				return verifiedBadgesEnabled
			end
		end
	end

	return nil
end

return getExperimentValue
