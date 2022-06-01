--!nonstrict

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local FFlagVoiceDefaultChannelUseNewName = game:DefineFastFlag("VoiceDefaultChannelUseNewName2", false)
local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)
local GetFFlagEnableLuaVoiceChatAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableLuaVoiceChatAnalytics)

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")
local EnableDefaultVoiceAvailable = game:GetEngineFeature("VoiceServiceEnableDefaultVoiceAvailable")

local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)
local Analytics = require(RobloxGui.Modules.VoiceChat.Analytics).new()

local function initializeDefaultChannel()
	local VoiceChatService = VoiceChatServiceManager:getService()

	if not VoiceChatService then
		return nil
	end

	log:info("Joining default channel")

	local success = VoiceChatService:JoinByGroupIdToken("default", FFlagDebugDefaultChannelStartMuted)
	
	if GetFFlagEnableLuaVoiceChatAnalytics() then
		if success then
			Analytics:reportVoiceChatJoinResult(true, "defaultJoinSuccess")
		else
			Analytics:reportVoiceChatJoinResult(false, "defaultJoinFailed", "error")
		end
	end

	return success
end

if not Players.LocalPlayer.Character then
	Players.LocalPlayer.CharacterAdded:Wait()
	log:debug("Player character loaded")
else
	log:debug("Player character already loaded")
end

if FFlagVoiceDefaultChannelUseNewName then
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
else
	if GenerateDefaultChannelAvailable then
		local VoiceChatService = game:FindService("VoiceChatService")
	
		if not VoiceChatService then
			log:info("VoiceChatService not found. Assuming default values.")
		elseif not VoiceChatService.GenerateDefaultChannel then
			log:debug("Default channel is disabled.")
			return
		end
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
