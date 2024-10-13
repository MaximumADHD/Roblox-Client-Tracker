--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local Players = game:GetService("Players")
local ExperienceService = game:GetService("ExperienceService")
local HttpService = game:GetService("HttpService")
local Promise = require(CorePackages.Promise)

local RobloxGui = CoreGui.RobloxGui
local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)
local Rodux = require(CorePackages.Packages.Rodux)
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local CoreVoiceManager = VoiceChatCore.CoreVoiceManager.default
local createPersistenceMiddleware = CrossExperience.Middlewares.createPersistenceMiddleware

local CoreGuiModules = RobloxGui.Modules
local BlockingUtility = require(CoreGuiModules.BlockingUtility)

local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)
local FFlagUseNotificationServiceIsConnected = game:DefineFastFlag("UseNotificationServiceIsConnected", false)
local FFlagDefaultChannelEnableDefaultVoice = game:DefineFastFlag("DefaultChannelEnableDefaultVoice", true)
local FFlagAlwaysJoinWhenUsingAudioAPI = game:DefineFastFlag("AlwaysJoinWhenUsingAudioAPI", false)
local FFlagDefaultChannelDontWaitOnCharacterWithAudioApi = game:DefineFastFlag("DefaultChannelDontWaitOnCharacterWithAudioApi", false)
local FFlagEnableCrossExpVoiceDebug = game:DefineFastFlag("EnableCrossExpVoiceDebug", false)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")
local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")
local NotificationServiceIsConnectedAvailable = game:GetEngineFeature("NotificationServiceIsConnectedAvailable")
local AudioFocusManagementEnabled = game:GetEngineFeature("AudioFocusManagement")

local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local Analytics = VoiceChatCore.Analytics.new()

local VoiceChatService = game:GetService("VoiceChatService")

type VoiceStatus = CrossExperience.VoiceStatus
local Constants = CrossExperience.Constants

local PersistenceMiddleware = createPersistenceMiddleware({
	storeKey = CrossExperience.Constants.STORAGE_CEV_STORE_KEY,
})

local PartyAudioPlayer = CrossExperience.PartyAudioPlayer.default

local createReducers = function()
	-- In order to simplify the data sync between this background state and foreground state I am using the expected foreground store shape
	return Rodux.combineReducers({
		Squad = Rodux.combineReducers({
			CrossExperienceVoice = CrossExperience.installReducer(),
		})
	})
end

local cevEventManager = CrossExperience.EventManager.new(CrossExperience.Constants.EXPERIENCE_TYPE_VOICE)

local function notifyVoiceStatusChange(status: VoiceStatus, detail: string?)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_STATUS_CHANGED, {
		status = status,
		detail = detail,
	})
end

local store = Rodux.Store.new(createReducers(), nil, {
	Rodux.thunkMiddleware,
	PersistenceMiddleware.getMiddleware(),
})

-- For debugging purposes can pass "log" as a second parameter
cevEventManager:subscribe(store)

-- Await completely the DM readiness for CrossExperience communication and RCC replication
if not game:IsLoaded() then
	game.Loaded:Wait()
end

notifyVoiceStatusChange(Constants.VOICE_STATUS.CONNECTED_RCC)

cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_EXPERIENCE_JOINED, {
	jobId = game.JobId,
	placeId = game.PlaceId,
	gameId = game.GameId,
})

local localUserId = (Players.LocalPlayer and Players.LocalPlayer.UserId) or -1

local onPlayerAdded = function(player)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_ADDED, {
		userId = player.UserId,
		isLocalUser = player.UserId == localUserId,
		username = player.Name,
		displayname = player.DisplayName,
	})
end

local onPlayerRemoved = function(player)
	cevEventManager:notify(CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_REMOVED, {
		userId = player.UserId,
		isLocalUser = player.UserId == localUserId,
	})
	PartyAudioPlayer:playSound("leave")
end

local onLocalPlayerActiveChanged = function(result)
	local eventName = if result.isActive then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_ACTIVE else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_INACTIVE
	cevEventManager:notify(eventName, {
		userId = localUserId,
		isLocalUser = true,
	})
end

local onLocalPlayerMuteChanged = function (isMuted)
	local eventName = if isMuted then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_MUTED else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_UNMUTED
	cevEventManager:notify(eventName, {
		userId = localUserId,
		isLocalUser = true,
	})
end

local onParticipantsUpdated = function (participants)
	for userId, participantState in pairs(participants) do
		local isActive = participantState.isSignalActive
		local isMuted = participantState.isMuted

		local activeEventName = if isActive then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_ACTIVE else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_IS_INACTIVE
		local mutedEventName = if isMuted then CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_MUTED else CrossExperience.Constants.EVENTS.PARTY_VOICE_PARTICIPANT_WAS_UNMUTED

		local eventPayload = {
			userId = userId,
			isLocalUser = userId == localUserId,
		}

		cevEventManager:notify(mutedEventName, eventPayload)
		cevEventManager:notify(activeEventName, eventPayload)
	end
end

local toggleMutePlayer = function (params)
	local userId = tonumber(params.userId)
	local isLocalPlayer = localUserId == userId
	if isLocalPlayer then
		CoreVoiceManager:ToggleMic("Squads")
	else
		CoreVoiceManager:ToggleMutePlayer(userId)
	end
end

function handleParticipants()
	Players.PlayerAdded:Connect(function(player)
		onPlayerAdded(player)
		PartyAudioPlayer:playSound("join")
	end)
	Players.PlayerRemoving:Connect(onPlayerRemoved)

	for _, player in pairs(Players:GetPlayers()) do
		if player:IsA("Player") then
			onPlayerAdded(player)
			if player.UserId == localUserId then
				PartyAudioPlayer:playSound("join")
			end
		end
	end
end

function handleMicrophone()
	CoreVoiceManager.muteChanged.Event:Connect(onLocalPlayerMuteChanged)
	cevEventManager:addObserver(CrossExperience.Constants.EVENTS.MUTE_PARTY_VOICE_PARTICIPANT, toggleMutePlayer)
	cevEventManager:addObserver(CrossExperience.Constants.EVENTS.UNMUTE_PARTY_VOICE_PARTICIPANT, toggleMutePlayer)
end

function onCoreVoiceManagerInitialized()
	CoreVoiceManager:getService().PlayerMicActivitySignalChange:Connect(onLocalPlayerActiveChanged)
	CoreVoiceManager.participantsUpdate.Event:Connect(onParticipantsUpdated)

	notifyVoiceStatusChange(Constants.VOICE_STATUS.CONNECTED_VOICE)
end

-- This function is used to unmute the microphone once when the player joins the default channel
-- and has set the default mute state which is captured in localMuted of CoreVoiceManager after
-- SetupParticipantListeners() is called in CoreVoiceManager:asyncInit()
-- TODO: JoinByGroupIdToken should respect defaultMuted boolean.
-- This is a temporary solution to unmute the microphone once when the player joins the default channel
local function unmuteMicrophoneOnce()
	CoreVoiceManager.muteChanged.Event:Once(function(muted)
		if muted ~= nil then
			CoreVoiceManager:ToggleMic("BackgroundDM")
		end
	end)
end

local function initializeDefaultChannel(defaultMuted)
	local VoiceChatInternal = CoreVoiceManager:getService()

	if not VoiceChatInternal then
		return nil
	end

	BlockingUtility:InitBlockListAsync()

	log:info("Joining default channel")

	local success = VoiceChatInternal:JoinByGroupIdToken("default", defaultMuted)

	if GetFFlagEnableLuaVoiceChatAnalytics() then
		if success then
			Analytics:reportVoiceChatJoinResult(true, "defaultJoinSuccess")
		else
			Analytics:reportVoiceChatJoinResult(false, "defaultJoinFailed", "error")
		end
	end

	return success
end

if NotificationServiceIsConnectedAvailable and FFlagUseNotificationServiceIsConnected then
	if not NotificationService.IsConnected then
		log:debug("NotificationService is not yet connected")
		NotificationService:GetPropertyChangedSignal("IsConnected"):Wait()
	end
	log:debug("NotificationService connected")
end

if not FFlagDefaultChannelDontWaitOnCharacterWithAudioApi or not VoiceChatService.UseNewAudioApi then
	if not Players.LocalPlayer.Character then
		Players.LocalPlayer.CharacterAdded:Wait()
		log:debug("Player character loaded")
	else
		log:debug("Player character already loaded")
	end
end

if EnableDefaultVoiceAvailable and FFlagDefaultChannelEnableDefaultVoice then
	local VoiceChatService = game:FindService("VoiceChatService")
	if FFlagAlwaysJoinWhenUsingAudioAPI then
		if not VoiceChatService then
			log:info("VoiceChatService not found. Assuming default values.")
			-- We only don't want to early out when the new audio API is enabled
		elseif not VoiceChatService.EnableDefaultVoice and not VoiceChatService.UseNewAudioApi then
			log:debug("Default channel is disabled.")
			if GetFFlagEnableLuaVoiceChatAnalytics() then
				Analytics:reportVoiceChatJoinResult(false, "defaultDisabled")
				notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_SETUP, "Default channel disabled")
			end
			return
		end
	else
		if not VoiceChatService then
			log:info("VoiceChatService not found. Assuming default values.")
		elseif not VoiceChatService.EnableDefaultVoice then
			log:debug("Default channel is disabled.")
			if GetFFlagEnableLuaVoiceChatAnalytics() then
				Analytics:reportVoiceChatJoinResult(false, "defaultDisabled")
				notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_SETUP, "Default channel disabled")
			end
			return
		end
	end
end


CoreVoiceManager:subscribe('GetPermissions', function (callback, permissions)
	-- At this point we assume that you were able to join Background DM and the required permissions were resolved prior to that
	callback({
		hasMicPermissions = true
	})
end)

-- setup listeners
handleParticipants()
handleMicrophone()

-- unmute mic at the start once muted state is initialized
unmuteMicrophoneOnce()

if FFlagEnableCrossExpVoiceDebug then
	cevEventManager:addObserver(CrossExperience.Constants.EVENTS.DEBUG_COMMAND, function(params)
		if params.name == "dump_session" then
			print('----------- CEV BACKGROUND -----------')
			print('Store State', HttpService:JSONEncode(store:getState()))
			print('--------------------------------------')
			print('CoreVoiceManager State:')
			print('Participants', HttpService:JSONEncode(CoreVoiceManager.participants))
			print('Local Muted', HttpService:JSONEncode({ value = CoreVoiceManager.localMuted }))
			print('Mute All', HttpService:JSONEncode({ value = CoreVoiceManager.muteAll }))
			print('Muted Anyone', HttpService:JSONEncode({ value = CoreVoiceManager._mutedAnyone }))
			print('Is Talking', HttpService:JSONEncode({ value = CoreVoiceManager.isTalking }))
			print('Muted Players', HttpService:JSONEncode(CoreVoiceManager.mutedPlayers))
			print('Audio Devices', HttpService:JSONEncode(CoreVoiceManager.audioDevices))
			print('Voice Enabled', HttpService:JSONEncode({ value = CoreVoiceManager.voiceEnabled }))
			print('Permissions Result', HttpService:JSONEncode(CoreVoiceManager.communicationPermissionsResult))
			print('Voice Join Progress', HttpService:JSONEncode({ value = CoreVoiceManager.VoiceJoinProgress }))
			print('-----------------------------')
		end
	end)
end

notifyVoiceStatusChange(Constants.VOICE_STATUS.CONNECTING_VOICE)

CoreVoiceManager:subscribe("OnRequestMicPermissionRejected", function()
	notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_MIC_REJECTED)
end)

CoreVoiceManager:subscribe("OnPlayerModerated", function()
	notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_MODERATED, "On Player Moderated")
end)

CoreVoiceManager:subscribe("OnInitialJoinFailed", function()
	notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_JOIN, "Initial Join failed")
end)

CoreVoiceManager:subscribe("OnRetryRequested", function()
	notifyVoiceStatusChange(Constants.VOICE_STATUS.CONNECTING_VOICE, "Retry requested")
end)

CoreVoiceManager:subscribe("OnReportJoinFailed", function(result)
	log:error("CEV OnReportJoinFailed " .. result)
end)

CoreVoiceManager:asyncInit():andThen(function()
	local joinInProgress = initializeDefaultChannel(false)
	if joinInProgress == false then
		notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_VOICE_JOIN, "Initial Join failed")
	else
		onCoreVoiceManagerInitialized()
	end

	if AudioFocusManagementEnabled then
		local success, AudioFocusService = pcall(function()
			return game:GetService("AudioFocusService")
		end)
		if success and AudioFocusService then
			local contextId = CrossExperience.Constants.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID
			local focusPriority = CrossExperience.Constants.AUDIO_FOCUS_MANAGEMENT.CEV.FOCUS_PRIORITY
			AudioFocusService:RegisterContextIdFromLua(contextId)

			local deafenAll = function()
				CoreVoiceManager:MuteAll(true, "AudioFocusManagement CEV")
				if not CoreVoiceManager.localMuted then
					CoreVoiceManager:ToggleMic()
				end
			end

			local undeafenAll = function()
				CoreVoiceManager:MuteAll(false, "AudioFocusManagement CEV")
				if CoreVoiceManager.localMuted then
					CoreVoiceManager:ToggleMic()
				end
			end

			AudioFocusService.OnDeafenVoiceAudio:Connect(function(serviceContextId)
				if serviceContextId == contextId then
					log:info("CEV OnDeafenVoiceAudio fired" .. serviceContextId)
					deafenAll()
				end
			end)

			AudioFocusService.OnUndeafenVoiceAudio:Connect(function(serviceContextId)
				if serviceContextId == contextId then
					log:info("CEV OnUndeafenVoiceAudio fired" .. serviceContextId)
					undeafenAll()
				end
			end)


			local requestAudioFocusWithPromise = function(id, prio)
				return Promise.new(function(resolve, reject)
					local requestSuccess, focusGranted = pcall(AudioFocusService.RequestFocus, AudioFocusService, id, prio)
					if requestSuccess then
						resolve(focusGranted) -- Still resolve, but indicate failure to grant focus
					else
						reject('Failed to call RequestFocus due to an error') -- Reject the promise in case of an error
					end
				end)
			end

			requestAudioFocusWithPromise(contextId, focusPriority)
			:andThen(function(focusGranted)
				if focusGranted then
					log:info("CEV audio focus request granted, preparing to undeafen.")
					CoreVoiceManager.muteChanged.Event:Once(function(muted)
						if muted ~= nil then
							CoreVoiceManager:MuteAll(false, "AudioFocusManagement CEV")
						end
					end)
				else
					log:info("CEV audio focus request denied, preparing to deafen.")
					CoreVoiceManager.muteChanged.Event:Once(function(muted)
						if muted ~= nil then
							CoreVoiceManager:MuteAll(true, "AudioFocusManagement CEV")
						end
					end)
				end
			end)
			:catch(function()
				log:info('[CEV] Error requesting focus inside CEV')
			end)
		else
			log:info("AudioFocusService did not initialize")
		end
	end
end):catch(function(err)
	-- If voice chat doesn't initialize, silently halt rather than throwing
	-- a unresolved promise error. Don't report an event since the manager
	-- will handle that.
	log:info("CoreVoiceManager did not initialize {}", err)
	notifyVoiceStatusChange(Constants.VOICE_STATUS.ERROR_INIT, err)
end)
