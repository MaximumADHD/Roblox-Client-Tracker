--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local Players = game:GetService("Players")
local ExperienceService = game:GetService("ExperienceService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)
local CoreVoiceManager = VoiceChatCore.CoreVoiceManager.default

local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local BlockingUtility = require(CoreGuiModules.BlockingUtility)

local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)
local FFlagUseNotificationServiceIsConnected = game:DefineFastFlag("UseNotificationServiceIsConnected", false)
local FFlagDefaultChannelEnableDefaultVoice = game:DefineFastFlag("DefaultChannelEnableDefaultVoice", true)
local FFlagAlwaysJoinWhenUsingAudioAPI = game:DefineFastFlag("AlwaysJoinWhenUsingAudioAPI", false)
local FFlagDefaultChannelDontWaitOnCharacterWithAudioApi = game:DefineFastFlag("DefaultChannelDontWaitOnCharacterWithAudioApi", false)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")
local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")
local NotificationServiceIsConnectedAvailable = game:GetEngineFeature("NotificationServiceIsConnectedAvailable")

local log = require(RobloxGui.Modules.Logger):new(script.Name)
local Analytics = VoiceChatCore.Analytics.new()

local VoiceChatService = game:GetService("VoiceChatService")

-- Since this script starts significantly faster due to small Lua size for CEV DM, VoiceChatService.UseNewAudioApi is not yet replicated and has incorrect value, hence the game.Loaded wait
if not game:IsLoaded() then
	game.Loaded:Wait()
end

local localUserId = (Players.LocalPlayer and Players.LocalPlayer.UserId) or -1

-- IRIS-1799: Enum.ExperienceEventType currently does not exist in GameEngine as we are refactoring the communication layer.
-- We are also not going to expose ExperienceEventType publicaly in Enum.
-- This handling needs to get redone but leaving the code in for reference as we will need the same logic, we will just probably have the event name as string

function handleParticipants()
	-- local onPlayerAdded = function(player)
	-- 	pcall(function()
	-- 		ExperienceService:PublishEvent(game.PlaceId, Enum.ExperienceEventType.ParticipantAdded, {
	-- 			userId = tostring(player.UserId),
	-- 			isLocalUser = player.UserId == localUserId,
	-- 			username = player.Name,
	-- 			displayname = player.DisplayName,
	-- 		})
	-- 	end)
	-- end

	-- for _, player in pairs(Players:GetPlayers()) do
	-- 	if player:IsA("Player") then
	-- 		onPlayerAdded(player)
	-- 	end
	-- end
	-- Players.PlayerAdded:Connect(onPlayerAdded)

	-- Players.PlayerRemoving:Connect(function(player)
	-- 	pcall(function()
	-- 		ExperienceService:PublishEvent(game.PlaceId, Enum.ExperienceEventType.ParticipantRemoving, {
	-- 			userId = tostring(player.UserId),
	-- 			isLocalUser = player.UserId == localUserId,
	-- 		})
	-- 	end)
	-- end)
end

function handleMicrophone()
	-- pcall(function()
	-- 	ExperienceService:SubscribeToEvent(tostring(game.PlaceId), Enum.ExperienceEventType.MicToggled, function(_)
	-- 		CoreVoiceManager:asyncInit()
	-- 		:andThen(function()
	-- 			CoreVoiceManager:ToggleMic("BackgroundDM")
	-- 		end)
	-- 		:catch(function() end)
	-- 	end)
	-- end)
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

CoreVoiceManager:asyncInit():andThen(function()
	local joinInProgress = initializeDefaultChannel(false)
	if joinInProgress == false then
		-- TODO: We should communicate to foreground experience that it failed similar to VoiceChatServiceManager:InitialJoinFailedPrompt()
	end
end):catch(function(err)
	-- If voice chat doesn't initialize, silently halt rather than throwing
	-- a unresolved promise error. Don't report an event since the manager
	-- will handle that.
	log:info("CoreVoiceManager did not initialize {}", err)
end)
