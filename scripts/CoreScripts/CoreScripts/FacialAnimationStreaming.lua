--!nonstrict

local VRService = game:GetService("VRService")

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local FFlagEnableSyncAudioWithVoiceChatMuteState = game:DefineFastFlag("EnableSyncAudioWithVoiceChatMuteState", false)
local FFlagEnableFacialAnimationKickPlayerWhenServerDisabled = game:DefineFastFlag("EnableFacialAnimationKickPlayerWhenServerDisabled", false)
local FFlagFacialAnimationStreamingServiceUsePlayerThrottling = game:GetEngineFeature("FacialAnimationStreamingServiceUsePlayerThrottling")
local FFlagFacialAnimationStreamingServiceRequireVoiceChat = game:GetEngineFeature("FacialAnimationStreamingServiceRequireVoiceChat")
local FFlagLoadStreamAnimationReplaceErrorsWithTelemetry = game:GetEngineFeature("LoadStreamAnimationReplaceErrorsWithTelemetryFeature")
local FFlagFaceAnimatorDisableVideoByDefault = game:DefineFastFlag("FaceAnimatorDisableVideoByDefault", false)
local FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable = game:GetEngineFeature("FaceAnimatorNotifyLODRecommendCameraInputDisable")
local FFlagFacialAnimationStreamingPauseOnMute = game:GetEngineFeature("FacialAnimationStreamingPauseOnMute")
local FFlagFacialAnimationStreamingServiceFixAnimatorSetup = game:DefineFastFlag("FacialAnimationStreamingServiceFixAnimatorSetup", false)
local FFlagFacialAnimationStreamingServiceAvoidInitWithoutUniverseSettingsEnabled = game:DefineFastFlag("FacialAnimationStreamingServiceAvoidInitWithoutUniverseSettingsEnabled", false)
local DFFlagSystemUtilCheckSSE41 = game:GetEngineFeature("SystemUtilCheckSSE41")
local FFlagFacialAnimationStreamingClearTrackImprovementsV2 = game:DefineFastFlag("FacialAnimationStreamingClearTrackImprovementsV2", false)
local FFlagFacialAnimationStreamingPauseTrackWhenAllOff = game:DefineFastFlag("FacialAnimationStreamingPauseTrackWhenAllOff", false)
local FFlagFacialAnimationStreamingDisableLipsyncForVRUser = game:DefineFastFlag("FacialAnimationStreamingDisableLipsyncForVRUser", false)
game:DefineFastFlag("FacialAnimationStreamingValidateAnimatorBeforeRemoving",false)
game:DefineFastFlag("FacialAnimationStreamingSearchForReplacementWhenRemovingAnimator", false)
local GetFFlagIrisSettingsEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisSettingsEnabled
local GetFFlagAvatarChatServiceEnabled = require(RobloxGui.Modules.Flags.GetFFlagAvatarChatServiceEnabled)
local AvatarChatService = if GetFFlagAvatarChatServiceEnabled() then game:GetService("AvatarChatService") else nil
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")

local heartbeatStats = require(RobloxGui.Modules.FacialAnimationStreaming.FacialAnimationStreamingHeartbeatStats)

if not FaceAnimatorService or not FacialAnimationStreamingService then
	return
end

FaceAnimatorService.FlipHeadOrientation = true

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
local playerAnimators = {}

local trackerErrorConnection = nil
local trackerPromptConnection = nil
local voiceChatMuteConnection = nil

local audioAnimationToggledConnection = nil
local videoAnimationToggledConnection = nil

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
		if FFlagFacialAnimationStreamingClearTrackImprovementsV2 then
			if playerAnimations[player.UserId].animationTrack then
				playerAnimations[player.UserId].animationTrack:Stop(0.0)
				playerAnimations[player.UserId].animationTrack = nil
			end
			if playerAnimations[player.UserId].animation then
				playerAnimations[player.UserId].animation = nil
			end
		else
			if playerAnimations[player.UserId].animation then
				playerAnimations[player.UserId].animation:Destroy()
				playerAnimations[player.UserId].animation = nil
			end
			if playerAnimations[player.UserId].animationTrack then
				playerAnimations[player.UserId].animationTrack:Stop(0)
				playerAnimations[player.UserId].animationTrack:Destroy()
				playerAnimations[player.UserId].animationTrack = nil
			end
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

	if not animator.Parent or not animator.Parent:IsA("Humanoid") then
		return
	end

	if FFlagFacialAnimationStreamingServiceFixAnimatorSetup and playerAnimations[player.UserId] then
		playerTrace("onAnimatorAdded already done; skipping", player)
		return
	end

	-- clear any previous waiting connection
	clearConnection(player, Connections.AnimatorDataModelReady)

	-- prepare function for setting up the animator
	local setupAnimator = function()
		local playerAnimation = {}
		playerAnimation.animation = Instance.new("TrackerStreamAnimation")
		playerAnimation.animationTrack = animator:LoadStreamAnimation(playerAnimation.animation)

		if FFlagLoadStreamAnimationReplaceErrorsWithTelemetry then
			if not playerAnimation.animationTrack then
				return
			end
		end

		playerAnimation.animationTrack.Priority = Enum.AnimationPriority.Idle
		playerAnimation.animationTrack:Play(0.1, 1)

		playerAnimations[player.UserId] = playerAnimation

		if game:GetFastFlag("FacialAnimationStreamingValidateAnimatorBeforeRemoving") then
			-- set animator
			playerAnimators[player.UserId] = animator
		end
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
		elseif descendant:IsA("Humanoid") then
			onHumanoidAdded(player, descendant)
		end
	end
end

local function onCharacterDescendantRemoving(player, descendant)
	if descendant:IsA("Animator") then
		if game:GetFastFlag("FacialAnimationStreamingValidateAnimatorBeforeRemoving") then
			if descendant == playerAnimators[player.UserId] then
				clearConnection(player, Connections.AnimatorDataModelReady)
				clearCharacterAnimations(player)
				playerAnimators[player.UserId] = nil

				-- check for any remaining animator in the hierarchy
				if game:GetFastFlag("FacialAnimationStreamingSearchForReplacementWhenRemovingAnimator") then
					local animator = getPlayerAnimator(player)
					if animator then
						onAnimatorAdded(player, animator)
					end
				end
			end
		else
			clearConnection(player, Connections.AnimatorDataModelReady)
			clearCharacterAnimations(player)
		end
	elseif descendant:IsA("Humanoid") then
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

	-- check if we have the humanoid ready to observe emotes
	onHumanoidAdded(player, getPlayerHumanoid(player))
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

	if FFlagFacialAnimationStreamingDisableLipsyncForVRUser then
		--not doing lipsync for local player for now if he/she is in VR as we currently have an issue in nexus vr places for users in VR
		--and overall need to test in VR more.
		if VRService.VREnabled then
			if player.UserId == Players.LocalPlayer.UserId then
				log:trace("no lipsync for user in VR for now")
				return
			end
		end
	end


	if setupPlayer then
		if FFlagFacialAnimationStreamingServiceFixAnimatorSetup and playerAnimations[player.UserId] then
			playerTrace("Player already setup", player)
			return
		end
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
		playerConnections[player.UserId][Connections.PlayerChatted] = player.Chatted:Connect(function(msg)
			onPlayerChatted(player, msg)
		end)
	else -- Player left game/chat
		playerTrace("Player update - left", player)
		clearCharacterAnimations(player)
	end
end

local function toggleMute(userId, muted)
	if playerAnimations[userId] and playerAnimations[userId].animationTrack then
		playerAnimations[userId].animationTrack:TogglePause(muted)
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

	if FFlagFacialAnimationStreamingPauseOnMute then
		local localPlayerId = Players.LocalPlayer.UserId
		VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
			for userId, state in pairs(participants) do
				local userIdAsNumber = tonumber(userId)
				if userIdAsNumber ~= localPlayerId then
					toggleMute(userIdAsNumber, state.isMutedLocally)
				end
			end
		end)
	end

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

function InitializeFacialAnimationStreaming(settings)
	if facialAnimationStreamingInited then
		return
	end

	facialAnimationStreamingInited = true

	if DFFlagSystemUtilCheckSSE41 then
		-- Handle TrackerErrors
		trackerErrorConnection = FaceAnimatorService.TrackerError:Connect(function(error)
			playerTrace(string.format("TrackerError: %s", tostring(error)), nil)
			if error == (Enum::any).TrackerError.VideoNoPermission then
				TrackerMenu:showPrompt(TrackerPromptType.VideoNoPermission)
			elseif error == (Enum::any).TrackerError.VideoUnsupported then
				TrackerMenu:showPrompt(TrackerPromptType.VideoUnsupported)
			elseif error == (Enum::any).TrackerError.UnsupportedDevice then
				TrackerMenu:showPrompt(TrackerPromptType.UnsupportedDevice)
			else
				TrackerMenu:showPrompt(TrackerPromptType.NotAvailable)
			end
		end)
	end

	if GetFFlagAvatarChatServiceEnabled() then
		FaceAnimatorService:Init(
			AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserVideo),
			AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserAudio))
	else
		local ok, playerState =
			pcall(FacialAnimationStreamingService.ResolveStateForUser, FacialAnimationStreamingService, Players.LocalPlayer.UserId)

		if not ok then
			playerTrace("Failed to resolve state for user.", Players.LocalPlayer)
			return
		end

		FaceAnimatorService:Init(
			FacialAnimationStreamingService:IsVideoEnabled(settings) and FacialAnimationStreamingService:IsVideoEnabled(playerState),
			FacialAnimationStreamingService:IsAudioEnabled(settings) and FacialAnimationStreamingService:IsAudioEnabled(playerState))
	end

	if not DFFlagSystemUtilCheckSSE41 then
		-- Handle TrackerErrors (moved to above Init(), remove this on DFFlagSystemUtilCheckSSE41 clean up)
		trackerErrorConnection = FaceAnimatorService.TrackerError:Connect(function(error)
			playerTrace(string.format("TrackerError: %s", tostring(error)), nil)
			if error == (Enum::any).TrackerError.VideoNoPermission then
				TrackerMenu:showPrompt(TrackerPromptType.VideoNoPermission)
			elseif error == (Enum::any).TrackerError.VideoUnsupported then
				TrackerMenu:showPrompt(TrackerPromptType.VideoUnsupported)
			else
				TrackerMenu:showPrompt(TrackerPromptType.NotAvailable)
			end

			-- TODO: what should happen after error? Disable facial streaming?
		end)
	end

	if FFlagFaceAnimatorDisableVideoByDefault and not GetFFlagIrisSettingsEnabled() then -- could be 1 liner, but easier to remove flag later this way
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
	heartbeatStats.Initialize()
end

function CleanupFacialAnimationStreaming()
	if not facialAnimationStreamingInited then
		return
	end

	facialAnimationStreamingInited = false

	CleanupVoiceChat()
	heartbeatStats.Cleanup()

	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = nil
		playerUpdate(player)
	end

	if trackerErrorConnection then
		trackerErrorConnection:Disconnect()
		trackerErrorConnection = nil
	end

	if FFlagFacialAnimationStreamingPauseTrackWhenAllOff then
		if audioAnimationToggledConnection then
			audioAnimationToggledConnection:Disconnect()
			audioAnimationToggledConnection = nil
		end
		if videoAnimationToggledConnection then
			videoAnimationToggledConnection:Disconnect()
			videoAnimationToggledConnection = nil
		end
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

local function updateStreamTrackStatus()
	local localPlayer = Players.LocalPlayer
	if not localPlayer then
		return
	end

	local shouldPlayStreamTrack = FaceAnimatorService.AudioAnimationEnabled or FaceAnimatorService.VideoAnimationEnabled
	if shouldPlayStreamTrack then
		resumeStreamingAnimationForPlayer(localPlayer)
	else
		pauseStreamingAnimationForPlayer(localPlayer)
	end
end

-- Init with service state
local function updateWithServiceState(settings)
	log:trace(string.format("[updateWithServiceState] state: %s", tostring(settings)))

	if GetFFlagAvatarChatServiceEnabled() then
		local avatarChatEligible = AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserAudioEligible)
			or AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserVideoEligible)

		if avatarChatEligible and AvatarChatService:IsPlaceEnabled() then
			InitializeFacialAnimationStreaming(settings)
		else
			CleanupFacialAnimationStreaming()
		end
	else
		local isAudioOrVideoEnabled = false == FFlagFacialAnimationStreamingServiceAvoidInitWithoutUniverseSettingsEnabled
			or FacialAnimationStreamingService:IsAudioEnabled(settings)
			or FacialAnimationStreamingService:IsVideoEnabled(settings)

		if isAudioOrVideoEnabled and FacialAnimationStreamingService:IsPlaceEnabled(settings) then
			if FFlagFacialAnimationStreamingServiceUsePlayerThrottling then
				local ThrottleUpdateEvent = RobloxReplicatedStorage:WaitForChild(AvatarChatConstants.ThrottleUpdateEventName, math.huge)
				ThrottleUpdateEvent.OnClientEvent:Connect(function(allowed, optedIn)
					onThrottleUpdate(allowed, optedIn, settings)
				end)
			else
				onThrottleUpdate(true, true, settings)
			end
		else
			CleanupFacialAnimationStreaming()
		end
	end
end

if FFlagFacialAnimationStreamingPauseTrackWhenAllOff then
	audioAnimationToggledConnection = FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(function()
		updateStreamTrackStatus()
	end)
	videoAnimationToggledConnection = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function()
		updateStreamTrackStatus()
	end)
end

-- Listen for service state
if GetFFlagAvatarChatServiceEnabled() then
	if AvatarChatService.ClientFeaturesInitialized then
		updateWithServiceState(AvatarChatService.ClientFeatures)
	else
		local clientFeaturesChangedListener
		clientFeaturesChangedListener = AvatarChatService:GetPropertyChangedSignal("ClientFeatures"):Connect(function()
			updateWithServiceState(AvatarChatService.ClientFeatures)
			clientFeaturesChangedListener:Disconnect()
		end)
	end
else
	FacialAnimationStreamingService:GetPropertyChangedSignal("ServiceState"):Connect(function()
		updateWithServiceState(FacialAnimationStreamingService.ServiceState)
	end)
	updateWithServiceState(FacialAnimationStreamingService.ServiceState)
end
