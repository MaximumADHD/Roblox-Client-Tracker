--!nonstrict

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

local RunService = game:GetService("RunService")
local avatarChatSubsessionStatsConfig = require(script.Parent.RobloxTelemetryConfigs.AvatarChatSubsessionStats)
local avatarChatSubsessionInputConfig = require(script.Parent.RobloxTelemetryConfigs.AvatarChatSubsessionInput)

local environment = "client"
if RunService:IsStudio() then
	environment = "studio"
end

local facsSent = false
local facsSentTimeStamp = nil
local facsReceived = false
local facsReceivedTimeStamp = nil

-- Track how many remote players we are subscribed to (i.e. unmuted) for FACS
-- If trackingFacsReceivedCount >= 1, then we are receiving FACS 
local trackingFacsReceivedCount = 0
local trackingFacsCanBeReceived = false

local trackingFacsSent = false
local trackingFacsSentElapsedTime = 0

local facsSentTimerStart = 0
local stateStartedTimeStamp = nil

local trackingStarted = false
local sessionStartTime = nil
local sessionTotalElapsedTime = nil

local trackingFacsReceivedElapsedTime = 0
local facsReceivedTimerStart = 0

local trackingFacsSentAndReceivedElapsedTime = 0
local facsSentAndReceivedTimerStart = 0

local playerTransmittingFacs = {}
local playerMicOn = {}
local localCameraOn = false

local userAccountVideoEnabled = false
local userAccountAudioEnabled = false
local placeVideoEnabled = false
local placeAudioEnabled = false

local localAudioAnimationEnabled = false
local localVideoAnimationEnabled = false

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

local function canReportVoiceSessionIdVoiceExperienceId()
	return EngineFeatureVoiceChatServiceExposesSessionId and 
	EngineFeatureVoiceChatServiceExposesVoiceExperienceId and
	FFlagFacialStreamingStatsReportVoiceSessionIdExperienceId
end

local function isPlayerTransmittingFacs(userId)
	if Players.LocalPlayer.UserId == userId then
		if EngineFeatureFacialAnimationStreamingServiceUseV2 then
			if not placeVideoEnabled then
				return false
			end
		end

		local videoOrAudioAnimationEnabled = localVideoAnimationEnabled or localAudioAnimationEnabled
		local micEnabledAndOn = playerMicOn[userId] and userAccountAudioEnabled and placeAudioEnabled

		-- Currently, if the mic is on, then FACS are transmitted either through V2C or A2C; 
		-- if the mic is off, no FACS are streamed. Thus, we just have to verify that the mic is on and animation is enabled.
		-- In the future this may change.
		return playerJoinedGame[userId] and videoOrAudioAnimationEnabled and micEnabledAndOn
	else
		--Receiving from remote player
		return playerJoinedGame[userId] and playerMicOn[userId]
	end
end

-- Check the game/user settings to verify if FACS can be received at all.
local function updateFacsCanBeReceived()
	if EngineFeatureFacialAnimationStreamingServiceUseV2 then
		if not placeVideoEnabled then
			return false
		end
	end

	-- You can receive face animation through A2C even if the camera is disabled, so only check the audio settings.
	local audioEnabled = userAccountAudioEnabled and placeAudioEnabled
	trackingFacsCanBeReceived = audioEnabled
end

-- Used at the end of session to accumulate timers that haven't been stopped yet.
function FacialAnimationStreamingStats.trackRemainingFacs()
	local now = os.clock()
	if trackingFacsReceivedCount > 0 then
		trackingFacsReceivedElapsedTime += now - facsReceivedTimerStart
		facsReceivedTimerStart = now
	end

	if trackingFacsSent then
		trackingFacsSentElapsedTime += now - facsSentTimerStart
		facsSentTimerStart = now
	end

	if trackingFacsSent and trackingFacsReceivedCount > 0 then
		trackingFacsSentAndReceivedElapsedTime += now - facsSentAndReceivedTimerStart
		facsSentAndReceivedTimerStart = now
	end

	sessionTotalElapsedTime = now - sessionStartTime
end

function fireAvatarChatSubsessionInput()
	local now = os.time()
	local boolPlayerMicOn = playerMicOn[Players.LocalPlayer.userId]
	if boolPlayerMicOn == nil then
		boolPlayerMicOn = false
	end

	if canReportVoiceSessionIdVoiceExperienceId() then
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
			gameCamAllowed = tostring(placeVideoEnabled),
			gameMicAllowed = tostring(placeAudioEnabled),
			userAcctMicAllowed = tostring(userAccountAudioEnabled),
			userAcctCamAllowed = tostring(userAccountVideoEnabled),
			voiceSessionId = VCService:GetSessionId(),
			voiceExperienceId = VCService:GetVoiceExperienceId()
		}

		LoggingProtocol:logRobloxTelemetryEvent(avatarChatSubsessionInputConfig, nil, customFields)
	else
		local customFields = {
			pid = tostring(game.PlaceId),
			sessionid = AnalyticsService:GetSessionId(),
			userid = tostring(Players.LocalPlayer.UserId),
			universeid = tostring(game.GameId),
			stateStarted = tostring(stateStartedTimeStamp),
			stateEnded = tostring(now),
			inExpCamOn = tostring(localCameraOn),
			inExpMicOn = tostring(boolPlayerMicOn),
			gameCamAllowed = tostring(placeVideoEnabled),
			gameMicAllowed = tostring(placeAudioEnabled),
			userAcctMicAllowed = tostring(userAccountAudioEnabled),
			userAcctCamAllowed = tostring(userAccountVideoEnabled),
		}
		LoggingProtocol:logRobloxTelemetryEvent(avatarChatSubsessionInputConfig, nil, customFields)
	end

	stateStartedTimeStamp = now
end

function fireAvatarChatSubsessionStats()
	FacialAnimationStreamingStats.trackRemainingFacs()

	if canReportVoiceSessionIdVoiceExperienceId() then
		local VCService = VoiceChatServiceManager:getService()
		local customFields = {
			pid = tostring(game.PlaceId),
			sessionid = AnalyticsService:GetSessionId(),
			userid = tostring(Players.LocalPlayer.UserId),
			universeid = tostring(game.GameId),
			facsSentSec = tostring(trackingFacsSentElapsedTime),
			facsReceivedSec = tostring(trackingFacsReceivedElapsedTime),
			facsSentReceivedSec = tostring(trackingFacsSentAndReceivedElapsedTime),
			sessionTimeSec = tostring(sessionTotalElapsedTime),
			voiceSessionId = VCService:GetSessionId(),
			voiceExperienceId = VCService:GetVoiceExperienceId()
		}
		
		LoggingProtocol:logRobloxTelemetryEvent(avatarChatSubsessionStatsConfig, nil, customFields)	
	else
		local customFields = {
			pid = tostring(game.PlaceId),
			sessionid = AnalyticsService:GetSessionId(),
			userid = tostring(Players.LocalPlayer.UserId),
			universeid = tostring(game.GameId),
			facsSentSec = tostring(trackingFacsSentElapsedTime),
			facsReceivedSec = tostring(trackingFacsReceivedElapsedTime),
			facsSentReceivedSec = tostring(trackingFacsSentAndReceivedElapsedTime),
			sessionTimeSec = tostring(sessionTotalElapsedTime)
		}

		LoggingProtocol:logRobloxTelemetryEvent(avatarChatSubsessionStatsConfig, nil, customFields)
	end
end

local function trackFacsSending(isTransmittingFacs, now)
	-- Go from not sending FACS to sending; turn on timer
	if not trackingFacsSent and isTransmittingFacs then
		facsSentTimerStart = now
		if trackingFacsReceivedCount > 0 then
			facsSentAndReceivedTimerStart = now
		end
	elseif trackingFacsSent and not isTransmittingFacs then
		-- Go from sending FACS to not sending; turn off timer and accumulate
		trackingFacsSentElapsedTime += now - facsSentTimerStart
		if trackingFacsReceivedCount > 0 then
			trackingFacsSentAndReceivedElapsedTime += now - facsSentAndReceivedTimerStart
		end
	end
	trackingFacsSent = isTransmittingFacs
end

local function trackFacsReceiving(userId, isTransmittingFacs, now)
	if trackingFacsCanBeReceived then
		if playerTransmittingFacs[userId] == nil and isTransmittingFacs then
			-- Go from not receiving FACS to receiving FACS; turn on timer
			if trackingFacsReceivedCount == 0 then
				facsReceivedTimerStart = now
				if trackingFacsSent then
					facsSentAndReceivedTimerStart = now
				end	
			end
			trackingFacsReceivedCount += 1
		elseif playerTransmittingFacs[userId] and not isTransmittingFacs then
			-- Go from receiving FACS to not receiving; turn off timer and accumulate
			if trackingFacsReceivedCount == 1 then
				trackingFacsReceivedElapsedTime += now - facsReceivedTimerStart
				if trackingFacsSent then
					trackingFacsSentAndReceivedElapsedTime += now - facsSentAndReceivedTimerStart
				end
			end
			trackingFacsReceivedCount -= 1
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
		trackFacsSending(isTransmittingFacs, now)
	else
		trackFacsReceiving(userId, isTransmittingFacs, now)
	end

	if isTransmittingFacs then
		playerTransmittingFacs[userId] = true
	else
		playerTransmittingFacs[userId] = nil
	end
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
	if enabled ~= localVideoAnimationEnabled then
		localVideoAnimationEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)	
	end
end

function FacialAnimationStreamingStats.setAudioAnimationEnabled(enabled)
	if enabled ~= localAudioAnimationEnabled then
		localAudioAnimationEnabled = enabled
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

function FacialAnimationStreamingStats.setPlaceVideoEnabled(enabled)
	if enabled ~= placeVideoEnabled then
		placeVideoEnabled = enabled
		trackFacs(Players.LocalPlayer.UserId)
	end
end

function FacialAnimationStreamingStats.setPlaceAudioEnabled(enabled)
	if enabled ~= placeAudioEnabled then
		placeAudioEnabled = enabled
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

function updateFacialAnimationStreamingServiceState(serviceState)
	local serviceState = FacialAnimationStreamingService.ServiceState
	FacialAnimationStreamingStats.setVideoAnimationEnabled(FaceAnimatorService.VideoAnimationEnabled)
	FacialAnimationStreamingStats.setPlaceVideoEnabled(FacialAnimationStreamingService:IsVideoEnabled(serviceState))
	setStreamingStatsUserVideoEnabled(Players.LocalPlayer.UserId)
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

function setStreamingStatsAudioSettings()
	local VoiceChatService = game:GetService("VoiceChatService")
	if VoiceChatService then
		FacialAnimationStreamingStats.setPlaceAudioEnabled(VoiceChatService.VoiceChatEnabledForPlaceOnRcc)
		local success, enabled = pcall(function()
			return VoiceChatService:IsVoiceEnabledForUserIdAsync(Players.LocalPlayer.UserId)
		end)
		
		FacialAnimationStreamingStats.setUserAudioEnabled(success and enabled)
	end
end

function connectPlayerAddedAndRemovedCallbacks()
	Players.PlayerRemoving:Connect(function(player)
		FacialAnimationStreamingStats.setPlayerJoinedGame(player.UserId, false)
	end)

	Players.PlayerAdded:Connect(function(player)
		FacialAnimationStreamingStats.setPlayerJoinedGame(player.UserId, true)
	end)
end

function setStreamingStatsUserVideoEnabled(userId)
	local ok, state = pcall(FacialAnimationStreamingService.ResolveStateForUser, FacialAnimationStreamingService, userId)
	if ok then
		FacialAnimationStreamingStats.setUserVideoEnabled(FacialAnimationStreamingService:IsVideoEnabled(state))
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
	setStreamingStatsUserVideoEnabled(Players.LocalPlayer.UserId)
	setStreamingStatsAudioSettings()
	connectPlayerAddedAndRemovedCallbacks()
	ConnectStreamingAnalyticsCallbacks()
	updateFacsCanBeReceived()
	stateStartedTimeStamp = os.time()
	sessionStartTime = os.clock()
	trackingStarted = true
end

function FacialAnimationStreamingStats.endTracking()
	cleanupFacialAnimationStreamingStats()
	FacialAnimationStreamingStats.trackRemainingFacs()
	fireAvatarChatSubsessionInput()
	fireAvatarChatSubsessionStats()
end

return FacialAnimationStreamingStats