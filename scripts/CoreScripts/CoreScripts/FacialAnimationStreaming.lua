--!nonstrict

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingService")

if not FaceAnimatorService or not FacialAnimationStreamingService then
	return
end

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local playerAnimations = {}
local playerCharacterAddConnections = {}
local playerCharacterRemoveConnections = {}
local playerJoinedChat = {}
local playerJoinedGame = {}

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

local function playerAnimate(player)
	playerTrace("Player animate", player)

	local humanoid = player.Character:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator")

	local playerAnimation = {}
	playerAnimation.animation = Instance.new("TrackerStreamAnimation")
	playerAnimation.animationTrack = animator:LoadStreamAnimation(playerAnimation.animation)
	playerAnimation.animationTrack:Play(0.1, 1)

	playerAnimations[player.UserId] = playerAnimation
end

local function onCharacterAdded(character)
	local player = Players:GetPlayerFromCharacter(character)

	playerTrace("Player character added", player)

	if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
		playerAnimations[player.UserId].animationTrack:Stop(0.0)
		playerAnimations[player.UserId] = nil
	end

	playerAnimate(player)
end

local function onCharacterRemoving(character)
	local player = Players:GetPlayerFromCharacter(character)
	if player then
		playerTrace("Player character removing", player)

		if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
			playerAnimations[player.UserId].animationTrack:Stop(0.0)
			playerAnimations[player.UserId] = nil
		end
	end
end

local function playerUpdate(player)
	playerTrace("Player update", player)

	-- Setup the player animation if streaming is enabled, and:
	-- if player is local
	-- OR
	-- if player is remote and joined in voice chat as well.
	local isLocal = Players.LocalPlayer.UserId == player.UserId
	local setupPlayer = FacialAnimationStreamingService.Enabled and playerJoinedGame[player.UserId] and (playerJoinedChat[player.UserId] or isLocal)

	if playerCharacterAddConnections[player.UserId] then
		playerCharacterAddConnections[player.UserId]:Disconnect()
		playerCharacterAddConnections[player.UserId] = nil
	end

	if playerCharacterRemoveConnections[player.UserId] then
		playerCharacterRemoveConnections[player.UserId]:Disconnect()
		playerCharacterRemoveConnections[player.UserId] = nil
	end

	if setupPlayer then
		playerTrace("Player update - joined", player)

		if player.Character then
			playerAnimate(player)
		end
		playerCharacterAddConnections[player.UserId] = player.CharacterAdded:Connect(onCharacterAdded)
		playerCharacterRemoveConnections[player.UserId] = player.CharacterRemoving:Connect(onCharacterRemoving)
	else -- Player left game/chat
		playerTrace("Player update - left", player)

		if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
			playerAnimations[player.UserId].animationTrack:Stop(0.0)
			playerAnimations[player.UserId] = nil
		end
	end
end

if VoiceChatServiceManager then
	VoiceChatServiceManager:asyncInit():andThen(function()
		local VoiceChatService = VoiceChatServiceManager:getService()
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
	end):catch(function()
		log:trace("Failed to initialize streaming of facial animations - voice chat not available.")
	end)
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

function InitializeFacialAnimationStreaming()
	if facialAnimationStreamingInited or not FacialAnimationStreamingService.Enabled then
		return
	end
	facialAnimationStreamingInited = true
	FaceAnimatorService.FlipHeadOrientation = true

	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = true
		playerUpdate(player)
	end
end

function CleanupFacialAnimationStreaming()
	if not facialAnimationStreamingInited then
		return
	end

	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = nil
		playerUpdate(player)
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

