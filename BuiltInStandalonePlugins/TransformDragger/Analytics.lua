
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

local Analytics = {}

-- If this is a user fork of the plugin, mock out the RbxAnalyticsService
if not pcall(function() local _ = RbxAnalyticsService.Name end) then
	RbxAnalyticsService = {}
	function RbxAnalyticsService:SendEventDeferred() end
	function RbxAnalyticsService:ReportCounter() end
	function RbxAnalyticsService:GetSessionId() end
	function RbxAnalyticsService:GetClientId() end
	function RbxAnalyticsService:ReportStats() end
end

function Analytics:sendEvent(eventName, argMap)
	local totalArgMap = {
		studioSid = RbxAnalyticsService:GetSessionId(),
		clientId = RbxAnalyticsService:GetClientId(),
		placeId = game.PlaceId,
		userId = StudioService:GetUserId(),
	}
	for k, v in pairs(argMap) do
		totalArgMap[k] = v
	end
	RbxAnalyticsService:SendEventDeferred("studio", "Modeling", eventName, totalArgMap)
end

function Analytics:reportCounter(counterName, count)
	RbxAnalyticsService:ReportCounter(counterName, count or 1)
end

function Analytics:reportStats(statName, value)
	RbxAnalyticsService:ReportStats(statName, value)
end

return Analytics