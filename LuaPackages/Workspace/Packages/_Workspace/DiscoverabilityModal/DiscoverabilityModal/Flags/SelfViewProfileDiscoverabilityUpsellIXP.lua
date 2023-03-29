game:DefineFastFlag("SelfViewProfileDiscoverabilityUpsellIXPSetupEnabled_v1", false)
game:DefineFastFlag("SelfViewProfileDiscoverabilityUpsellEnabledForAll", false)
game:DefineFastFlag("SelfViewProfileDiscoverabilityUpsellIXPEnabled", false)
game:DefineFastInt("SelfViewProfileDiscoverabilityUpsellRolloutEnabled", 0)

local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local dependencies = require(DiscoverabilityModal.dependencies)

local rolloutByApplicationId = dependencies.rolloutByApplicationId
local getFStringSocialProfileLayer = dependencies.getFStringSocialProfileLayer

local rolloutPercent = function()
	return game:GetFastInt("SelfViewProfileDiscoverabilityUpsellRolloutEnabled")
end

local function selfViewProfileDiscoverabilityUpsellIXPSetupEnabled()
	return game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellIXPSetupEnabled_v1")
end

local function selfViewProfileDiscoverabilityUpsellRolloutEnabled()
	return rolloutByApplicationId(rolloutPercent)()
end

local function selfViewProfileDiscoverabilityUpsellExperimentEnabled()
	return game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellIXPEnabled")
end

local function selfViewProfileDiscoverabilityUpsellEnabledForAll()
	return game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellEnabledForAll")
end

return {
	SetupEnabled = selfViewProfileDiscoverabilityUpsellIXPSetupEnabled,
	experimentOrRolloutEnabled = function(layers)
		if selfViewProfileDiscoverabilityUpsellIXPSetupEnabled() then
			local socialProfile = getFStringSocialProfileLayer()
			local socialProfileLayer = layers[socialProfile] or { show_discoverability_upsell_profile_view = "False" }

			return (
				selfViewProfileDiscoverabilityUpsellExperimentEnabled()
				and socialProfileLayer.show_discoverability_upsell_profile_view == "True"
			)
				or selfViewProfileDiscoverabilityUpsellRolloutEnabled()
				or selfViewProfileDiscoverabilityUpsellEnabledForAll()
		else
			return false
		end
	end,
}
