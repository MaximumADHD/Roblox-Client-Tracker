local plugin = script.Parent.Parent.Parent
local AnalyticsEventNames = require(plugin.Src.Resources.AnalyticsEventNames)

local EVENT_TARGET = "studio"
local EVENT_CONTEXT = "Debugger"

local FFlagDebuggerV2ReportAnalytics = game:GetFastFlag("DebuggerV2ReportAnalytics")
local DFIntDebuggerEventsThrottleHundredthPercent = tonumber(
	settings():GetFVariable("DebuggerEventsThrottleHundredthPercent")
)

return function(rbxAnalyticsService)
	local function reportEvent(eventName, additionalArgs)
		if not FFlagDebuggerV2ReportAnalytics then
			return
		end

		-- Report to points.
		rbxAnalyticsService:ReportInfluxSeries(eventName, additionalArgs, DFIntDebuggerEventsThrottleHundredthPercent)

		-- Report to EventStream.
		rbxAnalyticsService:SendEventDeferred(EVENT_TARGET, EVENT_CONTEXT, eventName, additionalArgs)
	end

	return {
		[AnalyticsEventNames.RemoveMetaBreakpoint] = function(eventName, actionSource)
			reportEvent(eventName, { actionSource = actionSource })
		end,
		[AnalyticsEventNames.RemoveAllMetaBreakpoints] = function(eventName, actionSource)
			reportEvent(eventName, { actionSource = actionSource })
		end,
	}
end
