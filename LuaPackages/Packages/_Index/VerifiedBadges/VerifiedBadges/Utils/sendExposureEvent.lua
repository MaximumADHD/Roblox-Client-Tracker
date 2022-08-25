local AnalyticsService = game:GetService("RbxAnalyticsService")
local IXPService = game:GetService("IXPService")
local Stats = game:GetService("Stats")
local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getFFlagOverrideVerifiedBadgeExperiment = require(VerifiedBadges.Flags.getFFlagOverrideVerifiedBadgeExperiment)
local types = require(VerifiedBadges.types)

export type ExposureEvent = {
	surface: string, -- the place in-app where the badge was
	creatorId: string, -- ID of the verified creator
	universeId: string?, -- universeId of the game if seen on a game surface
	assetId: string?, -- assetId of the asset if seen on item details page
}

type Table = { [string]: any }

return function(exposureEvent: ExposureEvent?)
	local target = "client"
	local eventCtx = "VerifiedBadges_V1"
	local eventName = "VerifiedBadgesExposedToBadge_V1"

	if not getFFlagOverrideVerifiedBadgeExperiment() and exposureEvent then
		local success, result = pcall(function()
			return IXPService:GetUserLayerVariables(getFStringVerifiedBadgeLayer())
		end)
		local layer: Table = if success then result else {}
		local variant: types.VerifiedBadgeLayer = layer.verifiedBadgesEnabled

		AnalyticsService:SendEventDeferred(target, eventCtx, eventName, {
			verifiedBadgeEnabledVariant = if variant == nil then "na" else tostring(variant),
			surface = exposureEvent.surface,
			creatorId = exposureEvent.creatorId,
			universeId = if exposureEvent.universeId then exposureEvent.universeId else "na",
			assetId = if exposureEvent.assetId then exposureEvent.assetId else "na",
			btid = Stats:GetBrowserTrackerId(),
		})
	end
end
