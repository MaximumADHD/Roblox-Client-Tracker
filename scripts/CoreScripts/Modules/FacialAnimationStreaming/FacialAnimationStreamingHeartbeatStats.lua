--!nonstrict

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol).default

local AnalyticsService = game:GetService("RbxAnalyticsService")

local FaceAnimatorService = game:GetService("FaceAnimatorService")

local GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec = require(RobloxGui.Modules.Flags.GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec)

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local FFlagAvatarChatHeartbeatStatsReportTrackingTimes = game:DefineFastFlag("AvatarChatHeartbeatStatsReportTrackingTimes", false)

local avatarChatHeartbeatStats = require(script.Parent.RobloxTelemetryConfigs.AvatarChatHeartbeatStats)

local FacialAnimationStreamingHeartbeatStats = {}

local heartbeatOn = false

local TrackingMode = {
	None = 0,
	AudioOnly = 1,
	VideoOnly = 2,
	AudioVideo = 3
}
local trackingMode = TrackingMode.None
local trackingTimes = {}
local lastTrackingChangedTime = nil

type connectionMap = {[string]: RBXScriptConnection}
local connections : connectionMap = {}

local Connection = {
	VideoAnimationEnabled = "videoAnimationEnabled",
	AudioAnimationEnabled = "audioAnimationEnabled",
}

local function updateTrackingTimes()
	if FFlagAvatarChatHeartbeatStatsReportTrackingTimes then
		-- Update current tracking mode elapsed time
		local now = os.clock()
		local elapsedTime = 0
		if lastTrackingChangedTime then
			elapsedTime = now - lastTrackingChangedTime
			trackingTimes[trackingMode] += elapsedTime
		end
		lastTrackingChangedTime = now
	end
end

local function reportHeartbeat()
	local customFields = {
		pid = tostring(game.PlaceId),
		sessionid = AnalyticsService:GetSessionId(),
		userid = tostring(Players.LocalPlayer.UserId),
		universeid = tostring(game.GameId),
	}

	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		customFields["playSessionId"] = AnalyticsService:GetPlaySessionId()
	end

	customFields["trackingMode"] = trackingMode

	if FFlagAvatarChatHeartbeatStatsReportTrackingTimes then
		updateTrackingTimes()
		for mode, times in trackingTimes do
			customFields[tostring(mode)] = times
			trackingTimes[mode] = 0
		end
	end

	LoggingProtocol:logRobloxTelemetryEvent(avatarChatHeartbeatStats, nil, customFields)
end

-- Starts timer-based heartbeat reporting as long as video or audio enabled
local function startHeartbeat()
	local interval = GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec()
	if interval > 0 and not heartbeatOn then
		heartbeatOn = true
		task.spawn(function()
			while (heartbeatOn) do
				reportHeartbeat()
				task.wait(interval)
			end
			heartbeatOn = false
		end)
	end
end

local function updateTrackingMode()
	if FFlagAvatarChatHeartbeatStatsReportTrackingTimes then
		updateTrackingTimes()
	end

	if FaceAnimatorService.VideoAnimationEnabled and FaceAnimatorService.AudioAnimationEnabled then
		trackingMode = TrackingMode.AudioVideo
	elseif FaceAnimatorService.VideoAnimationEnabled then
		trackingMode = TrackingMode.VideoOnly
	elseif FaceAnimatorService.AudioAnimationEnabled then
		trackingMode = TrackingMode.AudioOnly
	else
		trackingMode = TrackingMode.None
	end
end

function FacialAnimationStreamingHeartbeatStats.Initialize()
	if GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec() <= 0 then
		return
	end

	if FFlagAvatarChatHeartbeatStatsReportTrackingTimes then
		for _, mode in TrackingMode do
			trackingTimes[mode] = 0
		end
	end

	connections[Connection.VideoAnimationEnabled] = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function()
		updateTrackingMode()
	end)

	connections[Connection.AudioAnimationEnabled] = FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(function()
		updateTrackingMode()
	end)

	updateTrackingMode()
	startHeartbeat()
end

function FacialAnimationStreamingHeartbeatStats.Cleanup()
	if GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec() <= 0 then
		return
	end

	for _, connection in pairs(connections) do
		if connection then
			connection:Disconnect()
		end
	end

	table.clear(connections)

	heartbeatOn = false
end

return FacialAnimationStreamingHeartbeatStats