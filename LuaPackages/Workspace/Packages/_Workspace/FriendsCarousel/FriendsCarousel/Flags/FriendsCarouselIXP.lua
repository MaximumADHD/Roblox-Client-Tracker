local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local ReleaseHelpers = dependencies.SocialLibraries.ReleaseHelpers
local setupIsRolloutEnabledForUser = ReleaseHelpers.setupIsRolloutEnabledForUser

local getFStringSocialFriendsLayer = dependencies.getFStringSocialFriendsLayer
local IXPService = dependencies.IXPService
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant

game:DefineFastFlag("FriendsCarouselEnabled_v2", false)
game:DefineFastFlag("FriendsCarouselEnabledForAll_v2", false)
game:DefineFastInt("FriendsCarouselRolloutEnabled_v2", 0)

--remove with getFFlagFriendsCarouselRemoveVariant
game:DefineFastString("FriendsCarouselVariant", "")

local getFFlagFriendsCarouselExperimentEnabled = function()
	return game:GetFastFlag("FriendsCarouselEnabled_v2")
end

local getFFlagFriendsCarouselEnabledForDev = function()
	return game:GetFastFlag("FriendsCarouselEnabledForAll_v2")
end

local getFIntFriendsCarouselRolloutEnabled = function()
	return game:GetFastInt("FriendsCarouselRolloutEnabled_v2")
end

local getFriendsCarouselRolloutEnabled = setupIsRolloutEnabledForUser(getFIntFriendsCarouselRolloutEnabled)

local getFStringFriendsCarouselVariant = function(): string?
	if getFFlagFriendsCarouselRemoveVariant() then
		return nil
	end
	local fastString = game:GetFastString("FriendsCarouselVariant")
	return if fastString and #fastString > 0 then fastString else nil
end

local getExperimentLayerStatus = function()
	return IXPService:GetUserLayerLoadingStatus()
end

-- !!! avoid using IXPService:GetUserLayerVariables directly, always pass layers from RoactAppExperiment if possible
local getSocialFriendsLayer = function(layers: any?, config: Config?): { [string]: string? }
	local SocialFriendsLayerString = getFStringSocialFriendsLayer()
	return layers and layers[SocialFriendsLayerString]
		or config and config.useIXPdirectly and IXPService:GetUserLayerVariables(SocialFriendsLayerString)
		or {}
end

local getExperimentVariant = function(layers: any?, config: Config?): string?
	if getFFlagFriendsCarouselRemoveVariant() then
		return nil
	end
	local socialFriendsLayer = getSocialFriendsLayer(layers, config)
	local flagVariant = getFStringFriendsCarouselVariant()

	return flagVariant or socialFriendsLayer.friends_carousel_ui
end

local isExperimentVariantWithRecs = function(layers: any?, config: Config?): boolean?
	if getFFlagFriendsCarouselRemoveVariant() then
		return nil
	end
	local experimentVariant = getExperimentVariant(layers, config)

	return experimentVariant == UIVariants.SQUARE_TILES or experimentVariant == UIVariants.CIRCULAR_TILES
end

type Config = {
	useIXPdirectly: boolean?,
}

return {
	enabledForAll = function(layers: any?, config: Config?)
		return (getFFlagFriendsCarouselRemoveVariant() or isExperimentVariantWithRecs(layers, config))
			and getFFlagFriendsCarouselEnabledForDev()
	end,
	experimentOrRolloutEnabled = function(layers: any?, config: Config?)
		return (isExperimentVariantWithRecs(layers, config) or getFFlagFriendsCarouselRemoveVariant())
			and (
				getFFlagFriendsCarouselExperimentEnabled()
				or getFriendsCarouselRolloutEnabled()
				or getFFlagFriendsCarouselEnabledForDev()
			)
	end,
	experimentVariant = function(layers: any?, config: Config?): string?
		if getFFlagFriendsCarouselRemoveVariant() then
			return nil
		end
		return getExperimentVariant(layers, config)
	end,
	experimentLayerStatus = function()
		return getExperimentLayerStatus()
	end,
}
