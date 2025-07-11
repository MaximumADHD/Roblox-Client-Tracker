--!nonstrict

local VRService = game:GetService("VRService")

local AnalyticsService = game:GetService("RbxAnalyticsService")
local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGui.RobloxGui
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper

local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol).CallProtocol.default
local CallProtocolEnums = require(CorePackages.Workspace.Packages.CallProtocol).Enums

local FFlagLoadStreamAnimationReplaceErrorsWithTelemetry = game:GetEngineFeature("LoadStreamAnimationReplaceErrorsWithTelemetryFeature")
local FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable = game:GetEngineFeature("FaceAnimatorNotifyLODRecommendCameraInputDisable")
local FFlagFacialAnimationStreamingClearTrackImprovementsV2 = game:DefineFastFlag("FacialAnimationStreamingClearTrackImprovementsV2", false)
game:DefineFastFlag("FacialAnimationStreamingValidateAnimatorBeforeRemoving",false)
game:DefineFastFlag("FacialAnimationStreamingSearchForReplacementWhenRemovingAnimator", false)
game:DefineFastFlag("StopStreamTrackOnDeath", false)
game:DefineFastFlag("FacialAnimationStreamingClearAllConnectionsFix2", false)
game:DefineFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C", false)
local FFlagFacialAnimationStreamingCheckPauseStateAfterEmote2 = game:DefineFastFlag("FacialAnimationStreamingCheckPauseStateAfterEmote2", false)
local GetFFlagAvatarChatServiceEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local AvatarChatService = if GetFFlagAvatarChatServiceEnabled() then game:GetService("AvatarChatService") else nil
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FFlagUXForCameraPerformanceEnabled = game:DefineFastFlag("UXForCameraPerformanceEnabled", false)
local FFlagDisableCameraOnLowspecAndroidCalls = game:DefineFastFlag("DisableCameraOnLowspecAndroidCalls", false)

local FIntUXForCameraPerformanceSessionDelay = game:DefineFastInt("UXForCameraPerformanceSessionDelay", 300) -- in seconds
local FIntUXForCameraPerformanceDeviceDelay = game:DefineFastInt("UXForCameraPerformanceDeviceDelay", 43200) -- in seconds
local GetFFlagUXForCameraPerformanceIXPEnabled = require(RobloxGui.Modules.Flags.GetFFlagUXForCameraPerformanceIXPEnabled)
local GetFStringUXForCameraPerformanceIXPLayerName = require(RobloxGui.Modules.Flags.GetFStringUXForCameraPerformanceIXPLayerName)
local FFlagSelfieViewAddPlayerWithoutVoice = game:DefineFastFlag("SelfieViewAddPlayerWithoutVoice", false)
local isCamEnabledForUserAndPlace = function()
	return true
end

if FFlagDisableCameraOnLowspecAndroidCalls then
	isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
end

local heartbeatStats = require(RobloxGui.Modules.FacialAnimationStreaming.FacialAnimationStreamingHeartbeatStats)

if not FaceAnimatorService or not AvatarChatService then
	return
end

local LOCAL_STORAGE_KEY_UX_CAMERA_PERFORMANCE_TIMESTAMP = "CameraPerformanceUXUnixTimestamp"

FaceAnimatorService.FlipHeadOrientation = true

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
	EmoteFinished = "EmoteFinished",
	PlayerDied = "PlayerDied"
}

local PlaceUnavailableMessage = RobloxTranslator:FormatByKey("Feature.FaceChat.Message.PlaceUnavailable")

local facialAnimationStreamingInited = false
local isPlayerAllowedViaThrottle = false

local playerJoinUnixTime = os.time()

-- A list of players joined VoiceChat
local playerJoinedChat = {}
-- A list of players joined Game
local playerJoinedGame = {}

local playerAnimations = {}
local playerConnections = {}
local playerAnimators = {}
local playerFaceControls = {}

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
	if game:GetFastFlag("FacialAnimationStreamingClearAllConnectionsFix2") then
		for _,connectionType in pairs(Connections) do
			clearConnection(player, connectionType)
		end
	else
		for _,connectionType in ipairs(Connections) do
			clearConnection(player, connectionType)
		end
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

local function getPlayerFaceControls(player)
	if player and player.Character then
		return player.Character:FindFirstChildWhichIsA("FaceControls", true)
	end

	return nil
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
			--shouldPlayStreamTrack check here so it does not increase the weight of the stream track if mic/ cam not on and so then idle anims work after emote played
			if FFlagFacialAnimationStreamingCheckPauseStateAfterEmote2 then
				local shouldPlayStreamTrack = FaceAnimatorService.AudioAnimationEnabled or FaceAnimatorService.VideoAnimationEnabled
				if shouldPlayStreamTrack then
					resumeStreamingAnimationForPlayer(player)
				else
					pauseStreamingAnimationForPlayer(player)
				end
			else
				resumeStreamingAnimationForPlayer(player)
			end
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

	if playerAnimations[player.UserId] then
		playerTrace("onAnimatorAdded already done; skipping", player)
		return
	end

	-- clear any previous waiting connection
	clearConnection(player, Connections.AnimatorDataModelReady)

	-- prepare function for setting up the animator
	local setupAnimator = function()
		local playerAnimation = {}
		playerAnimation.animation = Instance.new("TrackerStreamAnimation")
		if game:GetEngineFeature("UseNewLoadStreamAnimationAPI") then
			playerAnimation.animationTrack = animator:LoadStreamAnimationV2(playerAnimation.animation, player)
		else
			playerAnimation.animationTrack = animator:LoadStreamAnimation(playerAnimation.animation)
		end

		if FFlagLoadStreamAnimationReplaceErrorsWithTelemetry then
			if not playerAnimation.animationTrack then
				return
			end
		end

		playerAnimation.animationTrack.Priority = Enum.AnimationPriority.Idle
		playerAnimation.animationTrack:Play(0.1, 1)

		playerAnimations[player.UserId] = playerAnimation
		local shouldPlayStreamTrack = FaceAnimatorService.AudioAnimationEnabled or FaceAnimatorService.VideoAnimationEnabled
		if player == Players.LocalPlayer and not shouldPlayStreamTrack then
			pauseStreamingAnimationForPlayer(player)
		end

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

	if game:GetFastFlag("StopStreamTrackOnDeath") then
		-- listen for when player dies
		clearConnection(player, Connections.PlayerDied)
		playerConnections[player.UserId][Connections.PlayerDied] = humanoid.Died:Connect(function()
			clearCharacterAnimations(player)
		end)
	end
end

local function onFaceControlsAdded(player, faceControls)
	assert(game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C"))

	-- only process local player
	if player ~= Players.LocalPlayer then
		return
	end

	-- return if we already registered this face controls
	if playerFaceControls[player.UserId] ~= nil and faceControls == playerFaceControls[player.UserId] then
		return
	end

	-- update face controls registry
	playerFaceControls[player.UserId] = faceControls

	if playerFaceControls[player.UserId] then
		-- if FaceControls is found, enable A2C (only if mic is on)
		if VoiceChatServiceManager and not VoiceChatServiceManager.localMuted then
			playerTrace("FaceControls found -> enabling A2C (Mic is ON)...", player)
			FaceAnimatorService.AudioAnimationEnabled = true
		else
			playerTrace("FaceControls found -> won't enable A2C (Mic is MUTED)...", player)
		end
	else
		if FaceAnimatorService.AudioAnimationEnabled then
			playerTrace("FaceControls NOT found -> disabling A2C...", player)
			-- if FaceControls is NOT found, disable A2C
			FaceAnimatorService.AudioAnimationEnabled = false
		else
			playerTrace("FaceControls NOT found -> won't disable A2C (already is disabled)...", player)
		end
	end
end

local function onCharacterDescendantAdded(player, descendant)
	if descendant:IsDescendantOf(game) then
		if descendant:IsA("Animator") then
			onAnimatorAdded(player, descendant)
		elseif descendant:IsA("Humanoid") then
			onHumanoidAdded(player, descendant)
		elseif game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C") and descendant:IsA("MeshPart") and descendant.Name == "Head" then
			onFaceControlsAdded(player, getPlayerFaceControls(player))
		elseif game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C") and descendant:IsA("FaceControls") then
			onFaceControlsAdded(player, descendant)
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
		if game:GetFastFlag("StopStreamTrackOnDeath") then
			clearConnection(player, Connections.PlayerDied)
		end
	elseif game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C")
		and ((descendant:IsA("MeshPart") and descendant.Name == "Head") or descendant:IsA("FaceControls")) then
		onFaceControlsAdded(player, getPlayerFaceControls(player))
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

	if game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C") then
		onFaceControlsAdded(player, getPlayerFaceControls(player))
	end
	-- check if we have the humanoid ready to observe emotes
	onHumanoidAdded(player, getPlayerHumanoid(player))
	-- check if we have the animator ready to animate character
	onAnimatorAdded(player, getPlayerAnimator(player))
end

local function onCharacterRemoving(player, character)
	playerTrace("Player character removing", player)

	-- clear previous connections
	if game:GetFastFlag("FacialAnimationStreamingClearAllConnectionsFix2") then
		clearConnection(player, Connections.CharacterDescendantAdded)
		clearConnection(player, Connections.CharacterDescendantRemoving)
	else
		clearAllConnections(player)
	end

	clearCharacterAnimations(player)
end

local function playerUpdate(player)
	playerTrace("Player update", player)

	-- Setup the player animation
	local setupPlayer = playerJoinedGame[player.UserId]

	if game:GetFastFlag("FacialAnimationStreamingClearAllConnectionsFix2") then
		if setupPlayer and playerAnimations[player.UserId] then
			playerTrace("Player already setup", player)
			return
		end
	end

	clearAllConnections(player)

	if setupPlayer then
		if not game:GetFastFlag("FacialAnimationStreamingClearAllConnectionsFix2") then
			if playerAnimations[player.UserId] then
				playerTrace("Player already setup", player)
				return
			end
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

	if FFlagSelfieViewAddPlayerWithoutVoice then
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
end

local function ConnectStateChangeCallback()
	local VoiceChatService = VoiceChatServiceManager:getService()

	local localPlayerId = Players.LocalPlayer.UserId
	VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
		for userId, state in pairs(participants) do
			local userIdAsNumber = tonumber(userId)
			if userIdAsNumber ~= localPlayerId then
				toggleMute(userIdAsNumber, state.isMutedLocally)
			end
		end
	end)

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
	if not FFlagSelfieViewAddPlayerWithoutVoice then
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
end

local function AttemptToShowCameraPerformanceToast(isSkipSessionDurationCheck)
	if GetFFlagUXForCameraPerformanceIXPEnabled() then
		-- get ixp layer data
		local layerFetchSuccess, layerData = pcall(function()
			return IXPServiceWrapper:GetLayerData(GetFStringUXForCameraPerformanceIXPLayerName())
		end)

		-- bail if we aren't able to communicate with IXP service
		if not layerFetchSuccess then
			return
		end

		-- check if user is enrolled in experiment or not
		if not layerData then
			return
		end
		if not layerData.UXForCameraPerformanceEnabled then
			return
		end
	end

	-- check enougb time have passed since user joined DataModel instance
	local currentSessionDuration = os.time() - playerJoinUnixTime
	if (not isSkipSessionDurationCheck) and currentSessionDuration < FIntUXForCameraPerformanceSessionDelay then
		task.delay(FIntUXForCameraPerformanceSessionDelay - currentSessionDuration, function()
			AttemptToShowCameraPerformanceToast(true)
		end)
		return
	end

	-- check enough time have passed in local storage
	local lastShownTimestamp = 0
	local success, value = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_UX_CAMERA_PERFORMANCE_TIMESTAMP)
	end)
	if success then
		lastShownTimestamp = tonumber(value)
	else
		return
	end
	if os.time() - lastShownTimestamp < FIntUXForCameraPerformanceDeviceDelay then
		return
	end

	pcall(function()
		AppStorageService:SetItem(LOCAL_STORAGE_KEY_UX_CAMERA_PERFORMANCE_TIMESTAMP, tostring(lastShownTimestamp))
		AppStorageService:Flush()

		TrackerMenu:showPrompt(TrackerPromptType.LODCameraRecommendDisable)

		-- add analytics
		AnalyticsService:SendEventDeferred("client", "avatarChat", "UXForCameraPerformanceShown", {
			userId = Players.LocalPlayer.UserId,
			pid = tostring(game.PlaceId),
		})
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
		if not FFlagSelfieViewAddPlayerWithoutVoice then
			JoinAllExistingPlayers()
		end
		ConnectStateChangeCallback()
	end

	if VoiceChatServiceManager then
		VoiceChatServiceManager:asyncInit():catch(function(error)
			log:trace("VoiceChat:asyncInit failed (possibly denied mic permission)")
		end):finally(onCompletion)

		-- Sync VoiceChat mute status with FaceAnimatorService.AudioAnimationEnabled
		voiceChatMuteConnection = VoiceChatServiceManager.muteChanged.Event:connect(function(muted)
			if game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C") then
				local faceControls = getPlayerFaceControls(Players.LocalPlayer)
				log:trace("Syncing audio processing with VoiceChat mute changed: muted="..tostring(muted)
					.. " hasFaceControls="..tostring(faceControls ~= nil))
				FaceAnimatorService.AudioAnimationEnabled = not muted and faceControls ~= nil
			else
				log:trace("Syncing audio processing with VoiceChat mute changed: muted="..tostring(muted))
				FaceAnimatorService.AudioAnimationEnabled = not muted
			end
		end)

		-- Initially set audio enable to false until VoiceChat mic is enabled
		local initialAudioEnabled = false
		if VoiceChatServiceManager.localMuted ~= nil then
			log:trace("Syncing audio processing with VoiceChat mute status: muted="..tostring(VoiceChatServiceManager.localMuted))
			initialAudioEnabled = not VoiceChatServiceManager.localMuted
		end
		if game:GetFastFlag("FacialAnimationStreamingIfNoDynamicHeadDisableA2C") then
			local faceControls = getPlayerFaceControls(Players.LocalPlayer)
			log:trace("Syncing audio processing with Dynamic Head status: hasFaceControls="..tostring(faceControls ~= nil))
			initialAudioEnabled = initialAudioEnabled and faceControls ~= nil
		end
		FaceAnimatorService.AudioAnimationEnabled = initialAudioEnabled
	else
		onCompletion()
	end
end

function CleanupVoiceChat()
	if voiceChatMuteConnection then
		voiceChatMuteConnection:Disconnect()
		voiceChatMuteConnection = nil
	end
end

function InitializeFacialAnimationStreaming(settings)
	if facialAnimationStreamingInited then
		return
	end

	facialAnimationStreamingInited = true

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

	if FFlagDisableCameraOnLowspecAndroidCalls and not isCamEnabledForUserAndPlace() then
		log:trace("Camera is disabled for user and place")
		return
	end

	if GetFFlagAvatarChatServiceEnabled() then
		FaceAnimatorService:Init(
			AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserVideo),
			AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserAudio))
	end

	if FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable then
		-- Handle prompts from FaceAnimatorService
		trackerPromptConnection = FaceAnimatorService.TrackerPrompt:Connect(function(prompt)
			playerTrace(string.format("TrackerPrompt: %s", tostring(prompt)), nil)
			if prompt == (Enum::any).TrackerPromptEvent.LODCameraRecommendDisable then
				if FFlagUXForCameraPerformanceEnabled then
					AttemptToShowCameraPerformanceToast()
				else
					TrackerMenu:showPrompt(TrackerPromptType.LODCameraRecommendDisable)
				end
			end
			-- TODO: Do we want to enable some idle cycle on the non-a2c inputs?
		end)
	end

	CallProtocol:getCallState():andThen(function(params)
		if not facialAnimationStreamingInited then
			return
		end

		if
			params.status ~= CallProtocolEnums.CallStatus.Idle.rawValue()
			and params.status ~= CallProtocolEnums.CallStatus.Ringing.rawValue()
		then
			-- If call exist, respect the cam settings for calling
			FaceAnimatorService.VideoAnimationEnabled = params.camEnabled
		else
			-- At start, turn off video until user turns it on manually.
			-- This is what Settings should use to re-enable camera when user presses camera button.
			FaceAnimatorService.VideoAnimationEnabled = false
		end

		InitializeVoiceChat()
		if FFlagSelfieViewAddPlayerWithoutVoice then
			-- we want to let eligible players join with FAS regardless of their voice status
			-- therefore we can add players and connect their audio/video states without waiting for VCSM 
			JoinAllExistingPlayers()
		end
		heartbeatStats.Initialize()
	end)
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

	if audioAnimationToggledConnection then
		audioAnimationToggledConnection:Disconnect()
		audioAnimationToggledConnection = nil
	end
	if videoAnimationToggledConnection then
		videoAnimationToggledConnection:Disconnect()
		videoAnimationToggledConnection = nil
	end

	if FFlagFaceAnimatorNotifyLODRecommendCameraInputDisable then
		if trackerPromptConnection then
			trackerPromptConnection:Disconnect()
			trackerPromptConnection = nil
		end
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
		-- this is currently death code
		CleanupFacialAnimationStreaming()
	end
end

audioAnimationToggledConnection = FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(function()
	updateStreamTrackStatus()
end)
videoAnimationToggledConnection = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function()
	updateStreamTrackStatus()
end)

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
end
