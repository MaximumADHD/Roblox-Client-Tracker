--Self View Analytics
local debug = false

function debugPrint(text)
	if debug then
		print(text)
	end
end

debugPrint("Self View Analytics 10-19-2022__1")

local FFlagAvatarChatIncludeSelfViewOnTelemetry = game:DefineFastFlag("AvatarChatIncludeSelfViewOnTelemetry", false)

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

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

	GetSessionId: any,
	GetPlaySessionId: any,
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
	--reportMicState: (AnalyticsWrapper, boolean, string, LogLevel?) -> (),
	reportMicState: (AnalyticsWrapper, boolean) -> (),
	reportCamState: (AnalyticsWrapper, boolean) -> (),
	reportSelfViewEnabledInCoreGuiState: (AnalyticsWrapper, boolean, string, string, string) -> (),
	reportSelfViewSessionStarted: (AnalyticsWrapper, string, string, string, string, string, string, string, string, string, string, string) -> (),
	reportSelfViewSessionStopped: (AnalyticsWrapper, string, string, string) -> (),
	reportUserAccountSettings: (AnalyticsWrapper, boolean, boolean) -> (),
	reportExperienceSettings: (AnalyticsWrapper, boolean, boolean, boolean) -> (),
	setLastCtx: (AnalyticsWrapper, string) -> (),
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

local lastCtx = "SelfView"

function Analytics.new(impl: AnalyticsService?)
	if not impl then
		impl = (RbxAnalyticsService :: any) :: AnalyticsService
	end

	--impl should actually never not exist but assert needed because else lua-apps PR check fails since it assumes it could not exist
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
		GetSessionId = stub,
	}
end

function Analytics:setImpl(newImpl)
	self._impl = newImpl
end

function Analytics:_report(context, name, extraName, args)
	local environment = "client"

	if RunService:IsStudio() then
		environment = "studio"
	end

	self._impl:SendEventDeferred(environment, context, name, args)
end

function Analytics:reportMicState(isOn)
	debugPrint("Self View: Analytics:reportMicState, newState: "..tostring(isOn)..",universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",uid: "..tostring((Players.LocalPlayer :: Player).UserId)..",sessionid: "..tostring(self._impl:GetSessionId()))
	self:_report(lastCtx, "inExperienceMicState", tostring(isOn), {
		state = isOn,
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		uid = tostring((Players.LocalPlayer :: Player).UserId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
	})
end

function Analytics:reportCamState(isOn)
	debugPrint("Self View: Analytics:reporCamState, newState: "..tostring(isOn)..",universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",uid: "..tostring((Players.LocalPlayer :: Player).UserId)..",sessionid: "..tostring(self._impl:GetSessionId()))
	self:_report(lastCtx, "inExperienceCamState", tostring(isOn), {
		state = isOn,
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		uid = tostring((Players.LocalPlayer :: Player).UserId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
	})
end

function Analytics:reportSelfViewEnabledInCoreGuiState(isOn)
	debugPrint("Self View: Analytics:reportSelfViewEnabledInCoreGuiState, newState: "..tostring(isOn)..",universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",sessionid: "..tostring(self._impl:GetSessionId()))
	self:_report("SelfView", "enabledinCoreGuiState", tostring(isOn), {
		state = isOn,
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
	})
end

function Analytics:reportSelfViewSessionStarted(x, y, width, height, x_relative, y_relative, width_relative, height_relative)
	debugPrint("Self View: Analytics:reportSelfViewSessionStarted,universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",sessionid: "..tostring(self._impl:GetSessionId())..",x: "..tostring(x)..",y: "..tostring(y)..",width: "..tostring(width)..",height: "..tostring(height) ..",x_relative: "..tostring(x_relative) ..",y_relative: "..tostring(y_relative)  ..",width_relative: "..tostring(width_relative) ..",height_relative: "..tostring(height_relative))
	self:_report("SelfView", "sessionStarted", "true", {
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
		x = tostring(x),
		y = tostring(y),
		width = tostring(width),
		height = tostring(height),
		x_relative = tostring(x_relative),
		y_relative = tostring(y_relative),
		width_relative = tostring(width_relative),
		height_relative = tostring(height_relative),
	})

	if FFlagAvatarChatIncludeSelfViewOnTelemetry then
		RbxAnalyticsService:AddGlobalPointsField("feature/avatarChat/selfViewOn", 1)
	end
end

function Analytics:reportSelfViewSessionStopped()
	debugPrint("Self View: Analytics:reportSelfViewSessionStopped,universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",sessionid: "..tostring(self._impl:GetSessionId()))
	self:_report("SelfView", "sessionStopped", "true", {
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
	})

	if FFlagAvatarChatIncludeSelfViewOnTelemetry then
		RbxAnalyticsService:AddGlobalPointsField("feature/avatarChat/selfViewOn", 0)
	end	
end

function Analytics:reportUserAccountSettings(userAccount_videoEnabled: boolean, userAccount_audioEnabled: boolean)
	debugPrint("Self View: Analytics:reportUserAccountSettings,universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",sessionid: "..tostring(self._impl:GetSessionId())..",userAccount_videoEnabled: "..tostring(userAccount_videoEnabled)..",userAccount_audioEnabled: "..tostring(userAccount_audioEnabled))
	self:_report("SelfView", "userAccountSettings", "true", {
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
		videoenabled = tostring(userAccount_videoEnabled),
		audioenabled = tostring(userAccount_audioEnabled),
	})
end

function Analytics:reportExperienceSettings(experienceSettings_placeEnabled:boolean, experienceSettings_videoEnabled: boolean, experienceSettings_audioEnabled: boolean)
	debugPrint("Self View: Analytics:reportExperienceSettings,universeid: "..tostring(game.GameId)..",pid: "..tostring(game.PlaceId)..",sessionid: "..tostring(self._impl:GetSessionId())..",experienceSettings_placeEnabled: "..tostring(experienceSettings_placeEnabled)..",experienceSettings_videoEnabled: "..tostring(experienceSettings_videoEnabled)..",experienceSettings_audioEnabled: "..tostring(experienceSettings_audioEnabled))
	self:_report("SelfView", "experienceSettings", "true", {
		universeid = tostring(game.GameId),
		pid = tostring(game.PlaceId),
		sessionid = tostring(self._impl:GetPlaySessionId()),
		placeenabled = tostring(experienceSettings_placeEnabled),
		videoenabled = tostring(experienceSettings_videoEnabled),
		audioenabled = tostring(experienceSettings_audioEnabled),
	})
end

function Analytics:setLastCtx(ctx)
	lastCtx = ctx
end

return Analytics
