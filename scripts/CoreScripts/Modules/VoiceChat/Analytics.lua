local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

game:DefineFastInt("LuaVoiceChatAnalyticsPointsThrottle", 0)
game:DefineFastFlag("LuaVoiceChatAnalyticsUsePointsV2", false)
game:DefineFastFlag("LuaVoiceChatAnalyticsUseCounterV2", false)
game:DefineFastFlag("LuaVoiceChatAnalyticsUseEventsV2", false)
game:DefineFastFlag("LuaVoiceChatAnalyticsBanMessage", true)
game:DefineFastFlag("LuaVoiceChatReconnectMissedSequence", false)

type EventStreamFn = (AnalyticsService, string, string, string, { [string]: any }) -> ()
type DiagFn = (AnalyticsService, string, number) -> ()
type InfluxFn = (AnalyticsService, string, { [string]: any }, number) -> ()

export type VoiceMuteIndividualArgs = {
	userId: number,
	clientSessionId: string,
	targetUserId: number,
	channelId: string,
	context: string,
	muted: boolean,
}

export type VoiceMuteGroupArgs = {
	userId: number,
	clientSessionId: string,
	channelId: string,
	context: string,
	groupType: string,
	muted: boolean,
}

export type VoiceMuteSelfArgs = {
	userId: number,
	clientSessionId: string,
	channelId: string,
	context: string,
	muted: boolean,
}

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
	reportBanMessageEventV2: (
		AnalyticsWrapper,
		eventType: string,
		banReason: number,
		userId: number,
		voiceSessionId: string
	) -> (),
	reportBanMessageEvent: (AnalyticsWrapper, string) -> (),
	reportReconnectDueToMissedSequence: (AnalyticsWrapper) -> (),
	reportOutOfOrderSequence: (AnalyticsWrapper) -> (),
	reportReceivedNudge: (AnalyticsWrapper, { type: string, deliveryTime: string }, number, string) -> (),
	reportClosedNudge: (AnalyticsWrapper, number, string) -> (),
	reportAcknowledgedNudge: (AnalyticsWrapper, number, string) -> (),
	reportDeniedNudge: (AnalyticsWrapper, number, string) -> (),
	reportVoiceMuteIndividual: (AnalyticsWrapper, VoiceMuteIndividualArgs) -> (),
	reportVoiceMuteGroup: (AnalyticsWrapper, VoiceMuteGroupArgs) -> (),
	reportVoiceMuteSelf: (AnalyticsWrapper, VoiceMuteSelfArgs) -> (),
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

type NudgeCloseType = "ACKNOWLEDGED" | "CLOSED" | "DENIED"
local closedNudgeType = "closedNudge"

function Analytics.new(impl: AnalyticsService?)
	if not impl then
		impl = (RbxAnalyticsService :: any) :: AnalyticsService
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
	if game:GetFastFlag("LuaVoiceChatAnalyticsUsePointsV2") then
		self._impl:ReportInfluxSeries(combinedName, args, game:GetFastInt("LuaVoiceChatAnalyticsPointsThrottle"))
	end
	if game:GetFastFlag("LuaVoiceChatAnalyticsUseCounterV2") then
		local longName = combinedName
		if extraName then
			longName = longName .. "-" .. extraName
		end
		local finalName = longName
		if args and args.result then
			finalName = finalName .. "-" .. args.result
		end

		self._impl:ReportCounter(finalName, 1)
	end
	if game:GetFastFlag("LuaVoiceChatAnalyticsUseEventsV2") then
		self._impl:SendEventDeferred("client", context, name, args)
	end
end

function Analytics:reportVoiceChatJoinResult(success, result, level)
	self:_report("voiceChat", "defaultChannelJoinResults", result, {
		success = success,
		result = result,
		logLevel = if level then level else Analytics.INFO,
	})
end

function Analytics:reportBanMessageEvent(event: string)
	if game:GetFastFlag("LuaVoiceChatAnalyticsBanMessage") then
		self._impl:ReportCounter("voiceChat-reportBanMessage" .. event, 1)
	end
end

function Analytics:reportBanMessageEventV2(eventType: string, banReason: number, userId: number, voiceSessionId: string)
	self:_report("voiceChat", "reportBanEvent", nil, {
		eventType = eventType,
		banReason = banReason,
		userId = userId,
		voiceSessionId = voiceSessionId,
	})
end

function Analytics:reportReconnectDueToMissedSequence()
	if game:GetFastFlag("LuaVoiceChatReconnectMissedSequence") then
		self._impl:ReportCounter("voiceChat-reconnectMissedSequence", 1)
	end
end

function Analytics:reportOutOfOrderSequence()
	self._impl:ReportCounter("voiceChat-outOfOrderSequence", 1)
end

function Analytics:reportReceivedNudge(
	report: { type: string, deliveryTime: string },
	userId: number,
	voiceSessionId: string
)
	local deliveryTime = (DateTime.fromIsoDate(report.deliveryTime) :: DateTime).UnixTimestampMillis
	local durationInMs = DateTime.now().UnixTimestampMillis - deliveryTime
	self._impl:ReportCounter("voicechat-receivednudge", 1)
	self._impl:ReportCounter("voicechat-receivednudgeduration", durationInMs)
	self._impl:SendEventDeferred("client", "voiceChat", "receivedNudge", {
		type = report.type,
		durationInMs = durationInMs,
		userId = userId,
		voiceSessionId = voiceSessionId,
	})
end

function Analytics:reportClosedNudge(userId: number, voiceSessionId: string)
	self._impl:ReportCounter("voicechat-closednudge", 1)
	self._impl:SendEventDeferred("client", "voiceChat", closedNudgeType, {
		userId = userId,
		voiceSessionId = voiceSessionId,
		closeType = "CLOSED" :: NudgeCloseType,
	})
end

function Analytics:reportAcknowledgedNudge(userId: number, voiceSessionId: string)
	self._impl:ReportCounter("voicechat-acknowledgednudge", 1)
	self._impl:SendEventDeferred("client", "voiceChat", closedNudgeType, {
		userId = userId,
		voiceSessionId = voiceSessionId,
		closeType = "ACKNOWLEDGED" :: NudgeCloseType,
	})
end

function Analytics:reportDeniedNudge(userId: number, voiceSessionId: string)
	self._impl:ReportCounter("voicechat-deniednudge", 1)
	self._impl:SendEventDeferred("client", "voiceChat", closedNudgeType, {
		userId = userId,
		voiceSessionId = voiceSessionId,
		closeType = "DENIED" :: NudgeCloseType,
	})
end

function Analytics:reportVoiceMuteIndividual(args: VoiceMuteIndividualArgs)
	self._impl:SendEventDeferred("client", "voice", "voiceUIMuteUnmuteIndividual", {
		user_id = args.userId,
		client_session_id = args.clientSessionId,
		target_user_id = args.targetUserId,
		channel_id = args.channelId,
		context = args.context,
		muted = args.muted,
	})
end

function Analytics:reportVoiceMuteGroup(args: VoiceMuteGroupArgs)
	self._impl:SendEventDeferred("client", "voice", "voiceUIMuteUnmuteGroup", {
		user_id = args.userId,
		client_session_id = args.clientSessionId,
		channel_id = args.channelId,
		context = args.context,
		group_type = args.groupType,
		muted = args.muted,
	})
end

function Analytics:reportVoiceMuteSelf(args: VoiceMuteSelfArgs)
	self._impl:SendEventDeferred("client", "voice", "voiceUIMuteUnmuteSelf", {
		user_id = args.userId,
		client_session_id = args.clientSessionId,
		channel_id = args.channelId,
		context = args.context,
		muted = args.muted,
	})
end

return Analytics
