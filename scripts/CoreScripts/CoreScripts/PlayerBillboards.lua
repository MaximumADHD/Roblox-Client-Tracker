--!nonstrict
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
local TextChatService = game:GetService("TextChatService")

local RobloxGui = CoreGui.RobloxGui

local VoiceChatCore = require(CorePackages.Workspace.Packages.VoiceChatCore)

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
local ParticipantsChanged = require(RobloxGui.Modules.VoiceChat.Actions.ParticipantsChanged)
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
local GetFFlagEnableVoiceChatVoiceUISync = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatVoiceUISync)
local GetFFlagLocalMutedNilFix = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLocalMutedNilFix
local GetFFlagConsolidateBubbleChat = require(RobloxGui.Modules.Flags.GetFFlagConsolidateBubbleChat)
local GetFFlagBatchVoiceParticipantsUpdates = require(VoiceChatCore.Flags.GetFFlagBatchVoiceParticipantsUpdates)
local FFlagFixMessageReceivedEventLeak = game:DefineFastFlag("FixMessageReceivedEventLeak", false)

local ExperienceChat = require(CorePackages.ExperienceChat)
local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)

local MALFORMED_TEXT_WARNING = "Message text %q sent to chat event %q is not a valid UTF-8 characters sequence"
local WRONG_LENGTH_WARNING = "Message text %q is too long for chat event %q (expected a message of length %i, got %i)"

local MALFORMED_DATA_WARNING = "Malformed message data sent to chat event %q. If you have modified the chat system, " ..
	"check what you are firing to this event"

local chatStore
local SPY_ACTION_WHITELIST = {
	[VoiceEnabledChanged.name] = function(action)
		ExperienceChat.Events.VoiceEnabledChanged(action.enabled)
	end,

	[VoiceStateChanged.name] = function(action)
		ExperienceChat.Events.VoiceStateChanged(action.userId, action.newState)
	end,

	[ParticipantsChanged.name] = function(action)
		ExperienceChat.Events.VoiceParticipantsChanged(action.newParticipants)
	end,

	[ParticipantAdded.name] = function(action)
		ExperienceChat.Events.VoiceParticipantAdded(action.userId)
	end,

	[ParticipantRemoved.name] = function(action)
		ExperienceChat.Events.VoiceParticipantRemoved(action.userId)
	end,
}

local spyMiddleware = function(nextDispatch)
	return function(action)
		local event = SPY_ACTION_WHITELIST[action.type]
		if event then
			event(action)
		end

		nextDispatch(action)
	end
end

chatStore = Rodux.Store.new(chatReducer, nil, {
	Rodux.thunkMiddleware,
	spyMiddleware,
})

local gameLoadedConn
local function isTextChatServiceOn()
	return TextChatService.ChatVersion == Enum.ChatVersion.TextChatService
end
if game:IsLoaded() and isTextChatServiceOn() then
	-- If TextChatService is enabled, do not mount legacy BubbleChat
	return
else
	gameLoadedConn = game.Loaded:Connect(function()
		if game:IsLoaded() then
			gameLoadedConn:Disconnect()
			if not GetFFlagConsolidateBubbleChat() then
				if isTextChatServiceOn() then
					return
				else
					Roact.mount(Roact.createElement(App, {
						store = chatStore
					}), CoreGui, "BubbleChat")
				end
			end
		end
	end)
end

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

local handle, newMessageConn, messageDoneFilteringConn, chattedConn, messageReceivedConn, sendingMessageConn
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
				if GetFFlagConsolidateBubbleChat() then
					local messageDataCopy = table.clone(messageData)
					messageDataCopy.Time = workspace:GetServerTimeNow() * 1000
					chatStore:dispatch(AddMessageFromEvent(messageDataCopy))
				else
					chatStore:dispatch(AddMessageFromEvent(messageData))
				end
			end
		end)

		messageDoneFilteringConn = chatEvents:WaitForChild("OnMessageDoneFiltering", math.huge).OnClientEvent:Connect(function(messageData)
			if not validateMessageData("OnMessageDoneFiltering", messageData)
				or not validateMessageWithWarning("OnMessageDoneFiltering", messageData.Message)
			then
				return
			end

			local id = tostring(messageData.ID)
			if chatStore:getState().messages[id] then
				chatStore:dispatch(SetMessageText(id, messageData.Message))
			else
				if GetFFlagConsolidateBubbleChat() then
					local messageDataCopy = table.clone(messageData)
					messageDataCopy.Time = workspace:GetServerTimeNow() * 1000
					chatStore:dispatch(AddMessageFromEvent(messageDataCopy))
				else
					chatStore:dispatch(AddMessageFromEvent(messageData))
				end
			end
		end)
	end))

	local function addMessageWithId(partOrModel, message, thisMessageId: number | string)
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

		local message = {
			id = "chatted_" .. thisMessageId,
			userId = userId,
			name = partOrModel.Name,
			text = GameTranslator:TranslateGameText(CoreGui, message),
			timestamp = os.time(),
			adornee = partOrModel
		}

		chatStore:dispatch(AddMessageWithTimeout(message))
	end

	local function addMessage(partOrModel, message)
		messageId = messageId + 1
		addMessageWithId(partOrModel, message, messageId)
	end

	chattedConn = Chat.Chatted:Connect(addMessage)
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

	if FFlagFixMessageReceivedEventLeak then
		if sendingMessageConn then
			sendingMessageConn:Disconnect()
			sendingMessageConn = nil
		end
		if messageReceivedConn then
			messageReceivedConn:Disconnect()
			messageReceivedConn = nil
		end
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
	elseif voiceState == (Enum::any).VoiceChatState.Joined and
		if GetFFlagLocalMutedNilFix
			then VoiceChatServiceManager.localMuted == false
			else not VoiceChatServiceManager.localMuted
		then
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
		if GetFFlagBatchVoiceParticipantsUpdates() then
			chatStore:dispatch(ParticipantsChanged(participants))
		else
			for userId, participantState in pairs(participants) do
				local voiceState = Constants.VOICE_STATE.INACTIVE
				if not participantState.subscriptionCompleted then
					voiceState = Constants.VOICE_STATE.CONNECTING
				elseif participantState.isMutedLocally then
					voiceState = Constants.VOICE_STATE.LOCAL_MUTED
				elseif participantState.isMuted then
					voiceState = Constants.VOICE_STATE.MUTED
				elseif participantState.isSignalActive then
					voiceState = Constants.VOICE_STATE.TALKING
				end
				log:trace("Participant update for {}, voice state {}", shorten(userId), voiceState)
				chatStore:dispatch(VoiceStateChanged(userId, voiceState))
				-- TODO Update level too
			end
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

-- Voice chat can't be disabled in a running game, so no need to track changes to its state
VoiceChatServiceManager:asyncInit():andThen(initVoiceChat):catch(function()
	-- If voice fails to init, silently halt instead of throwing an
	-- unresolved promise error.
	log:debug("VoiceChatServiceManager failed to initialize")
end)
