local success, AnalyticsService = pcall(function()
	return game:GetService("RbxAnalyticsService")
end)

local Analytics = {}

-- void Analytics:reportEvent(string event)
function Analytics:reportEvent(event)
	if not success or not AnalyticsService then
		return
	end --Not currently enabled
	AnalyticsService:TrackEvent("Studio", "UIEditorAction", event)
end

return Analytics
