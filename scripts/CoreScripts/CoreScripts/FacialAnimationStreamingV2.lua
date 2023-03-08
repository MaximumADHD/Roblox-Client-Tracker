--!nocheck

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local FFlagEnableSyncAudioWithVoiceChatMuteState = game:DefineFastFlag("EnableSyncAudioWithVoiceChatMuteState", false)
local FFlagEnableFacialAnimationKickPlayerWhenServerDisabled = game:DefineFastFlag("EnableFacialAnimationKickPlayerWhenServerDisabled", false)
local FFlagFacialAnimationStreamingServiceUsePlayerThrottling = game:GetEngineFeature("FacialAnimationStreamingServiceUsePlayerThrottling")
local FFlagStreamingAnimationPauseWhileEmoting = game:DefineFastFlag("StreamingAnimationPauseWhileEmoting", false)
local FFlagFacialAnimationStreamingServiceRequireVoiceChat = game:GetEngineFeature("FacialAnimationStreamingServiceRequireVoiceChat")
local FFlagFaceAnimatorDisableVideoByDefault = game:DefineFastFlag("FaceAnimatorDisableVideoByDefault", false)
local FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable = game:GetEngineFeature("FaceAnimatorNotifyLODRecommendCameraInputDisable")

local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")

local streamingStats = require(RobloxGui.Modules.FacialAnimationStreaming.FacialAnimationStreamingStats)
game:DefineFastFlag("AvatarChatSubsessionAnalyticsV2Lua2", false)

if not FaceAnimatorService or not FacialAnimationStreamingService then
	return
end

FaceAnimatorService.FlipHeadOrientation = true

-- FIXME V2C should not be toggled by selfie view.
--if game:GetFastFlag("SelfieViewFeature3") then
--	FaceAnimatorService.VideoAnimationEnabled = true
--end

local AvatarChatConstants = require(RobloxGui.Modules.Common.AvatarChatConstants)
local EmoteHelper = require(RobloxGui.Modules.Emote.EmoteHelper)
local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local Connections = {
	CharacterAdded = "CharacterAdded",
	CharacterRemoving = "CharacterRemoving",
	CharacterDescendantAdded = "CharacterDescendantAdded",
	CharacterDescendantRemoving = "CharacterDescendantRemoving",
	AnimatorDataModelReady = "AnimatorDataModelReady",
	PlayerEmoted = "PlayerEmoted",
	PlayerChatted = "PlayerChatted",
	EmoteFinished = "EmoteFinished"
}

local PlaceUnavailableMessage = RobloxTranslator:FormatByKey("Feature.FaceChat.Message.PlaceUnavailable")

local facialAnimationStreamingInited = false
local isPlayerAllowedViaThrottle = false

local playerJoinedChat = {}
local playerJoinedGame = {}

local playerAnimations = {}
local playerConnections = {}

local trackerErrorConnection = nil
local trackerPromptConnection = nil
local voiceChatMuteConnection = nil

local function playerTrace(message, player)
	local userId = ""
	local userName = ""
	if player then
		if player.UserId then
			userId = tostring(player.UserId)
		end
		if player.Name then
			userName = player.Name
		end
	end
	log:trace(string.format("%s {id: %s, name: %s}.", message, userId, userName))
end

local function clearConnection(player, connectionType)
	if playerConnections[player.UserId] and playerConnections[player.UserId][connectionType] then
		playerConnections[player.UserId][connectionType]:Disconnect()
		playerConnections[player.UserId][connectionType] = nil
	end
end

local function clearAllConnections(player)
	for _,connectionType in ipairs(Connections) do
		clearConnection(player, connectionType)
	end

	playerConnections[player.UserId] = {}
end

local function clearCharacterAnimations(player)
	playerTrace("clearCharacterAnimations", player)
	if playerAnimations[player.UserId] then
		if playerAnimations[player.UserId].animation then
			playerAnimations[player.UserId].animation:Destroy()
			playerAnimations[player.UserId].animation = nil
		end
		if playerAnimations[player.UserId].animationTrack then
			playerAnimations[player.UserId].animationTrack:Stop(0)
			playerAnimations[player.UserId].animationTrack:Destroy()
			playerAnimations[player.UserId].animationTrack = nil
		end
		playerAnimations[player.UserId] = nil
	end
end

local function getPlayerHumanoid(player)
	if player.Character then
		return player.Character:FindFirstChildOfClass("Humanoid")
	end

	return nil
end

local function getPlayerAnimator(player)
	local humanoid = getPlayerHumanoid(player)
	if humanoid then
		return humanoid:FindFirstChildOfClass("Animator")
	end

	return nil
end

local function pauseStreamingAnimationForPlayer(player)
	if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
		playerTrace("Pausing facial streaming animations...", player)
		-- We use `AdjustWeight(0.1)` instead of `Stop()`
		-- This is because we need to keep the stream animation running not to stop the camera.
		-- Please also notice that `AdjustWeight(0.0)` also won't work,
		-- since the Animator will stop the track anyway.
		playerAnimations[player.UserId].animationTrack:AdjustWeight(0.1, 0.5)
	end
end

local function resumeStreamingAnimationForPlayer(player)
	if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
		playerTrace("Resuming facial streaming animations...", player)
		playerAnimations[player.UserId].animationTrack:AdjustWeight(1.0, 0.5)
	end
end

local function handleEmote(player, emoteTrack, isChatTriggered)
	playerTrace(string.format("handleEmote {isChatTriggered:%s}", tostring(isChatTriggered)), player)
	if emoteTrack then
		-- clear any previous waiting connections
		clearConnection(player, Connections.EmoteFinished)

		-- pause streaming animations
		pauseStreamingAnimationForPlayer(player)

		-- wait for the emote to finish
		playerConnections[player.UserId][Connections.EmoteFinished] = EmoteHelper.createEmoteFinishEvent(player, emoteTrack, isChatTriggered):Connect(function()
			-- clear observer
			clearConnection(player, Connections.EmoteFinished)
			-- resume streaming animations
			resumeStreamingAnimationForPlayer(player)
		end)
	end
end

local function onPlayerChatted(player, msg)
	local humanoid = getPlayerHumanoid(player)
	if humanoid then
		local emote = nil
		if string.sub(msg, 1, 3) == "/e " then
			emote = string.sub(msg, 4)
		elseif string.sub(msg, 1, 7) == "/emote " then
			emote = string.sub(msg, 8)
		end

		-- Check it's a valid Emote
		-- Only certain words are valid as Chat Emotes
		if emote and EmoteHelper.LegacyDefaultEmotes[emote] then
			-- Add a delay to account for fade time of animations
			wait(EmoteHelper.EMOTE_LOOP_TRANSITION_WAIT_TIME)
			local emoteTrack = EmoteHelper.getAnyActiveDefaultChatTriggeredEmoteTrack(player)
			if emoteTrack then
				handleEmote(player, emoteTrack, true)
			end
		end
	end
end

local function onAnimatorAdded(player, animator)
	if not animator then
		return
	end

	-- clear any previous waiting connection
	clearConnection(player, Connections.AnimatorDataModelReady)

	-- prepare function for setting up the animator
	local setupAnimator = function()
		local playerAnimation = {}
		playerAnimation.animation = Instance.new("TrackerStreamAnimation")
		playerAnimation.animationTrack = animator:LoadStreamAnimation(playerAnimation.animation)
		playerAnimation.animationTrack.Priority = Enum.AnimationPriority.Idle
		playerAnimation.animationTrack:Play(0.1, 1)

		playerAnimations[player.UserId] = playerAnimation
	end

	-- check if data model is ready for this animator
	if animator:IsDescendantOf(game) then
		setupAnimator()
	else
		-- animator's DataModel is not ready yet
		-- we listen for changes in the ancestry
		playerConnections[player.UserId][Connections.AnimatorDataModelReady] = animator.AncestryChanged:Connect(function (child, parent)
			-- check if data model is ready
			if animator:IsDescendantOf(game) then
				-- stop listening for changes in the ancestry
				clearConnection(player, Connections.AnimatorDataModelReady)
				setupAnimator()
			end
		end)
	end
end

local function onHumanoidAdded(player, humanoid)
	if not FFlagStreamingAnimationPauseWhileEmoting then
		return
	end
	if not humanoid then
		return
	end

	-- start listening for emotes
	clearConnection(player, Connections.PlayerEmoted)
	playerConnections[player.UserId][Connections.PlayerEmoted] = humanoid.EmoteTriggered:Connect(function(emoteSuccess, emoteTrack)
		if emoteSuccess then
			handleEmote(player, emoteTrack, false)
		end
	end)
end

local function onCharacterDescendantAdded(player, descendant)
	if descendant:IsDescendantOf(game) then
		if descendant:IsA("Animator") then
			onAnimatorAdded(player, descendant)
		elseif FFlagStreamingAnimationPauseWhileEmoting and descendant:IsA("Humanoid") then
			onHumanoidAdded(player, descendant)
		end
	end
end

local function onCharacterDescendantRemoving(player, descendant)
	if descendant:IsA("Animator") then
		clearConnection(player, Connections.AnimatorDataModelReady)
		clearCharacterAnimations(player)
	elseif FFlagStreamingAnimationPauseWhileEmoting and descendant:IsA("Humanoid") then
		clearConnection(player, Connections.PlayerEmoted)
	end
end

local function onCharacterAdded(player, character)
	playerTrace("Player character added", player)

	-- clear previous connections
	clearConnection(player, Connections.CharacterDescendantAdded)
	clearConnection(player, Connections.CharacterDescendantRemoving)

	-- listen for descendants of the character
	playerConnections[player.UserId][Connections.CharacterDescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		onCharacterDescendantAdded(player, descendant)
	end)
	playerConnections[player.UserId][Connections.CharacterDescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		onCharacterDescendantRemoving(player, descendant)
	end)

	if FFlagStreamingAnimationPauseWhileEmoting then
		-- check if we have the humanoid ready to observe emotes
		onHumanoidAdded(player, getPlayerHumanoid(player))
	end
	-- check if we have the animator ready to animate character
	onAnimatorAdded(player, getPlayerAnimator(player))
end

local function onCharacterRemoving(player, character)
	playerTrace("Player character removing", player)

	-- clear previous connections
	clearAllConnections(player)

	clearCharacterAnimations(player)
end

local function playerUpdate(player)
	playerTrace("Player update", player)

	-- Setup the player animation if streaming is enabled, and:
	-- if player is local
	-- OR
	-- if player is remote and joined in voice chat as well.
	local isLocal = Players.LocalPlayer.UserId == player.UserId
	local joinedVoiceChat = ( false == FFlagFacialAnimationStreamingServiceRequireVoiceChat ) or playerJoinedChat[player.UserId]
	local setupPlayer = playerJoinedGame[player.UserId] and ( isLocal or joinedVoiceChat )

	clearAllConnections(player)

	if setupPlayer then
		playerTrace("Player update - joined", player)

		if player.Character then
			onCharacterAdded(player, player.Character)
		end

		playerConnections[player.UserId][Connections.CharacterAdded] = player.CharacterAdded:Connect(function(character)
			onCharacterAdded(player, character)
		end)
		playerConnections[player.UserId][Connections.CharacterRemoving] = player.CharacterRemoving:Connect(function(character)
			onCharacterRemoving(player, character)
		end)
		if FFlagStreamingAnimationPauseWhileEmoting then
			playerConnections[player.UserId][Connections.PlayerChatted] = player.Chatted:Connect(function(msg)
				onPlayerChatted(player, msg)
			end)
		end
	else -- Player left game/chat
		playerTrace("Player update - left", player)
		clearCharacterAnimations(player)
	end
end

local function JoinAllExistingPlayers()
	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = true
		playerUpdate(player)
	end
end

local function ConnectStateChangeCallback()
	local VoiceChatService = VoiceChatServiceManager:getService()
	if VoiceChatService then
		VoiceChatService.ParticipantsStateChanged:Connect(function(participantsLeft, participantsJoined, statesUpdated)
			for _, userId in ipairs(participantsLeft) do
				local player = Players:GetPlayerByUserId(userId)
				if player then
					playerTrace("Player leaving chat", player)

					playerJoinedChat[player.UserId] = nil
					playerUpdate(player)
				end
			end
			for _, userId in ipairs(participantsJoined) do
				local player = Players:GetPlayerByUserId(userId)
				if player then
					playerTrace("Player joining chat", player)

					playerJoinedChat[player.UserId] = true
					playerUpdate(player)
				end
			end
		end)
	else
		-- This will happen if mic permissions were denied.
		log:trace("Could not find VoiceChatService")
	end
	Players.PlayerRemoving:Connect(function(player)
		playerTrace("Player leaving game", player)
		if game:GetFastFlag("AvatarChatSubsessionAnalyticsV2Lua2") then
			if player.UserId == Players.LocalPlayer.UserId then
				streamingStats.endTracking()
			end
		end

		playerJoinedGame[player.UserId] = nil
		playerUpdate(player)
	end)

	Players.PlayerAdded:Connect(function(player)
		playerTrace("Player joining game", player)

		playerJoinedGame[player.UserId] = true
		playerUpdate(player)
	end)
end

-- NOTE: The connection of players to the facial animation system needs to be deferred until mic permissions are
-- completed. There is an issue where only one outstanding permissions request can happen at a time. This is a limitation of
-- the MessageBus system and the implementation of permissions protocol.
-- Currently, VoiceChatServiceManager::asyncInit will initiate a microphone permission request, then, when the camera is
-- opened for connecting the local player, another permissions request will be initiated - internally within the library. If
-- we don't wait for the mic permission to complete before connecting the local player, then both permission requests fail.
-- See JIRA task: https://jira.rbx.com/browse/LUAFDN-1092
--
function InitializeVoiceChat()
	local onCompletion = function()
		JoinAllExistingPlayers()
		ConnectStateChangeCallback()
		if game:GetFastFlag("AvatarChatSubsessionAnalyticsV2Lua2") then
			streamingStats.startTracking()
		end
	end

	if VoiceChatServiceManager then
		VoiceChatServiceManager:asyncInit():catch(function(error)
			if FFlagEnableSyncAudioWithVoiceChatMuteState and FFlagFacialAnimationStreamingServiceRequireVoiceChat then
				log:trace("Disabling audio processing when VoiceChat fails (possibly denied mic permission)")
				FaceAnimatorService.AudioAnimationEnabled = false
			end
		end):finally(onCompletion)

		if FFlagEnableSyncAudioWithVoiceChatMuteState then
			-- Sync VoiceChat mute status with FaceAnimatorService.AudioAnimationEnabled
			voiceChatMuteConnection = VoiceChatServiceManager.muteChanged.Event:connect(function(muted)
				log:trace("Syncing audio processing with VoiceChat mute changed: muted="..tostring(muted))
				FaceAnimatorService.AudioAnimationEnabled = not muted
			end)

			-- Initially set audio enable to false until VoiceChat mic is enabled
			local initialAudioEnabled = false
			if VoiceChatServiceManager.localMuted ~= nil then
				log:trace("Syncing audio processing with VoiceChat mute status: muted="..tostring(VoiceChatServiceManager.localMuted))
				initialAudioEnabled = not VoiceChatServiceManager.localMuted
			end
			FaceAnimatorService.AudioAnimationEnabled = initialAudioEnabled
		end
	elseif false == FFlagFacialAnimationStreamingServiceRequireVoiceChat then
			onCompletion()
	end
end

function CleanupVoiceChat()
	if FFlagEnableSyncAudioWithVoiceChatMuteState then
		if voiceChatMuteConnection then
			voiceChatMuteConnection:Disconnect()
			voiceChatMuteConnection = nil
		end
	end
end

function InitializeFacialAnimationStreaming(serviceState)
	if facialAnimationStreamingInited then
		return
	end

	facialAnimationStreamingInited = true

	FaceAnimatorService:Init(
		FacialAnimationStreamingService:IsVideoEnabled(serviceState),
		FacialAnimationStreamingService:IsAudioEnabled(serviceState))

	-- Handle TrackerErrors
	trackerErrorConnection = FaceAnimatorService.TrackerError:Connect(function(error)
		playerTrace(string.format("TrackerError: %s", tostring(error)), nil)
		if error == (Enum::any).TrackerError.VideoNoPermission then
			TrackerMenu:showPrompt(TrackerPromptType.VideoNoPermission)
		else
			TrackerMenu:showPrompt(TrackerPromptType.NotAvailable)
		end

		-- TODO: what should happen after error? Disable facial streaming?
	end)

	if FFlagFaceAnimatorDisableVideoByDefault then -- could be 1 liner, but easier to remove flag later this way
		-- At start, turn off video until user turns it on manually.
		-- This is what Settings should use to re-enable camera when user presses camera button.
		FaceAnimatorService.VideoAnimationEnabled = false
	end

	if FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable then
		-- Handle prompts from FaceAnimatorService
		trackerPromptConnection = FaceAnimatorService.TrackerPrompt:Connect(function(prompt)
			playerTrace(string.format("TrackerPrompt: %s", tostring(prompt)), nil)
			if prompt == (Enum::any).TrackerPromptEvent.LODCameraRecommendDisable then
				TrackerMenu:showPrompt(TrackerPromptType.LODCameraRecommendDisable)
			end
			-- TODO: Do we want to enable some idle cycle on the non-a2c inputs?
		end)
	end

	InitializeVoiceChat()
end

function CleanupFacialAnimationStreaming()
	if not facialAnimationStreamingInited then
		return
	end

	facialAnimationStreamingInited = false

	CleanupVoiceChat()

	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = nil
		playerUpdate(player)
	end

	if trackerErrorConnection then
		trackerErrorConnection:Disconnect()
		trackerErrorConnection = nil
	end

	if FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable then
		if trackerPromptConnection then
			trackerPromptConnection:Disconnect()
			trackerPromptConnection = nil
		end
	end
end

-- Throttling
local function onThrottleUpdate(allowed, optedIn, serviceState)
	log:trace(string.format("[onThrottleUpdate] allowed: %s, optedIn:%s, state: %s", tostring(allowed), tostring(optedIn), tostring(serviceState)))

	if allowed and FacialAnimationStreamingService:IsServerEnabled(serviceState) then
		InitializeFacialAnimationStreaming(serviceState)
	else
		CleanupFacialAnimationStreaming()

		if FFlagEnableFacialAnimationKickPlayerWhenServerDisabled then
			Players.LocalPlayer:Kick(PlaceUnavailableMessage)
		elseif optedIn then
			TrackerMenu:showPrompt(TrackerPromptType.FeatureDisabled)
		end
	end
end

-- Init with service state
local function updateWithServiceState(serviceState)
	log:trace(string.format("[updateWithServiceState] state: %s", tostring(serviceState)))

	if FacialAnimationStreamingService:IsPlaceEnabled(serviceState) then
		if FFlagFacialAnimationStreamingServiceUsePlayerThrottling then
			local ThrottleUpdateEvent = RobloxReplicatedStorage:WaitForChild(AvatarChatConstants.ThrottleUpdateEventName, math.huge)
			ThrottleUpdateEvent.OnClientEvent:Connect(function(allowed, optedIn)
				onThrottleUpdate(allowed, optedIn, serviceState)
			end)
		else
			onThrottleUpdate(true, true, serviceState)
		end
	else
		CleanupFacialAnimationStreaming()
	end
end

-- Listen for service state
FacialAnimationStreamingService:GetPropertyChangedSignal("ServiceState"):Connect(function()
	updateWithServiceState(FacialAnimationStreamingService.ServiceState)
end)
updateWithServiceState(FacialAnimationStreamingService.ServiceState)
