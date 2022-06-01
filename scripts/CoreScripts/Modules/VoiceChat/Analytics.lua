--!strict

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

game:DefineFastInt("LuaVoiceChatAnalyticsPointsThrottle", 0)
game:DefineFastFlag("LuaVoiceChatAnalyticsUsePoints", false)
game:DefineFastFlag("LuaVoiceChatAnalyticsUseCounter", false)
game:DefineFastFlag("LuaVoiceChatAnalyticsUseEvents", false)

type EventStreamFn = (AnalyticsService, string, string, string, { [string]: any }) -> ()
type DiagFn = (AnalyticsService, string, number) -> ()
type InfluxFn = (AnalyticsService, string, { [string]: any }, number) -> ()

-- Only providing types for functions we might use
type AnalyticsService = {
	-- Event Stream
	SetRBXEvent: EventStreamFn,
	SetRBXEventStream: EventStreamFn,
	SendEventDeferred: EventStreamFn,

	-- Diag
	ReportCounter: DiagFn,
	ReportStats: DiagFn,

	-- Influx
	ReportInfluxSeries: InfluxFn,
}

type AnalyticsWrapper = typeof(setmetatable({} :: { _impl: AnalyticsService }, {} :: AnalyticsWrapperMeta))

type AnalyticsWrapperMeta = {
	__index: AnalyticsWrapperMeta,
	new: (AnalyticsService?) -> AnalyticsWrapper,
	stubService: () -> AnalyticsService,
	setImpl: (AnalyticsWrapper, AnalyticsService) -> (),

	INFO: LogLevel,
	WARNING: LogLevel,
	ERROR: LogLevel,

	_report: (AnalyticsWrapper, string, string, string?, { [string]: any }) -> (),
	reportVoiceChatJoinResult: (AnalyticsWrapper, boolean, string, LogLevel?) -> (),
}

-- Replace this when Luau supports it
-- local Analytics: AnalyticsWrapperMeta = {}
local Analytics = {} :: AnalyticsWrapperMeta
Analytics.__index = Analytics

-- Log level enums to help avoid typos
Analytics.INFO = "info"
Analytics.WARNING = "warning"
Analytics.ERROR = "error"

type LogLevel = "info" | "warning" | "error"

function Analytics.new(impl: AnalyticsService?)
	if not impl then
		impl = RbxAnalyticsService
	end
	assert(impl, "Analytics impl must not be nil.")

	local analytics = {
		_impl = impl,
	}

	return setmetatable(analytics, Analytics)
end

local function stub() end

function Analytics.stubService()
	return {
		SetRBXEvent = stub,
		SetRBXEventStream = stub,
		SendEventDeferred = stub,
		ReportCounter = stub,
		ReportStats = stub,
		ReportInfluxSeries = stub,
	}
end

function Analytics:setImpl(newImpl)
	self._impl = newImpl
end

function Analytics:_report(context, name, extraName, args)
	local combinedName = context .. "-" .. name
	if game:GetFastFlag("LuaVoiceChatAnalyticsUsePoints") then
		self._impl:ReportInfluxSeries(combinedName, args, game:GetFastInt("LuaVoiceChatAnalyticsPointsThrottle"))
	end
	if game:GetFastFlag("LuaVoiceChatAnalyticsUseCounter") then
		local longName = combinedName
		if extraName then
			longName = longName .. "-" .. extraName
		end
		self._impl:ReportCounter(longName .. "-" .. args.result, 1)
	end
	if game:GetFastFlag("LuaVoiceChatAnalyticsUseEvents") then
		self._impl:SendEventDeferred("client", context, name, args)
	end
end

function Analytics:reportVoiceChatJoinResult(success, result, level)
	self:_report("voiceChat", "defaultChannelJoinResult", result, {
		success = success,
		result = result,
		logLevel = if level then level else Analytics.INFO,
	})
end

return Analytics
