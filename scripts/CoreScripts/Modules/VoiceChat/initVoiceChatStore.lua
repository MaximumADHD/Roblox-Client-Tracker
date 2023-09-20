--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")

local GetFFlagEnableVoiceChatLocalMuteUI = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatLocalMuteUI)
local FFlagEnableVoiceChatStorybookFix = require(RobloxGui.Modules.Flags.FFlagEnableVoiceChatStorybookFix)
local GetFFlagSubscriptionFailureUX = require(RobloxGui.Modules.Flags.GetFFlagSubscriptionFailureUX)
local GetFFlagLocalMutedNilFix = require(RobloxGui.Modules.Flags.GetFFlagLocalMutedNilFix)

local VoiceEnabledChanged = require(script.Parent.Actions.VoiceEnabledChanged)
local VoiceStateChanged = require(script.Parent.Actions.VoiceStateChanged)
local ParticipantAdded = require(script.Parent.Actions.ParticipantAdded)
local ParticipantRemoved = require(script.Parent.Actions.ParticipantRemoved)
local PlayerRemoved = require(script.Parent.Actions.PlayerRemoved)

local VoiceChatServiceManager = require(script.Parent.VoiceChatServiceManager).default
local VoiceConstants = require(CorePackages.AppTempCommon.VoiceChat.Constants)
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)

local VOICE_STATE
if FFlagEnableVoiceChatStorybookFix() then
	VOICE_STATE = VoiceConstants.VOICE_STATE
else
	VOICE_STATE = VoiceChatServiceManager.VOICE_STATE
end

local function shorten(id)
	return "..." .. string.sub(tostring(id), -4)
end

local LOCAL_STATE_MAP

local function setVoiceEnabled(voiceState, chatStore)
	local localUserId = tostring(Players.LocalPlayer.UserId)
	local voiceEnabled = voiceState ~= (Enum :: any).VoiceChatState.Ended
	chatStore:dispatch(VoiceEnabledChanged(voiceEnabled))

	if not LOCAL_STATE_MAP[voiceState] then
		log:warning("LOCAL_STATE_MAP does not exist for {} state", voiceState)
		chatStore:dispatch(VoiceStateChanged(localUserId, VOICE_STATE.MUTED))
	else
		chatStore:dispatch(VoiceStateChanged(localUserId, LOCAL_STATE_MAP[voiceState]))
	end

	if voiceState == (Enum :: any).VoiceChatState.Failed then
		for _, user in pairs(Players:GetPlayers()) do
			local userId = tostring(user.UserId)
			if user ~= Players.LocalPlayer then
				chatStore:dispatch(VoiceStateChanged(userId, VOICE_STATE.HIDDEN))
			end
		end
	elseif
		voiceState == (Enum :: any).VoiceChatState.Joined
		and if GetFFlagLocalMutedNilFix
			then VoiceChatServiceManager.localMuted == false
			else not VoiceChatServiceManager.localMuted
	then
		-- The mute changed signal happens before the user is Joined, so check again here.
		chatStore:dispatch(VoiceStateChanged(localUserId, VOICE_STATE.INACTIVE))
	end
end

local initVoice = function(chatStore)
	LOCAL_STATE_MAP = {
		[(Enum :: any).VoiceChatState.Idle] = VOICE_STATE.HIDDEN,
		[(Enum :: any).VoiceChatState.Joining] = VOICE_STATE.CONNECTING,
		[(Enum :: any).VoiceChatState.JoiningRetry] = VOICE_STATE.CONNECTING,
		[(Enum :: any).VoiceChatState.Joined] = VOICE_STATE.MUTED,
		[(Enum :: any).VoiceChatState.Leaving] = VOICE_STATE.MUTED,
		[(Enum :: any).VoiceChatState.Ended] = VOICE_STATE.HIDDEN,
		[(Enum :: any).VoiceChatState.Failed] = VOICE_STATE.ERROR,
	}

	local voiceService = VoiceChatServiceManager:getService()
	if not voiceService then
		log:debug("VoiceChatService is not available")
		return
	end

	local localUserId = Players.LocalPlayer.UserId

	-- TODO Use participants joined/left when SOCRTC-1176 is fixed
	for _, player in pairs(Players:GetPlayers()) do
		log:trace("Adding existing player {}", shorten(player.UserId))
		chatStore:dispatch(ParticipantAdded(tostring(player.UserId)))
	end
	Players.PlayerAdded:Connect(function(player)
		log:trace("Adding joining player {}", shorten(player.UserId))
		chatStore:dispatch(ParticipantAdded(tostring(player.userId)))
	end)

	Players.PlayerRemoving:Connect(function(player)
		log:trace("Removing player {}", shorten(player.UserId))
		-- For now, these two always occur together, but that won't be true later.
		chatStore:dispatch(PlayerRemoved(tostring(player.userId)))
		chatStore:dispatch(ParticipantRemoved(tostring(player.userId)))
	end)

	chatStore:dispatch(VoiceStateChanged(localUserId, VOICE_STATE.HIDDEN))
	VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
		log:debug("Mute changed to {}", muted)
		local voiceState = muted and VOICE_STATE.MUTED or VOICE_STATE.INACTIVE
		chatStore:dispatch(VoiceStateChanged(localUserId, voiceState))
	end)

	VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
		for userId, participantState in pairs(participants) do
			local voiceState = VOICE_STATE.INACTIVE
			if participantState.subscriptionFailed and GetFFlagSubscriptionFailureUX() then
				voiceState = VOICE_STATE.ERROR
			elseif not participantState.subscriptionCompleted then
				voiceState = VOICE_STATE.CONNECTING
			elseif participantState.isMutedLocally then
				voiceState = GetFFlagEnableVoiceChatLocalMuteUI() and VOICE_STATE.LOCAL_MUTED or VOICE_STATE.MUTED
			elseif participantState.isMuted then
				voiceState = VOICE_STATE.MUTED
			elseif participantState.isSignalActive then
				voiceState = VOICE_STATE.TALKING
			end
			log:trace("Participant update for {}, voice state {}", userId, voiceState)
			chatStore:dispatch(VoiceStateChanged(userId, voiceState))

			-- TODO Update level too
		end
	end)

	VoiceChatServiceManager.talkingChanged.Event:Connect(function(isTalking)
		if isTalking then
			chatStore:dispatch(VoiceStateChanged(localUserId, VOICE_STATE.TALKING))
		else
			chatStore:dispatch(VoiceStateChanged(localUserId, VOICE_STATE.INACTIVE))
		end
	end)

	-- Note that we don't need to block anyone already blocked, as VCS doesn't establish
	-- connections between blocked users
	local blockedStatusChanged = BlockingUtility:GetBlockedStatusChangedEvent()
	blockedStatusChanged:Connect(function(userId, isBlocked)
		if isBlocked then
			chatStore:dispatch(ParticipantRemoved(tostring(userId)))
		else
			chatStore:dispatch(ParticipantAdded(tostring(userId)))
		end
	end)

	log:debug("Initial voice state is {}", voiceService.VoiceChatState)
	setVoiceEnabled(voiceService.VoiceChatState, chatStore)
	voiceService.StateChanged:Connect(function(_oldState, newState)
		log:debug("Voice state changed to {}", newState)
		setVoiceEnabled(newState, chatStore)
	end)
end

return function(chatStore)
	if game:GetEngineFeature("VoiceChatSupported") then
		VoiceChatServiceManager:asyncInit()
			:andThen(function()
				VoiceChatServiceManager:SetupParticipantListeners()
				initVoice(chatStore)
			end)
			:catch(function()
				log:warning("Failed to init VoiceChatServiceManager")
			end)
	end
end
