--[[
	Entry point for the player billboard management from CoreScripts.

	Currently, this includes the new version of BubbleChat and the voice chat
	speech indicator. This is written entirely in Roact. The chat list and
	legacy BubbleChat are still PlayerScripts, and are both still accessible
	under Modules/Server/ClientChat.
]]

local Chat = game:GetService("Chat")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local App = require(RobloxGui.Modules.InGameChat.BubbleChat.Components.App)
local chatReducer = require(RobloxGui.Modules.InGameChat.BubbleChat.Reducers.chatReducer)
local SetMessageText = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.SetMessageText)
local AddMessageFromEvent = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessageFromEvent)
local AddMessageWithTimeout = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessageWithTimeout)
local UpdateChatSettings = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.UpdateChatSettings)
local BubbleChatEnabledChanged = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.BubbleChatEnabledChanged)
local VoiceEnabledChanged = require(RobloxGui.Modules.VoiceChat.Actions.VoiceEnabledChanged)
local VoiceStateChanged = require(RobloxGui.Modules.VoiceChat.Actions.VoiceStateChanged)
local ParticipantAdded = require(RobloxGui.Modules.VoiceChat.Actions.ParticipantAdded)
local ParticipantRemoved = require(RobloxGui.Modules.VoiceChat.Actions.ParticipantRemoved)
local PlayerRemoved = require(RobloxGui.Modules.VoiceChat.Actions.PlayerRemoved)
local getPlayerFromPart = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getPlayerFromPart)
local validateMessage = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.validateMessage)
local Constants = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local Types = require(RobloxGui.Modules.InGameChat.BubbleChat.Types)
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local initVoiceChatStore = require(RobloxGui.Modules.VoiceChat.initVoiceChatStore)
local GetFFlagBubbleVoiceIndicator = require(RobloxGui.Modules.Flags.GetFFlagBubbleVoiceIndicator)
local GetFFlagEnableVoiceChatVoiceUISync = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatVoiceUISync)
local GetFFlagBubbleChatDuplicateMessagesFix = require(RobloxGui.Modules.Flags.GetFFlagBubbleChatDuplicateMessagesFix)
local GetFFlagEnableVoiceChatLocalMuteUI = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatLocalMuteUI)
local FFlagEnableExperienceChat = require(RobloxGui.Modules.Common.Flags.FFlagEnableExperienceChat)
local FFlagExperienceChatFixBubbleChat = game:DefineFastFlag("ExperienceChatFixBubbleChat", false)

local ExperienceChat
local MessageReceivedBindableEvent
if FFlagEnableExperienceChat then
	ExperienceChat = require(CorePackages.ExperienceChat)
	MessageReceivedBindableEvent = ExperienceChat.MessageReceivedBindableEvent
end

local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)

local MALFORMED_TEXT_WARNING = "Message text %q sent to chat event %q is not a valid UTF-8 characters sequence"
local WRONG_LENGTH_WARNING = "Message text %q is too long for chat event %q (expected a message of length %i, got %i)"

local MALFORMED_DATA_WARNING = "Malformed message data sent to chat event %q. If you have modified the chat system, " ..
	"check what you are firing to this event"

local chatStore = Rodux.Store.new(chatReducer, nil, {
	Rodux.thunkMiddleware,
})

Roact.mount(Roact.createElement(App, {
	store = chatStore
}), CoreGui, "BubbleChat")

local function validateMessageWithWarning(eventName, message)
	local ok, length = validateMessage(message)

	if not ok then
		if length then
			warn(WRONG_LENGTH_WARNING:format(message, eventName, Constants.MAX_MESSAGE_LENGTH, length))
		else
			warn(MALFORMED_TEXT_WARNING:format(message, eventName))
		end
	end

	return ok
end

local function validateMessageData(eventName, messageData)
	local ok, message = Types.IMessageData(messageData)

	if not ok then
		warn(MALFORMED_DATA_WARNING:format(eventName))
		warn(message)
	end

	return ok
end

local handle, newMessageConn, messageDoneFilteringConn, chattedConn
local adorneeId = 0
local messageId = 0
local adorneeIdMap = {}
local function initBubbleChat()
	coroutine.resume(coroutine.create(function()
		-- Using math.huge as the timeout means this will yield indefinitely without
		-- logging a warning. We don't want to enforce that the
		-- DefaultChatSystemChatEvents folder exists, but we do need to wait for it
		-- incase it does. So this ensures the user can fork chat without getting a
		-- warning they can't resolve.
		local chatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", math.huge)

		newMessageConn = chatEvents:WaitForChild("OnNewMessage", math.huge).OnClientEvent:Connect(function(messageData)
			if not validateMessageData("OnNewMessage", messageData) then
				return
			end

			if messageData.FromSpeaker == Players.LocalPlayer.Name then
				if not validateMessageWithWarning("OnNewMessage", messageData.Message) then
					return
				end

				chatStore:dispatch(AddMessageFromEvent(messageData))
			end
		end)

		messageDoneFilteringConn = chatEvents:WaitForChild("OnMessageDoneFiltering", math.huge).OnClientEvent:Connect(function(messageData)
			if not validateMessageData("OnMessageDoneFiltering", messageData)
				or not validateMessageWithWarning("OnMessageDoneFiltering", messageData.Message)
			then
				return
			end

			if GetFFlagBubbleChatDuplicateMessagesFix() then
				local id = tostring(messageData.ID)
				if chatStore:getState().messages[id] then
					chatStore:dispatch(SetMessageText(id, messageData.Message))
				else
					chatStore:dispatch(AddMessageFromEvent(messageData))
				end
			else
				if messageData.FromSpeaker == Players.LocalPlayer.Name then
					local id = tostring(messageData.ID)
					chatStore:dispatch(SetMessageText(id, messageData.Message))
				else
					chatStore:dispatch(AddMessageFromEvent(messageData))
				end
			end
		end)
	end))

	local function addMessage(partOrModel, message)
		local part
		if partOrModel:IsA("Model") then
			if partOrModel.PrimaryPart then
				part = partOrModel.PrimaryPart
			else
				part = partOrModel:FindFirstChildWhichIsA("BasePart", true)
			end
		else
			part = partOrModel
		end

		local player
		if part then
			player = getPlayerFromPart(part)
		end

		local userId
		if player then
			userId = tostring(player.UserId)
		else
			local id = adorneeIdMap[partOrModel]
			if id then
				userId = id
			else
				adorneeId = adorneeId + 1
				userId = "adornee_" .. adorneeId
				adorneeIdMap[partOrModel] = userId
			end
		end

		messageId = messageId + 1

		local message = {
			id = "chatted_" .. messageId,
			userId = userId,
			name = partOrModel.Name,
			text = GameTranslator:TranslateGameText(CoreGui, message),
			timestamp = os.time(),
			adornee = partOrModel
		}

		chatStore:dispatch(AddMessageWithTimeout(message))
	end

	if FFlagEnableExperienceChat then
		chattedConn = Chat.Chatted:Connect(addMessage)
	else
		chattedConn = Chat.Chatted:Connect(function(partOrModel, message)
			addMessage(partOrModel, message)
		end)
	end

	if MessageReceivedBindableEvent then
		MessageReceivedBindableEvent.Event:Connect(function(textChatMessage)
			local textSource = textChatMessage.TextSource
			if textSource and textSource.UserId then
				local player = Players:GetPlayerByUserId(textSource.UserId)
				if player then
					local character = player.Character
					if character and character.PrimaryPart then
						if FFlagExperienceChatFixBubbleChat then
							if textChatMessage.Status == Enum.TextChatMessageStatus.Success then
								addMessage(character, textChatMessage.Text)
							end
						else
							addMessage(character, textChatMessage.Text)
						end
					end
				end
			end
		end)
	end
end

local function destroyBubbleChat()
	if newMessageConn then
		newMessageConn:Disconnect()
		newMessageConn = nil
	end
	if messageDoneFilteringConn then
		messageDoneFilteringConn:Disconnect()
		messageDoneFilteringConn = nil
	end
	if chattedConn then
		chattedConn:Disconnect()
		chattedConn = nil
	end
end

local function onBubbleChatEnabledChanged()
	destroyBubbleChat()
	local enabled = not game:GetEngineFeature("EnableBubbleChatFromChatService") or Chat.BubbleChatEnabled
	if enabled then
		initBubbleChat()
	end
	chatStore:dispatch(BubbleChatEnabledChanged(enabled))
end

-- Initialized in initVoiceChat()
local LOCAL_STATE_MAP = {}

local function setVoiceEnabled(voiceState)
	local localUserId = tostring(Players.LocalPlayer.UserId)
	local voiceEnabled = voiceState ~= (Enum::any).VoiceChatState.Ended
	chatStore:dispatch(VoiceEnabledChanged(voiceEnabled))

	if not LOCAL_STATE_MAP[voiceState] then
		-- If we're somehow in a bad state, don't crash bubble chat altogether.
		log:warning("LOCAL_STATE_MAP does not exist for {} state", voiceState)
		chatStore:dispatch(VoiceStateChanged(localUserId, Constants.VOICE_STATE.MUTED))
	else
		chatStore:dispatch(VoiceStateChanged(localUserId, LOCAL_STATE_MAP[voiceState]))
	end

	if voiceState == (Enum::any).VoiceChatState.Failed then
		for _, user in pairs(Players:GetPlayers()) do
			local userId = tostring(user.UserId)
			if user ~= Players.LocalPlayer then
				chatStore:dispatch(VoiceStateChanged(userId, Constants.VOICE_STATE.HIDDEN))
			end
		end
	elseif voiceState == (Enum::any).VoiceChatState.Joined and not VoiceChatServiceManager.localMuted then
		-- The mute changed signal happens before the user is Joined, so check again here.
		chatStore:dispatch(VoiceStateChanged(localUserId, Constants.VOICE_STATE.INACTIVE))
	end
end

local function shorten(id)
	return "..." .. string.sub(tostring(id), -4)
end

local function initVoiceChat()
	if GetFFlagEnableVoiceChatVoiceUISync() then
		initVoiceChatStore(chatStore)
		return
	end
	log:debug("Initializing VoiceChatService connections")
	local voiceService = VoiceChatServiceManager:getService()
	if not voiceService then
		log:debug("VoiceChatService is not available")
		return
	end

	-- Make sure VoiceChatState exists since it's not compiled on all platforms
	-- Remove ::any when VoiceChatState is available to the linter
	if not (Enum::any).VoiceChatState then
		log:error("Enum.VoiceChatState does not exist but voice is enabled")
		return
	end

	LOCAL_STATE_MAP = {
		[(Enum::any).VoiceChatState.Idle] = Constants.VOICE_STATE.HIDDEN,
		[(Enum::any).VoiceChatState.Joining] = Constants.VOICE_STATE.CONNECTING,
		[(Enum::any).VoiceChatState.JoiningRetry] = Constants.VOICE_STATE.CONNECTING,
		[(Enum::any).VoiceChatState.Joined] = Constants.VOICE_STATE.MUTED,
		[(Enum::any).VoiceChatState.Leaving] = Constants.VOICE_STATE.MUTED,
		[(Enum::any).VoiceChatState.Ended] = Constants.VOICE_STATE.HIDDEN,
		[(Enum::any).VoiceChatState.Failed] = Constants.VOICE_STATE.ERROR,
	}

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

	-- Set the state to hidden until we connect.
	chatStore:dispatch(VoiceStateChanged(localUserId, Constants.VOICE_STATE.HIDDEN))
	VoiceChatServiceManager.muteChanged.Event:connect(function(muted)
		log:debug("Mute changed to {}", muted)
		local voiceState = muted and Constants.VOICE_STATE.MUTED or Constants.VOICE_STATE.INACTIVE
		chatStore:dispatch(VoiceStateChanged(localUserId, voiceState))
	end)

	VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
		for userId, participantState in pairs(participants) do
			local voiceState = Constants.VOICE_STATE.INACTIVE
			if not participantState.subscriptionCompleted then
				voiceState = Constants.VOICE_STATE.CONNECTING
			elseif participantState.isMutedLocally then
				voiceState = GetFFlagEnableVoiceChatLocalMuteUI() and Constants.VOICE_STATE.LOCAL_MUTED or Constants.VOICE_STATE.MUTED
			elseif participantState.isMuted then
				voiceState = Constants.VOICE_STATE.MUTED
			elseif participantState.isSignalActive then
				voiceState = Constants.VOICE_STATE.TALKING
			end
			log:trace("Participant update for {}, voice state {}", shorten(userId), voiceState)
			chatStore:dispatch(VoiceStateChanged(userId, voiceState))

			-- TODO Update level too
		end
	end)

	VoiceChatServiceManager.talkingChanged.Event:Connect(function(isTalking)
		if isTalking then
			chatStore:dispatch(VoiceStateChanged(localUserId, Constants.VOICE_STATE.TALKING))
		else
			chatStore:dispatch(VoiceStateChanged(localUserId, Constants.VOICE_STATE.INACTIVE))
		end
	end)

	local blockedStatusChanged = BlockingUtility:GetBlockedStatusChangedEvent()
	blockedStatusChanged:Connect(function(userId, isBlocked)
		if isBlocked then
			chatStore:dispatch(ParticipantRemoved(tostring(userId)))
		else
			chatStore:dispatch(ParticipantAdded(tostring(userId)))
		end
	end)

	log:debug("Initial voice state is {}", voiceService.VoiceChatState)
	setVoiceEnabled(voiceService.VoiceChatState)
	voiceService.StateChanged:Connect(function(_oldState, newState)
		log:debug("Voice state changed to {}", newState)
		setVoiceEnabled(newState)
	end)
end

if game:GetEngineFeature("EnableBubbleChatFromChatService") then
	Chat:GetPropertyChangedSignal("BubbleChatEnabled"):Connect(onBubbleChatEnabledChanged)
end
onBubbleChatEnabledChanged()

if game:GetEngineFeature("BubbleChatSettingsApi") then
	Chat.BubbleChatSettingsChanged:Connect(function(settings)
		local ok, message = Types.IChatSettings(settings)
		assert(ok, "Bad settings object passed to Chat:SetBubbleChatSettings:\n"..(message or ""))
		chatStore:dispatch(UpdateChatSettings(settings))
	end)
end

if GetFFlagBubbleVoiceIndicator() then
	-- Voice chat can't be disabled in a running game, so no need to track changes to its state
	VoiceChatServiceManager:asyncInit():andThen(initVoiceChat):catch(function()
		-- If voice fails to init, silently halt instead of throwing an
		-- unresolved promise error.
		log:debug("VoiceChatServiceManager failed to initialize")
	end)
end
