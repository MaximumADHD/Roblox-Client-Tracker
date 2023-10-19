--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol).CallProtocol.default
local CallProtocolEnums = require(CorePackages.Workspace.Packages.CallProtocol).Enums

local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)
local FFlagUseNotificationServiceIsConnected = game:DefineFastFlag("UseNotificationServiceIsConnected", false)
local FFlagDefaulChannelDontWaitOnCharacter = game:DefineFastFlag("DefaultChannelDontWaitOnCharacter", false)
local FFlagDefaultChannelEnableDefaultVoice = game:DefineFastFlag("DefaultChannelEnableDefaultVoice", true)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)
local GetFFlagIrisSettingsEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisSettingsEnabled

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")
local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")
local NotificationServiceIsConnectedAvailable = game:GetEngineFeature("NotificationServiceIsConnectedAvailable")

local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)
local Analytics = require(RobloxGui.Modules.VoiceChat.Analytics).new()

local function initializeDefaultChannel(defaultMuted)
	local VoiceChatService = VoiceChatServiceManager:getService()

	if not VoiceChatService then
		return nil
	end

	log:info("Joining default channel")

	local success = VoiceChatService:JoinByGroupIdToken("default", defaultMuted)
	
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

if EnableDefaultVoiceAvailable and FFlagDefaultChannelEnableDefaultVoice then
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

if GetFFlagIrisSettingsEnabled() then
	CallProtocol:getCallState():andThen(function(params)
		-- If call exist, use the muted state from CallProtocol
		local defaultMuted = if
				params.status ~= CallProtocolEnums.CallStatus.Idle.rawValue()
				and params.status ~= CallProtocolEnums.CallStatus.Ringing.rawValue()
			then params.muted
			else FFlagDebugDefaultChannelStartMuted
		VoiceChatServiceManager:asyncInit():andThen(function()
			local joinInProgress = initializeDefaultChannel(defaultMuted)
			if joinInProgress == false then
				VoiceChatServiceManager:InitialJoinFailedPrompt()
			end
		end):catch(function()
			-- If voice chat doesn't initialize, silently halt rather than throwing
			-- a unresolved promise error. Don't report an event since the manager
			-- will handle that.
			log:info("VoiceChatServiceManager did not initialize")
		end)
	end)
else
	VoiceChatServiceManager:asyncInit():andThen(function()
		local joinInProgress = initializeDefaultChannel(FFlagDebugDefaultChannelStartMuted)
		if joinInProgress == false then
			VoiceChatServiceManager:InitialJoinFailedPrompt()
		end
	end):catch(function()
		-- If voice chat doesn't initialize, silently halt rather than throwing
		-- a unresolved promise error. Don't report an event since the manager
		-- will handle that.
		log:info("VoiceChatServiceManager did not initialize")
	end)
end
