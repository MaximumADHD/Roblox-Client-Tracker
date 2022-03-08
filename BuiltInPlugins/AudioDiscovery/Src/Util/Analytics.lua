local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local Analytics = {}

local FIntStudioAudioDiscoveryOpenAnalyticThrottle = game:GetFastInt("StudioAudioDiscoveryOpenAnalyticThrottle")
local FIntStudioAudioDiscoverySelectAnalyticsThrottle = game:GetFastInt("StudioAudioDiscoverySelectAnalyticsThrottle")
local FIntStudioAudioDiscoveryBreakdownAnalyticsThrottle = game:GetFastInt("StudioAudioDiscoveryBreakdownAnalyticsThrottle")

function Analytics:_sendToKibana(name, points, throttle)
	task.spawn(RbxAnalyticsService.ReportInfluxSeries, RbxAnalyticsService, name, points, throttle)
end

ReportedOpen = false
function Analytics:reportOpen()
	if not ReportedOpen then
		ReportedOpen = true
		self:_sendToKibana("StudioAudioDiscoveryOpen", {}, FIntStudioAudioDiscoveryOpenAnalyticThrottle)
	end
end

ReportedSelect = false
function Analytics:reportSelect()
	if not ReportedSelect then
		ReportedSelect = true
		self:_sendToKibana("StudioAudioDiscoverySelect", {}, FIntStudioAudioDiscoverySelectAnalyticsThrottle)
	end
end

function Analytics:reportBreakdown(good, bad)
	local points = {
		good = good,
		bad = bad,
	}
	self:_sendToKibana("StudioAudioDiscoveryBreakdown", points, FIntStudioAudioDiscoveryBreakdownAnalyticsThrottle)
end

return Analytics