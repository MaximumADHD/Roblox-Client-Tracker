game:DefineFastFlag("DiscoverabilityUpsellPrefillDiscoverableRedesignEnabledForAll", false)
game:DefineFastInt("DiscoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled", 0)

local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local dependencies = require(DiscoverabilityModal.dependencies)

local rolloutByApplicationId = dependencies.rolloutByApplicationId

local rolloutPercent = function()
	return game:GetFastInt("DiscoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled")
end

local function discoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled()
	return rolloutByApplicationId(rolloutPercent)()
end

local function discoverabilityUpsellPrefillDiscoverableRedesignEnabledForAll()
	return game:GetFastFlag("DiscoverabilityUpsellPrefillDiscoverableRedesignEnabledForAll")
end

return function()
	return discoverabilityUpsellPrefillDiscoverableRedesignEnabledForAll()
		or discoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled()
end
