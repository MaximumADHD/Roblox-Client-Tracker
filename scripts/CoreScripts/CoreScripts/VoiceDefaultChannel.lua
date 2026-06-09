--!nonstrict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local NotificationService = game:GetService("NotificationService")
local Players = game:GetService("Players")

local RobloxGui = CoreGui.RobloxGui
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol).CallProtocol.default
local CallProtocolEnums = require(CorePackages.Workspace.Packages.CallProtocol).Enums

local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)
local FFlagUseNotificationServiceIsConnected = game:DefineFastFlag("UseNotificationServiceIsConnected", false)
local FFlagDefaultChannelEnableDefaultVoice = game:DefineFastFlag("DefaultChannelEnableDefaultVoice", true)
local GetFFlagSeamlessVoiceFTUX = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSeamlessVoiceFTUX

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")
local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")
local NotificationServiceIsConnectedAvailable = game:GetEngineFeature("NotificationServiceIsConnectedAvailable")

local log = require(RobloxGui.Modules.VoiceChat.Logger)(script.Name)
local Analytics = require(RobloxGui.Modules.VoiceChat.Analytics).new()

local VoiceChatService = game:GetService("VoiceChatService")

local function initializeDefaultChannel(defaultMuted)
	local VoiceChatInternal = VoiceChatServiceManager:getService()

	if not VoiceChatInternal then
		return nil
	end

	log:info("Joining default channel")

	local success = VoiceChatInternal:JoinByGroupIdToken("default", defaultMuted)
	if success then
		Analytics:reportVoiceChatJoinResult(true, "defaultJoinSuccess")
	else
		Analytics:reportVoiceChatJoinResult(false, "defaultJoinFailed", "error")
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

if not VoiceChatService.UseNewAudioApi then
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
	elseif not VoiceChatService.EnableDefaultVoice and not VoiceChatService.UseNewAudioApi then
		log:debug("Default channel is disabled.")
		Analytics:reportVoiceChatJoinResult(false, "defaultDisabled")
		return
	end
end

CallProtocol:getCallState():andThen(function(params)
	-- If call exist, use the muted state from CallProtocol
	local defaultMuted = if params.status ~= CallProtocolEnums.CallStatus.Idle.rawValue()
			and params.status ~= CallProtocolEnums.CallStatus.Ringing.rawValue()
		then params.muted
		else FFlagDebugDefaultChannelStartMuted
	VoiceChatServiceManager:asyncInit()
		:andThen(function()
			local joinInProgress = initializeDefaultChannel(defaultMuted)
			if joinInProgress == false then
				VoiceChatServiceManager:InitialJoinFailedPrompt()
			end
		end)
		:catch(function()
			-- If voice chat doesn't initialize, silently halt rather than throwing
			-- a unresolved promise error. Don't report an event since the manager
			-- will handle that.
			log:info("VoiceChatServiceManager did not initialize")
		end)
end)

if GetFFlagSeamlessVoiceFTUX() then
	task.spawn(function()
		VoiceChatServiceManager:VoiceChatFirstTimeUX(game:GetService("AppStorageService"))
	end)
end
