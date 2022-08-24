local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local getFFlagOverrideVerifiedBadgeExperiment = require(VerifiedBadges.Flags.getFFlagOverrideVerifiedBadgeExperiment)
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local types = require(VerifiedBadges.types)

--[=[
	Takes in the layers supplied from IXPService to determine if the current
	client is enrolled in the Verified Badges experiment.

	:::caution

	If `VerifiedBadgeIXPEnabled` is `false` then this function will always
	return `nil`.

	:::

	Returns `true` if the user is enrolled in the experiment, `false` if they
	are in the control group, and `nil` if the experiment is not running.

	Usage:

	```lua
	local React = require(Packages.React)
	local RoactAppExperiment = require(Packages.RoactAppExperiment)

	local function Foo()
	    local isEnrolled = RoactAppExperiment.useUserExperiment({
	        "Layer.Name.Here"
	    }, getExperimentValue)

	    return isEnrolled and React.createElement("TextLabel", {
	        Text = "You're in the experiment!"
	    })
	end
	```

	@within VerifiedBadges
]=]
local function getExperimentValue(layers: { [string]: any }): boolean?
	local layer = getFStringVerifiedBadgeLayer()

	if getFFlagOverrideVerifiedBadgeExperiment() then
		return true
	else
		local verifiedBadgeLayer: types.VerifiedBadgeLayer = layers[layer]

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
