--!nonstrict

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
if game:GetEngineFeature("FacialAnimationStreaming") and game:GetFastFlag("SelfieViewFeature") then
	FaceAnimatorService.VideoAnimationEnabled = true
end
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingService")

if not FaceAnimatorService or not FacialAnimationStreamingService then
	return
end

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local playerAnimations = {}
local playerCharacterAddConnections = {}
local playerCharacterRemoveConnections = {}
local playerCharacterDescendantAddedConnections = {}
local playerCharacterDescendantRemovingConnections = {}
local playerJoinedChat = {}
local playerJoinedGame = {}

local trackerErrorConnection = nil

local facialAnimationStreamingInited = false

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

-- clearConnectionForPlayer(connections, userId)
local function clearConnectionForPlayer(connections, userId)
	if connections[userId] then
		connections[userId]:Disconnect()
		connections[userId] = nil
	end
end

local function clearAllConnectionsForPlayer(player)
	clearConnectionForPlayer(playerCharacterAddConnections, player.UserId)
	clearConnectionForPlayer(playerCharacterRemoveConnections, player.UserId)
	clearConnectionForPlayer(playerCharacterDescendantAddedConnections, player.UserId)
	clearConnectionForPlayer(playerCharacterDescendantRemovingConnections, player.UserId)
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

local function getPlayerAnimator(player)
	if player.Character then
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			return humanoid:FindFirstChildOfClass("Animator")
		end
	end

	return nil
end

local function setupAnimator(player, animator)
	if animator then
		local playerAnimation = {}
		playerAnimation.animation = Instance.new("TrackerStreamAnimation")
		playerAnimation.animationTrack = animator:LoadStreamAnimation(playerAnimation.animation)
		playerAnimation.animationTrack:Play(0.1, 1)

		playerAnimations[player.UserId] = playerAnimation
	end
end

local function onCharacterDescendantAdded(player, descendant)
	if descendant:IsA("Animator") and descendant:IsDescendantOf(game) then
		setupAnimator(player, descendant)
	end
end

local function onCharacterDescendantRemoving(player, descendant)
	if descendant:IsA("Animator") then
		clearCharacterAnimations(player)
	end
end

local function onCharacterAdded(player, character)
	playerTrace("Player character added", player)

	-- clear previous connections
	clearConnectionForPlayer(playerCharacterDescendantAddedConnections, player.UserId)
	clearConnectionForPlayer(playerCharacterDescendantRemovingConnections, player.UserId)

	-- listen for descendants of the character
	playerCharacterDescendantAddedConnections[player.UserId] = character.DescendantAdded:Connect(function(descendant)
		onCharacterDescendantAdded(player, descendant)
	end)
	playerCharacterDescendantRemovingConnections[player.UserId] = character.DescendantRemoving:Connect(function(descendant)
		onCharacterDescendantRemoving(player, descendant)
	end)

	-- check if we have the animator ready to animate character
	setupAnimator(player, getPlayerAnimator(player))
end

local function onCharacterRemoving(player, character)
	playerTrace("Player character removing", player)

	-- clear previous connections
	clearConnectionForPlayer(playerCharacterDescendantAddedConnections, player.UserId)
	clearConnectionForPlayer(playerCharacterDescendantRemovingConnections, player.UserId)

	clearCharacterAnimations(player)
end

local function playerUpdate(player)
	playerTrace("Player update", player)

	-- Setup the player animation if streaming is enabled, and:
	-- if player is local
	-- OR
	-- if player is remote and joined in voice chat as well.
	local isLocal = Players.LocalPlayer.UserId == player.UserId
	local setupPlayer = FacialAnimationStreamingService.Enabled and playerJoinedGame[player.UserId] and (playerJoinedChat[player.UserId] or isLocal)

	clearAllConnectionsForPlayer(player)

	if setupPlayer then
		playerTrace("Player update - joined", player)

		if player.Character then
			onCharacterAdded(player, player.Character)
		end

		playerCharacterAddConnections[player.UserId] = player.CharacterAdded:Connect(function(character)
			onCharacterAdded(player, character)
		end)
		playerCharacterRemoveConnections[player.UserId] = player.CharacterRemoving:Connect(function(character)
			onCharacterRemoving(player, character)
		end)
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
		end):finally(function()
			JoinAllExistingPlayers()
			ConnectStateChangeCallback()
		end)
	end
end

function InitializeFacialAnimationStreaming()
	if facialAnimationStreamingInited or not FacialAnimationStreamingService.Enabled then
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

-- Try to initialize, but probably need to wait for server to replicate enabled property first
InitializeFacialAnimationStreaming()

