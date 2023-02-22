-- Collect analytics for all report types in IGMv1 Abuse Report Flow
-- Voice (already collected regardless of flag state)
-- Other (flag off: only collected for users with voice enabled. Flag on: collected all the time)
-- Chat (flag off: only collected for users with voice enabled. Flag on: collected all the time)
-- Experience (flag off: not collected. Flag on: collected all the time)
game:DefineFastFlag("IGMv1ARFlowExpandedAnalyticsEnabled", false)

return function()
	return game:GetFastFlag("IGMv1ARFlowExpandedAnalyticsEnabled")
end
