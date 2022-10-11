local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Analytics = Framework.ContextServices.Analytics

local Senders = require(Plugin.Core.Util.Analytics.Senders)

local function trackMarketplaceEvent(event, attributes)
	Senders.sendEventDeferred("studio", "Marketplace", event, attributes)
end

return function()
	return Analytics.new(function(rbxAnalyticsService)
		return {
			AssetPreviewPlaySound = trackMarketplaceEvent,
			AssetPreviewPauseSound = trackMarketplaceEvent,
			AssetPreviewPlayVideo = trackMarketplaceEvent,
			AssetPreviewPauseVideo = trackMarketplaceEvent,
		}
	end)
end
