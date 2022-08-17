local AnalyticsService = game:GetService("RbxAnalyticsService")
local IXPService = game:GetService("IXPService")
local Stats = game:GetService("Stats")
local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getFFlagOverrideVerifiedBadgeExperiment = require(VerifiedBadges.Flags.getFFlagOverrideVerifiedBadgeExperiment)

export type ExposureEvent = {
	surface: string, -- the place in-app where the badge was
	creatorId: string, -- ID of the verified creator
	universeId: string?, -- universeId of the game if seen on a game surface
	assetId: string?, -- assetId of the asset if seen on item details page
}

type Table = { [string]: any }

return function(exposureEvent: ExposureEvent)
	local target = "client"
	local eventCtx = "VerifiedBadges_V1"
	local eventName = "test_VerifiedBadgesExposedToBadge_2"

	if not getFFlagOverrideVerifiedBadgeExperiment() then
		local success, result = pcall(function()
			return IXPService:GetUserLayerVariables(getFStringVerifiedBadgeLayer())
		end)
		local layer: Table = success and result or {}
		local variant = layer.verifiedBadgeEnabled

		AnalyticsService:SendEventDeferred(target, eventCtx, eventName, {
			verifiedBadgeEnabledVariant = variant, -- todo test to see if this works with nil
			surface = exposureEvent.surface,
			creatorId = exposureEvent.creatorId,
			universeId = exposureEvent.universeId or nil,
			assetId = exposureEvent.assetId or nil,
			btid = Stats:GetBrowserTrackerId(),
		})
	end
end
