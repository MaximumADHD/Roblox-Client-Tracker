--!nocheck

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
local playerCharacterObservers = {}
local playerJoinedChat = {}
local playerJoinedGame = {}

local playerRemovingConnection = nil
local playerAddedConnection = nil

local participantsStateChangedConnection = nil

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
	log:trace(message .. " {id: " .. userId .. ", name: " .. userName .. "}.")
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

local function playerCharacterRespawned(character)
	local player = Players:GetPlayerFromCharacter(character)

	playerTrace("Player character respawned", player)

	if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
		playerAnimations[player.UserId].animationTrack:Stop(0.0)
		playerAnimations[player.UserId] = nil
	end

	playerAnimate(player)
end

local function playerUpdate(player)
	playerTrace("Player update", player)

	-- True if player is local.
	-- True if player is remote and joined in voice chat as well.
	local playerJoined = playerJoinedGame[player.UserId] and (playerJoinedChat[player.UserId] or Players.LocalPlayer.UserId == player.UserId)

	if playerCharacterObservers[player.UserId] then
		playerCharacterObservers[player.UserId]:Disconnect()
		playerCharacterObservers[player.UserId] = nil
	end

	if playerJoined then
		playerTrace("Player update - joined", player)

		if not player.Character then
			player.CharacterAdded:Wait()
		end

		playerCharacterObservers[player.UserId] = player.CharacterAdded:Connect(playerCharacterRespawned)

		playerAnimate(player)
	else -- Player left game/chat
		playerTrace("Player update - left", player)

		if playerAnimations[player.UserId] and playerAnimations[player.UserId].animationTrack then
			playerAnimations[player.UserId].animationTrack:Stop(0.0)
			playerAnimations[player.UserId] = nil
		end
	end
end

function InitializeFacialAnimationStreaming()
	if facialAnimationStreamingInited or not FacialAnimationStreamingService.Enabled then
		return
	end
	facialAnimationStreamingInited = true
	FaceAnimatorService.FlipHeadOrientation = true

	playerRemovingConnection = Players.PlayerRemoving:Connect(function(player)
		playerTrace("Player leaving game", player)

		playerJoinedGame[player.UserId] = nil
		playerUpdate(player)
	end)

	playerAddedConnection = Players.PlayerAdded:Connect(function(player)
		playerTrace("Player joining game", player)

		playerJoinedGame[player.UserId] = true
		playerUpdate(player)
	end)

	if VoiceChatServiceManager then
		VoiceChatServiceManager:asyncInit():andThen(function()
			local VoiceChatService = VoiceChatServiceManager:getService()
			participantsStateChangedConnection = VoiceChatService.ParticipantsStateChanged:Connect(function(participantsLeft, participantsJoined, statesUpdated)
				for _, userId in ipairs(participantsJoined) do
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

	for _, player in ipairs(Players:GetPlayers()) do
		playerJoinedGame[player.UserId] = true
		playerUpdate(player)
	end
end

function CleanupFacialAnimationStreaming()
	if not facialAnimationStreamingInited then
		return
	end

	if participantsStateChangedConnection then
		participantsStateChangedConnection:Disconnect()
		participantsStateChangedConnection = nil
	end

	for _, characterAddedConn in pairs(playerCharacterObservers) do
		characterAddedConn:Disconnect()
	end
	playerCharacterObservers = {}

	for _, playerAnim in pairs(playerAnimations) do
		if playerAnim and playerAnim.animationTrack then
			playerAnim.animationTrack:Stop(0.0)
		end
	end
	playerAnimations = {}

	if playerRemovingConnection then
		playerRemovingConnection:Disconnect()
		playerRemovingConnection = nil
	end

	if playerAddedConnection then
		playerAddedConnection:Disconnect()
		playerAddedConnection = nil
	end

	playerJoinedChat = {}
	playerJoinedGame = {}

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

