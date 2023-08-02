--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)
local FFlagUseNotificationServiceIsConnected = game:DefineFastFlag("UseNotificationServiceIsConnected", false)
local FFlagDefaulChannelDontWaitOnCharacter = game:DefineFastFlag("DefaultChannelDontWaitOnCharacter", false)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)
local GetFFlagIrisSettingsEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisSettingsEnabled
local GetFFlagVoiceChatStoreFirstJoinGroup = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatStoreFirstJoinGroup)

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")
local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")
local NotificationServiceIsConnectedAvailable = game:GetEngineFeature("NotificationServiceIsConnectedAvailable")

local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)
local Analytics = require(RobloxGui.Modules.VoiceChat.Analytics).new()

local function initializeDefaultChannel()
	local VoiceChatService = VoiceChatServiceManager:getService()

	if not VoiceChatService then
		return nil
	end

	log:info("Joining default channel")

	local success
	if GetFFlagIrisSettingsEnabled() then
		if GetFFlagVoiceChatStoreFirstJoinGroup() then
			success = VoiceChatServiceManager:JoinByGroupIdToken("default", false)
		else
			success = VoiceChatService:JoinByGroupIdToken("default", false)
		end
	else
		if GetFFlagVoiceChatStoreFirstJoinGroup() then
			success = VoiceChatServiceManager:JoinByGroupIdToken("default", FFlagDebugDefaultChannelStartMuted)
		else
			success = VoiceChatService:JoinByGroupIdToken("default", FFlagDebugDefaultChannelStartMuted)
		end
	end
	
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

if not FFlagDefaulChannelDontWaitOnCharacter then
	if not Players.LocalPlayer.Character then
		Players.LocalPlayer.CharacterAdded:Wait()
		log:debug("Player character loaded")
	else
		log:debug("Player character already loaded")
	end
end

if EnableDefaultVoiceAvailable then
	local VoiceChatService = game:FindService("VoiceChatService")

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

VoiceChatServiceManager:asyncInit():andThen(function()
	local joinInProgress = initializeDefaultChannel()
	if joinInProgress == false then
		VoiceChatServiceManager:InitialJoinFailedPrompt()
	end
end):catch(function()
	-- If voice chat doesn't initialize, silently halt rather than throwing
	-- a unresolved promise error. Don't report an event since the manager
	-- will handle that.
	log:info("VoiceChatServiceManager did not initialize")
end)
