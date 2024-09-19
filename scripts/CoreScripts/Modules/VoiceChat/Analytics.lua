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
	reportClosedNudge: (AnalyticsWrapper, number, string) -> (),
	reportAcknowledgedNudge: (AnalyticsWrapper, number, string) -> (),
	reportDeniedNudge: (AnalyticsWrapper, number, string) -> (),
	reportVoiceMuteIndividual: (AnalyticsWrapper, VoiceMuteIndividualArgs) -> (),
	reportVoiceMuteGroup: (AnalyticsWrapper, VoiceMuteGroupArgs) -> (),
	reportVoiceMuteSelf: (AnalyticsWrapper, VoiceMuteSelfArgs) -> (),
	reportJoinVoiceButtonEvent: (AnalyticsWrapper, string, number, number, string) -> (),
	reportJoinVoiceButtonEventWithVoiceSessionId: (AnalyticsWrapper, string, number, number, string, string) -> (),
	reportLeaveVoiceButtonEvent: (AnalyticsWrapper, string, number, number, string, string) -> (),
	reportInExpConsent: (AnalyticsWrapper, string, string, number, number, string) -> (),
	reportDevicePermissionsModalEvent: (AnalyticsWrapper, string, string, number, number, string) -> (),
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

type InExpConsentEventType = "shown" | "accepted" | "denied"
local InExpConsentEventName = "inExpConsentModalEvent"

type DevicePermissionsModalEventType = "Shown" | "OpenedSettings" | "Acknowledged" | "Denied"
local DevicePermissionsModalEventName = "devicePermissionsModalEvent"

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

function Analytics:reportJoinVoiceButtonEvent(
	eventType: string,
	universe_id: number,
	place_id: number,
	play_session_id: string
)
	self._impl:SendEventDeferred("client", "voice", "joinVoiceButtonEvent", {
		eventType = eventType,
		universeId = universe_id,
		placeId = place_id,
		playSessionId = play_session_id,
	})
end

function Analytics:reportJoinVoiceButtonEventWithVoiceSessionId(
	eventType: string,
	universe_id: number,
	place_id: number,
	play_session_id: string,
	voice_session_id: string
)
	self._impl:SendEventDeferred("client", "voice", "joinVoiceButtonEvent", {
		eventType = eventType,
		universeId = universe_id,
		placeId = place_id,
		playSessionId = play_session_id,
		voiceSessionId = voice_session_id
	})
end

function Analytics:reportLeaveVoiceButtonEvent(
	eventType: string,
	universe_id: number,
	place_id: number,
	play_session_id: string,
	voice_session_id: string
)
	self._impl:SendEventDeferred("client", "voice", "leaveVoiceButtonEvent", {
		eventType = eventType,
		universeId = universe_id,
		placeId = place_id,
		playSessionId = play_session_id,
		voiceSessionId = voice_session_id
	})
end

function Analytics:reportInExpConsent(
	eventType: string,
	entry: string,
	universe_id: number,
	place_id: number,
	play_session_id: string
)
	self._impl:SendEventDeferred("client", "voiceChat", InExpConsentEventName, {
		eventType = eventType :: InExpConsentEventType,
		entry = entry,
		universeId = universe_id,
		placeId = place_id,
		playSessionId = play_session_id,
	})
end

function Analytics:reportDevicePermissionsModalEvent(
	eventType: string,
	voiceSessionId: string,
	universeId: number,
	placeId: number,
	playSessionId: string
)
	-- playSessionId always comes with two double quotes at the start and the end that DSA wanted removed
	local modifiedPlaySessionId = string.sub(playSessionId, 2, #playSessionId - 1)

	self._impl:SendEventDeferred("client", "voiceChat", DevicePermissionsModalEventName, {
		eventType = eventType :: DevicePermissionsModalEventType,
		universeId = universeId,
		placeId = placeId,
		playSessionId = modifiedPlaySessionId,
		voiceSessionId = voiceSessionId,
	})
end

return Analytics
