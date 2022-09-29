local plugin = script.Parent.Parent.Parent
local AnalyticsEventNames = require(plugin.Src.Resources.AnalyticsEventNames)

local EVENT_TARGET = "studio"
local EVENT_CONTEXT = "Debugger"

local DFIntDebuggerEventsThrottleHundredthPercent = tonumber(
	settings():GetFVariable("DebuggerEventsThrottleHundredthPercent")
)

return function(rbxAnalyticsService)
	local function reportEvent(eventName, additionalArgs)
		-- Report to points.
		rbxAnalyticsService:ReportInfluxSeries(eventName, additionalArgs, DFIntDebuggerEventsThrottleHundredthPercent)

		-- Report to EventStream.
		rbxAnalyticsService:SendEventDeferred(EVENT_TARGET, EVENT_CONTEXT, eventName, additionalArgs)
	end

	local function reportEventWithActionSource(eventName, actionSource)
		reportEvent(eventName, { actionSource = actionSource })
	end

	return {
		[AnalyticsEventNames.RemoveMetaBreakpoint] = reportEventWithActionSource,
		[AnalyticsEventNames.RemoveAllMetaBreakpoints] = reportEventWithActionSource,
		[AnalyticsEventNames.EnableMetaBreakpoint] = reportEventWithActionSource,
		[AnalyticsEventNames.DisableMetaBreakpoint] = reportEventWithActionSource,
		[AnalyticsEventNames.EnableBreakpoint] = reportEventWithActionSource,
		[AnalyticsEventNames.DisableBreakpoint] = reportEventWithActionSource,
		[AnalyticsEventNames.EnableAllMetaBreakpoints] = reportEventWithActionSource,
		[AnalyticsEventNames.DisableAllMetaBreakpoints] = reportEventWithActionSource,
		[AnalyticsEventNames.MetaBreakpointConditionChanged] = reportEventWithActionSource,
		[AnalyticsEventNames.MetaBreakpointLogMessageChanged] = reportEventWithActionSource,
		[AnalyticsEventNames.MetaBreakpointContinueExecutionChanged] = reportEventWithActionSource,
		[AnalyticsEventNames.CallstackStepInto] = reportEventWithActionSource,
		[AnalyticsEventNames.CallstackStepOver] = reportEventWithActionSource,
		[AnalyticsEventNames.CallstackStepOut] = reportEventWithActionSource,
		[AnalyticsEventNames.CallstackChangeFrame] = reportEventWithActionSource,
		[AnalyticsEventNames.WatchAdded] = reportEventWithActionSource,
		[AnalyticsEventNames.WatchScopeEdited] = function(eventName, scopesAsString)
			reportEvent(eventName, { enabledScopes = scopesAsString })
		end,
		[AnalyticsEventNames.BreakpointsColumnsEdited] = function(eventName, columnsAsString)
			reportEvent(eventName, { enabledColumns = columnsAsString })
		end,
		[AnalyticsEventNames.CallstackColumnsEdited] = function(eventName, columnsAsString)
			reportEvent(eventName, { enabledColumns = columnsAsString })
		end,
	}
end
