local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local IXPService = dependencies.IXPService

game:DefineFastFlag("FriendsCarouselEnabled_v2", false)

local getFFlagFriendsCarouselExperimentEnabled = function()
	return game:GetFastFlag("FriendsCarouselEnabled_v2")
end

local getExperimentLayerStatus = function()
	return IXPService:GetUserLayerLoadingStatus()
end

type Config = {
	useIXPdirectly: boolean?,
}

return {
	experimentOrRolloutEnabled = function(layers: any?, config: Config?)
		return getFFlagFriendsCarouselExperimentEnabled()
	end,
	experimentVariant = function(layers: any?, config: Config?): string?
		return nil
	end,
	experimentLayerStatus = function()
		return getExperimentLayerStatus()
	end,
}
