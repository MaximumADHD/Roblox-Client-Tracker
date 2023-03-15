--!nonstrict
local Timer = {}
Timer.__index = Timer

function Timer:create()
	local timer = {}
	timer.elapsedTime = 0.0
	timer.timerStart = 0.0
	timer.stopped = true
	return setmetatable(timer, Timer)
end

function Timer:start(now)
	if self.stopped then
		self.timerStart = now
	end

	self.stopped = false
end

function Timer:stop(now)
	if not self.stopped then
		self.elapsedTime += now - self.timerStart
	end

	self.stopped = true
end

function Timer:getElapsedTime()
	return self.elapsedTime
end

local FacialAnimationStreamingStats = {}
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local LoggingProtocol = require(CorePackages.UniversalApp.Logging.LoggingProtocol).default

local AnalyticsService = game:GetService("RbxAnalyticsService")
local VideoCaptureService = game:GetService("VideoCaptureService")
local VoiceChatService = game:GetService("VoiceChatService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")

local EngineFeatureFacialAnimationStreamingServiceUseV2 = game:GetEngineFeature("FacialAnimationStreamingServiceUseV2")
local EngineFeatureVoiceChatServiceExposesSessionId = game:GetEngineFeature("VoiceChatServiceExposesSessionId")
local EngineFeatureVoiceChatServiceExposesVoiceExperienceId = game:GetEngineFeature("VoiceChatServiceExposesVoiceExperienceId")
local FFlagFacialStreamingStatsReportVoiceSessionIdExperienceId = game:DefineFastFlag("FacialStreamingStatsReportVoiceSessionIdExperienceId", false)

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local RunService = game:GetService("RunService")
local avatarChatSubsessionStatsConfig = require(script.Parent.RobloxTelemetryConfigs.AvatarChatSubsessionStats)
local avatarChatSubsessionInputConfig = require(script.Parent.RobloxTelemetryConfigs.AvatarChatSubsessionInput)

local environment = "client"
if RunService:IsStudio() then
	environment = "studio"
end

local SubsessionTimers =
{
	sendA2CSec = Timer:create(),
	sendV2CSec = Timer:create(),
	sendAV2CSec = Timer:create(),
	sendRecvA2CSec = Timer:create(),
	sendRecvV2CSec = Timer:create(),
	sendRecvAV2CSec = Timer:create(),
	recvSec = Timer:create()
}

local trackingStarted = false

-- Track how many remote players we are subscribed to (i.e. unmuted) for FACS
-- If trackingRemotePlayersCount >= 1, then we are receiving FACS 
local trackingRemotePlayersCount = 0
local trackingFacsCanBeReceived = false
local trackingSendingFacs = false

local stateStartedTimeStamp = nil

local sessionStartTime = nil
local sessionTotalElapsedTime = nil

local playerTransmittingFacs = {}
local playerMicOn = {}
local localCameraOn = false

local userAccountVideoEnabled = false
local userAccountAudioEnabled = false
local universeVideoEnabled = false
local universeAudioEnabled = false

local a2cEnabled = false
local v2cEnabled = false

local playerJoinedGame = {}

type connectionMap = {[string]: RBXScriptConnection}
local connections : connectionMap = {}

local Connection = {
	VideoAnimationEnabled = "videoAnimationEnabled",
	AudioAnimationEnabled = "audioAnimationEnabled",
	FaceStreamingServiceStateChanged = "faceStreamingServiceStateChanged",
	VideoCaptureStarted = "videoCaptureStarted",
	VideoCaptureStopped = "videoCaptureStopped",
	VoiceChatMute = "voiceChatMute",
	VoiceChatParticipantsUpdate = "voiceChatParticipantsUpdate",
	VoiceChatParticipantsStateChanged = "voiceChatParticipantsStateChanged",
}

local function stopAllTimers(now)
	for index, timer in SubsessionTimers do
		timer:stop(now)
	end
end

local function canReportVoiceSessionIdVoiceExperienceId()
	return EngineFeatureVoiceChatServiceExposesSessionId and 
	EngineFeatureVoiceChatServiceExposesVoiceExperienceId and
	FFlagFacialStreamingStatsReportVoiceSessionIdExperienceId
end

local function isPlayerTransmittingFacs(userId)
	if Players.LocalPlayer.UserId == userId then
		local videoOrAudioAnimationEnabled = v2cEnabled or a2cEnabled
		-- FACS are transmitted either through V2C or A2C
		return videoOrAudioAnimationEnabled
	else
		--Receiving from remote player
		return playerJoinedGame[userId]
	end
end

-- Check the game/user settings to verify if FACS can be received at all.
local function updateFacsCanBeReceived()
	-- You can receive face animation through A2C even if the camera is disabled, so only check the audio settings.
	local audioEnabled = userAccountAudioEnabled and universeAudioEnabled
	trackingFacsCanBeReceived = audioEnabled
end

-- Used at the end of session to accumulate timers that haven't been stopped yet.
function FacialAnimationStreamingStats.trackRemainingFacs()
	local now = os.clock()
	stopAllTimers(now)
	sessionTotalElapsedTime = now - sessionStartTime

end

function fireAvatarChatSubsessionInput()
	if not trackingStarted then
		return
	end

	local now = os.time()
	local boolPlayerMicOn = playerMicOn[Players.LocalPlayer.userId]
	if boolPlayerMicOn == nil then
		boolPlayerMicOn = false
	end

	local VCService = VoiceChatServiceManager:getService()
	local customFields = {
		pid = tostring(game.PlaceId),
		sessionid = AnalyticsService:GetSessionId(),
		userid = tostring(Players.LocalPlayer.UserId),
		universeid = tostring(game.GameId),
		stateStarted = tostring(stateStartedTimeStamp),
		stateEnded = tostring(now),
		inExpCamOn = tostring(localCameraOn),
		inExpMicOn = tostring(boolPlayerMicOn),
		universeVideoAllowed = tostring(universeVideoEnabled),
		universeAudioAllowed = tostring(universeAudioEnabled),
		userAcctVideoAllowed = tostring(userAccountVideoEnabled),
		userAcctAudioAllowed = tostring(userAccountAudioEnabled),
	}

	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		customFields["playSessionId"] = AnalyticsService:GetPlaySessionId()
	end

	if canReportVoiceSessionIdVoiceExperienceId() and VCService then
		customFields["voiceSessionId"] = VCService:GetSessionId()
		customFields["voiceExperienceId"] = VCService:GetVoiceExperienceId()
	end

	LoggingProtocol:logRobloxTelemetryEvent(avatarChatSubsessionInputConfig, nil, customFields)

	stateStartedTimeStamp = now
end

function fireAvatarChatSubsessionStats()
	if not trackingStarted then
		return
	end

	FacialAnimationStreamingStats.trackRemainingFacs()

	local VCService = VoiceChatServiceManager:getService()
	local customFields = {
		pid = tostring(game.PlaceId),
		sessionid = AnalyticsService:GetSessionId(),
		userid = tostring(Players.LocalPlayer.UserId),
		universeid = tostring(game.GameId),
		sessionTimeSec = tostring(sessionTotalElapsedTime)
	}

	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		customFields["playSessionId"] = AnalyticsService:GetPlaySessionId()
	end

	for name, timer in SubsessionTimers do
		customFields[name] = tostring(timer:getElapsedTime())
	end

	if canReportVoiceSessionIdVoiceExperienceId() and VCService then
		customFields["voiceSessionId"] = VCService:GetSessionId()
		customFields["voiceExperienceId"] = VCService:GetVoiceExperienceId()
	end

	LoggingProtocol:logRobloxTelemetryEvent(avatarChatSubsessionStatsConfig, nil, customFields)	
end

local function trackFacsSendingReceiving(now)
	stopAllTimers(now)
	if trackingSendingFacs then
		if v2cEnabled then
			SubsessionTimers.sendV2CSec:start(now)
		end

		if a2cEnabled then
			SubsessionTimers.sendA2CSec:start(now)
		end

		if a2cEnabled and v2cEnabled then
			SubsessionTimers.sendAV2CSec:start(now)
		end
	end

	if trackingRemotePlayersCount > 0 then
		SubsessionTimers.recvSec:start(now)

		if trackingSendingFacs then
			if v2cEnabled then
				SubsessionTimers.sendRecvV2CSec:start(now)
			end

			if a2cEnabled then
				SubsessionTimers.sendRecvA2CSec:start(now)
			end

			if a2cEnabled and v2cEnabled then
				SubsessionTimers.sendRecvAV2CSec:start(now)
			end
		end
	end
end

local function trackFacsSending(isTransmittingFacs)
	trackingSendingFacs = isTransmittingFacs
end

local function trackFacsReceiving(userId, isTransmittingFacs)
	if trackingFacsCanBeReceived then
		if playerTransmittingFacs[userId] == nil and isTransmittingFacs then
			trackingRemotePlayersCount += 1
		elseif playerTransmittingFacs[userId] and not isTransmittingFacs then
			trackingRemotePlayersCount -= 1
			if trackingRemotePlayersCount < 0 then
				warn("FacialAnimationStreamingStats: Remote Players Count shouldn't be below 0")
				trackingRemotePlayersCount = 0
			end
		end
	end
end

-- Manages the timers for sending/receiving FACS. We call it whenever a variable changes to see if 
-- we need to update the sending/receiving state.
local function trackFacs(userId)
	if not trackingStarted then
		return
	end

	local isTransmittingFacs = isPlayerTransmittingFacs(userId)

	local now = os.clock()
	if userId == Players.LocalPlayer.UserId then
		trackFacsSending(isTransmittingFacs)
	else
		trackFacsReceiving(userId, isTransmittingFacs)
	end

	if isTransmittingFacs then
		playerTransmittingFacs[userId] = true
	else
		playerTransmittingFacs[userId] = nil
	end

	trackFacsSendingReceiving(now)
end

-- Setters for each of the variables that potentially affect the subsession state and FACS sending/receiving status
function FacialAnimationStreamingStats.setMicOn(userId, enabled)
	local micOn = enabled
	if not enabled then
		micOn = nil
	end

	if micOn ~= playerMicOn[userId] then
		-- Send analytics if the local player has muted/unmuted
		if userId == Players.LocalPlayer.UserId then
			fireAvatarChatSubsessionInput()
		end

		playerMicOn[userId] = micOn
		trackFacs(userId)
	end
end

function FacialAnimationStreamingStats.setCameraOn(enabled)
	if enabled ~= localCameraOn then
		-- Send an event if the local player has turned camera on/off
		fireAvatarChatSubsessionInput()
		localCameraOn = enabled
		trackFacs(Players.LocalPlayer.UserId)	
	end
end

function FacialAnimationStreamingStats.setVideoAnimationEnabled(enabled)
	if enabled ~= v2cEnabled then
		v2cEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)	
	end
end

function FacialAnimationStreamingStats.setAudioAnimationEnabled(enabled)
	if enabled ~= a2cEnabled then
		a2cEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)
	end
end

function FacialAnimationStreamingStats.setUserVideoEnabled(enabled)
	if enabled ~= userAccountVideoEnabled then
		userAccountVideoEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)
	end
end

function FacialAnimationStreamingStats.setUserAudioEnabled(enabled)
	if enabled ~= userAccountAudioEnabled then
		userAccountAudioEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)	
	end
end

function FacialAnimationStreamingStats.setUniverseVideoEnabled(enabled)
	if enabled ~= universeVideoEnabled then
		universeVideoEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)
	end
end

function FacialAnimationStreamingStats.setUniverseAudioEnabled(enabled)
	if enabled ~= universeAudioEnabled then
		universeAudioEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)	
	end
end

function FacialAnimationStreamingStats.setPlayerJoinedGame(userId, joined)
	if joined then
		playerJoinedGame[userId] = true
	else
		playerJoinedGame[userId] = nil
	end
	trackFacs(userId)
end

local function JoinAllExistingPlayers()
	for _, player in ipairs(Players:GetPlayers()) do
		FacialAnimationStreamingStats.setPlayerJoinedGame(player.UserId, true)
	end
end

local function trackFacsAllPlayers()
	for _, player in ipairs(Players:GetPlayers()) do
		trackFacs(player.UserId)
	end
end

function updateFacialAnimationStreamingServiceState(serviceState)
	local serviceState = FacialAnimationStreamingService.ServiceState
	FacialAnimationStreamingStats.setVideoAnimationEnabled(FaceAnimatorService.VideoAnimationEnabled)
	FacialAnimationStreamingStats.setAudioAnimationEnabled(FaceAnimatorService.AudioAnimationEnabled)

	FacialAnimationStreamingStats.setUniverseVideoEnabled(FacialAnimationStreamingService:IsVideoEnabled(serviceState))
	FacialAnimationStreamingStats.setUniverseAudioEnabled(FacialAnimationStreamingService:IsAudioEnabled(serviceState))

	setStreamingStatsUserVideoAndAudioEnabled(Players.LocalPlayer.UserId)
end

-- Create connections to various events that affect the subsession and sending/receiving status (e.g. mic toggled, 
-- remote player's mic toggled, camera on, video/audio animation enabled). Whenever these events occur we check 
-- if the subsession state has changed and potentially fire an analytics event.
local function ConnectStreamingAnalyticsCallbacks()
	local VCService = VoiceChatServiceManager:getService()
	if VCService then
		connections[Connection.VoiceChatParticipantsStateChanged] = VCService.ParticipantsStateChanged:Connect(function(participantsLeft, participantsJoined, statesUpdated)
			for _, updatedPlayer in ipairs(statesUpdated) do
				local playerId = updatedPlayer["userId"]
				FacialAnimationStreamingStats.setMicOn(playerId, not (updatedPlayer["isMutedLocally"] or updatedPlayer["isMuted"]))
			end
		end)
	end

	connections[Connection.VoiceChatParticipantsUpdate] = VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
		for userId, participantState in pairs(participants) do
			FacialAnimationStreamingStats.setMicOn(tonumber(userId), not (participantState["isMutedLocally"] or participantState["isMuted"]))
		end
	end)

	connections[Connection.VoiceChatMute] = VoiceChatServiceManager.muteChanged.Event:connect(function(muted)
		FacialAnimationStreamingStats.setMicOn(Players.LocalPlayer.UserId, not muted)
	end)

	FacialAnimationStreamingStats.setCameraOn(VideoCaptureService.Active)

	connections[Connection.VideoCaptureStarted] = VideoCaptureService.Started:Connect(function(cameraId)
		FacialAnimationStreamingStats.setCameraOn(true)
	end)

	connections[Connection.VideoCaptureStopped] = VideoCaptureService.Stopped:Connect(function(cameraId)
		FacialAnimationStreamingStats.setCameraOn(false)
	end)

	connections[Connection.VideoAnimationEnabled] = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function()
		FacialAnimationStreamingStats.setVideoAnimationEnabled(FaceAnimatorService.VideoAnimationEnabled)
	end)

	connections[Connection.AudioAnimationEnabled] = FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(function()
		FacialAnimationStreamingStats.setAudioAnimationEnabled(FaceAnimatorService.AudioAnimationEnabled)
	end)

	connections[Connection.FaceStreamingServiceStateChanged] = FacialAnimationStreamingService:GetPropertyChangedSignal("ServiceState"):Connect(function()
		updateFacialAnimationStreamingServiceState(FacialAnimationStreamingService.ServiceState)
	end)
	updateFacialAnimationStreamingServiceState(FacialAnimationStreamingService.ServiceState)
	
end

function connectPlayerAddedAndRemovedCallbacks()
	Players.PlayerRemoving:Connect(function(player)
		FacialAnimationStreamingStats.setPlayerJoinedGame(player.UserId, false)
	end)

	Players.PlayerAdded:Connect(function(player)
		FacialAnimationStreamingStats.setPlayerJoinedGame(player.UserId, true)
	end)
end

function setStreamingStatsUserVideoAndAudioEnabled(userId)
	local ok, state = pcall(FacialAnimationStreamingService.ResolveStateForUser, FacialAnimationStreamingService, userId)
	if ok then
		FacialAnimationStreamingStats.setUserVideoEnabled(FacialAnimationStreamingService:IsVideoEnabled(state))
		FacialAnimationStreamingStats.setUserAudioEnabled(FacialAnimationStreamingService:IsAudioEnabled(state))
	else
		warn("FacialAnimationStreamingStats: Call to FacialAnimationStreamingService.ResolveStateForUser failed")
	end
end

function cleanupFacialAnimationStreamingStats()
	for _, connection in pairs(connections) do
		if connection then
			connection:Disconnect()
		end
	end

	table.clear(connections)
	table.clear(playerMicOn)
	table.clear(playerTransmittingFacs)
	table.clear(playerJoinedGame)
end

function FacialAnimationStreamingStats.startTracking()
	JoinAllExistingPlayers()
	setStreamingStatsUserVideoAndAudioEnabled(Players.LocalPlayer.UserId)
	connectPlayerAddedAndRemovedCallbacks()
	ConnectStreamingAnalyticsCallbacks()
	updateFacsCanBeReceived()
	stateStartedTimeStamp = os.time()
	sessionStartTime = os.clock()
	trackingStarted = true
	trackFacsAllPlayers()
end

function FacialAnimationStreamingStats.endTracking()
	cleanupFacialAnimationStreamingStats()
	FacialAnimationStreamingStats.trackRemainingFacs()
	fireAvatarChatSubsessionInput()
	fireAvatarChatSubsessionStats()
	trackingStarted = false
end

return FacialAnimationStreamingStats