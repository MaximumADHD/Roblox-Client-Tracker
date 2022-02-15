local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Packages = Plugin.Packages
local Framework
if FFlagToolboxDeduplicatePackages then
	Framework = require(Packages.Framework)
else
	Framework = require(Plugin.Libs.Framework)
end
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
