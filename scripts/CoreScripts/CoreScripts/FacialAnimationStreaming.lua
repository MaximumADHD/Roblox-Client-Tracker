--!nonstrict

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local FaceAnimatorService = game:GetService("FaceAnimatorService")
if game:GetEngineFeature("FacialAnimationStreaming") and game:GetFastFlag("SelfieViewFeature") then
	FaceAnimatorService.VideoAnimationEnabled = true
end
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingService")

if not FaceAnimatorService or not FacialAnimationStreamingService then
	return
end

local FFlagEnableSyncAudioWithVoiceChatMuteState = game:DefineFastFlag("EnableSyncAudioWithVoiceChatMuteState", false)

local useEnableFlags = game:GetEngineFeature("FacialAnimationStreamingUseEnableFlags")
local FFlagEnableFacialAnimationKickPlayerWhenServerDisabled = game:DefineFastFlag("EnableFacialAnimationKickPlayerWhenServerDisabled", false)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local log = require(RobloxGui.Modules.Logger):new(script.Name)
local EmoteHelper = require(RobloxGui.Modules.Emote.EmoteHelper)

local playerJoinedChat = {}
local playerJoinedGame = {}

local playerAnimations = {}
local playerConnections = {}

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

local trackerErrorConnection = nil
local voiceChatMuteConnection = nil

local facialAnimationStreamingInited = false

local FFlagStreamingAnimationPauseWhileEmoting = game:DefineFastFlag("StreamingAnimationPauseWhileEmoting", false)

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

local function isFacialAnimationStreamingEnabled()
	if useEnableFlags then
		return FacialAnimationStreamingService.EnableFlags == (Enum::any).FacialAnimationFlags.PlaceServer
	else
		return FacialAnimationStreamingService.Enabled
	end
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
			playerAnimations[player.UserId].animationTrack:Stop()
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
	local setupPlayer = isFacialAnimationStreamingEnabled() and playerJoinedGame[player.UserId] and (playerJoinedChat[player.UserId] or isLocal)

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
function InitializeVoiceChatServices()
	if VoiceChatServiceManager then
		VoiceChatServiceManager:asyncInit():catch(function(error)
			if FFlagEnableSyncAudioWithVoiceChatMuteState then
				log:trace("Disabling audio processing when VoiceChat fails (possibly denied mic permission)")
				FaceAnimatorService.AudioAnimationEnabled = false
			end
		end):finally(function()
			JoinAllExistingPlayers()
			ConnectStateChangeCallback()
		end)

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
	end
end

function InitializeFacialAnimationStreaming()
	if facialAnimationStreamingInited or not isFacialAnimationStreamingEnabled() then
		return
	end
	facialAnimationStreamingInited = true
	FaceAnimatorService.FlipHeadOrientation = true

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

	InitializeVoiceChatServices()
end

function CleanupFacialAnimationStreaming()
	if not facialAnimationStreamingInited then
		return
	end

	if FFlagEnableSyncAudioWithVoiceChatMuteState then
		if voiceChatMuteConnection then
			voiceChatMuteConnection:Disconnect()
			voiceChatMuteConnection = nil
		end
	end

	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = nil
		playerUpdate(player)
	end

	if trackerErrorConnection then
		trackerErrorConnection:Disconnect()
		trackerErrorConnection = nil
	end

	facialAnimationStreamingInited = false
end

FacialAnimationStreamingService:GetPropertyChangedSignal("Enabled"):Connect(function()
	if FacialAnimationStreamingService.Enabled then
		InitializeFacialAnimationStreaming()
	else
		CleanupFacialAnimationStreaming()
	end
end)

-- New initialization flow using enable flags
local function updateByEnableFlags()
	log:trace("updateByEnableFlags: {}", FacialAnimationStreamingService.EnableFlags)
	if FacialAnimationStreamingService.EnableFlags == (Enum::any).FacialAnimationFlags.PlaceServer then
		InitializeFacialAnimationStreaming()
	elseif FacialAnimationStreamingService.EnableFlags == (Enum::any).FacialAnimationFlags.Place then
		-- Temporarily disable facial animation streaming if only the place (and not server) allows it
		-- as a server throttling mechanism
		CleanupFacialAnimationStreaming()
		if FFlagEnableFacialAnimationKickPlayerWhenServerDisabled then
			Players.LocalPlayer:Kick(PlaceUnavailableMessage)
		else
			TrackerMenu:showPrompt(TrackerPromptType.FeatureDisabled)
		end
	else
		CleanupFacialAnimationStreaming()
	end
end

-- Initialize based on server feature state
if useEnableFlags then
	-- Listen for server enable flag changes
	FacialAnimationStreamingService:GetPropertyChangedSignal("EnableFlags"):Connect(function()
		updateByEnableFlags()
	end)

	updateByEnableFlags()
else
	-- Try to initialize, but probably need to wait for server to replicate enabled property first
	InitializeFacialAnimationStreaming()
end
