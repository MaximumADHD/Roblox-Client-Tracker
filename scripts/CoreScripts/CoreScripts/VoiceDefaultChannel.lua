--!nocheck

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local FFlagDebugDefaultChannelStartMuted = game:DefineFastFlag("DebugDefaultChannelStartMuted", true)

local GenerateDefaultChannelAvailable = game:GetEngineFeature("VoiceServiceGenerateDefaultChannelAvailable")

local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)

if GenerateDefaultChannelAvailable then
	local VoiceChatService = game:FindService("VoiceChatService")

	if not VoiceChatService then
		log:info("VoiceChatService not found. Assuming default values.")
	elseif not VoiceChatService.GenerateDefaultChannel then
		log:debug("Default channel is disabled.")
		return
	end
end

local function initializeDefaultChannel()
	local VoiceChatService = VoiceChatServiceManager:getService()

	if not VoiceChatService then
		return nil
	end

	log:info("Joining default channel")

	return VoiceChatService:JoinByGroupIdToken("default", FFlagDebugDefaultChannelStartMuted)
end

if not Players.LocalPlayer.Character then
	Players.LocalPlayer.CharacterAdded:Wait()
	log:debug("Player character loaded")
else
	log:debug("Player character already loaded")
end

VoiceChatServiceManager:asyncInit():andThen(function()
	local joinInProgress = initializeDefaultChannel()
	if joinInProgress == false then
		VoiceChatServiceManager:InitialJoinFailedPrompt()
	end
end):catch(function()
	-- If voice chat doesn't initialize, silently halt rather than throwing
	-- a unresolved promise error.
	log:info("VoiceChatServiceManager did not initialize")
end)
