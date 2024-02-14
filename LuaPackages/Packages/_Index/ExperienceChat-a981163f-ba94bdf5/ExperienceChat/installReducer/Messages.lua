local HttpService = game:GetService("HttpService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Llama = require(Packages.llama)
local List = Llama.List
local Dictionary = Llama.Dictionary
local Set = Llama.Set

local isWhitespaceOnly = require(ExperienceChat.isWhiteSpaceOnly)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local IncomingBubbleChatMessageReceived = require(Actions.IncomingBubbleChatMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local UserMuted = require(Actions.UserMuted)
local UserUnmuted = require(Actions.UserUnmuted)
local PlayerRemoved = require(Actions.PlayerRemoved)
local ChatPrivacySettingsReceived = require(Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed = require(Actions.ChatPrivacySettingsFetchFailed)
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)
local ChatWindowMessagesCleared = require(Actions.ChatWindowMessagesCleared)
local ChatTranslationGlobalToggled = require(Actions.ChatTranslationGlobalToggled)
local ChatTranslationMessageToggled = require(ExperienceChat.Actions.ChatTranslationMessageToggled)
local LegacyBubbleCreated = require(ExperienceChat.Actions.LegacyBubbleCreated)
local LegacyBubbleTextUpdated = require(ExperienceChat.Actions.LegacyBubbleTextUpdated)

local getFFlagChatTranslationUIEnabled = require(ExperienceChat.Flags.getFFlagChatTranslationUIEnabled)

local TextChatService = game:GetService("TextChatService")

local AllowClearCommand = require(ExperienceChat.Flags.FFlagAllowClearCommand)
local FixInvalidMessagesShowingOnSenderSide = require(ExperienceChat.Flags.FFlagFixInvalidMessagesShowingOnSenderSide)

local GlobalFlags = require(ExperienceChat.GlobalFlags)

function getChatTranslationEnabled()
	local canGetSetting, setting = pcall(function()
		return TextChatService["ChatTranslationEnabled"]
	end)

	return canGetSetting and setting
end

export type Message = {
	userId: string?,
	prefixText: string,
	text: string,
	translation: string?,
	textChannel: TextChannel?,
	useTranslation: boolean?,
	messageId: string,
	timestamp: DateTime,
	isVisibleInBubbleChat: boolean,
	isVisibleInChatWindow: boolean,
	shouldOverrideBubbleChatSettings: boolean?,
	partOrModel: Instance?,
	status: Enum.TextChatMessageStatus,
	bubbleChatMessageProperties: BubbleChatMessageProperties?,
}

export type State = {
	messageLimit: number,
	canLocalUserChat: boolean,
	isBubbleChatEnabled: boolean,
	_mutedUserIds: { [string]: boolean },
	windowMessagesInOrder: { string },
	byMessageId: { [string]: Message },
	bubbleMessagesInOrderBySenderId: { [string]: { string } },
	mockUserIdToPartOrModel: { [string]: Instance },
	partOrModelToMockUserId: { [Instance]: string },
}

local defaultState: State = {
	canLocalUserChat = false,
	isBubbleChatEnabled = false,
	_mutedUserIds = {},
	messageLimit = 50,
	windowMessagesInOrder = {},
	byMessageId = {},
	bubbleMessagesInOrderBySenderId = {},
	mockUserIdToPartOrModel = {},
	partOrModelToMockUserId = {},
}

local function mapByMessageIdInOrderHelper(state: State, message: Message)
	if FixInvalidMessagesShowingOnSenderSide() then
		if
			isWhitespaceOnly(message.text)
			and message.status ~= Enum.TextChatMessageStatus.Floodchecked
			and message.status ~= Enum.TextChatMessageStatus.MessageTooLong
		then
			return state
		end
	else
		if isWhitespaceOnly(message.text) then
			return state
		end
	end

	local partOrModel = message.partOrModel
	local messageUserId = message.userId
	local messageId = message.messageId

	local windowMessagesInOrder = state.windowMessagesInOrder
	local byMessageId = state.byMessageId
	local bubbleMessagesInOrderBySenderId = state.bubbleMessagesInOrderBySenderId
	local mockUserIdToPartOrModel = state.mockUserIdToPartOrModel
	local partOrModelToMockUserId = state.partOrModelToMockUserId

	-- it's possible that there is no messageUserId, if so find or create a "mock" userId tied to partOrModel
	if not messageUserId and partOrModel then
		messageUserId = partOrModelToMockUserId[partOrModel]

		-- store this "mock" userId to a mapping state of mock ID and reference to partOrModel
		if not messageUserId then
			messageUserId = HttpService:GenerateGUID(false)
			mockUserIdToPartOrModel = Dictionary.join(mockUserIdToPartOrModel, {
				[messageUserId] = partOrModel,
			})
			partOrModelToMockUserId = Dictionary.join(partOrModelToMockUserId, {
				[partOrModel] = messageUserId,
			})
		end
	end

	if byMessageId[messageId] then
		byMessageId = Dictionary.join(byMessageId, {
			[messageId] = {
				userId = messageUserId,
				prefixText = message.prefixText,
				text = message.text,
				translation = message.translation,
				useTranslation = message.useTranslation,
				textChannel = message.textChannel,
				messageId = messageId,
				status = message.status,
				timestamp = message.timestamp,
				isVisibleInBubbleChat = message.isVisibleInBubbleChat,
				isVisibleInChatWindow = message.isVisibleInChatWindow,
				shouldOverrideBubbleChatSettings = message.shouldOverrideBubbleChatSettings,
				bubbleChatMessageProperties = message.bubbleChatMessageProperties,
			} :: Message,
		})
		if
			FixInvalidMessagesShowingOnSenderSide()
			and (
				message.status == Enum.TextChatMessageStatus.Floodchecked
				or message.status == Enum.TextChatMessageStatus.MessageTooLong
			)
		then
			windowMessagesInOrder = List.removeIndex(windowMessagesInOrder, List.count(windowMessagesInOrder))
			byMessageId = Dictionary.removeKey(byMessageId, message.messageId)
			if messageUserId then
				bubbleMessagesInOrderBySenderId = Dictionary.join(bubbleMessagesInOrderBySenderId, {
					[messageUserId] = List.removeValue(
						bubbleMessagesInOrderBySenderId[messageUserId],
						message.messageId
					),
				})
			end
		end
		return Dictionary.join(state, {
			windowMessagesInOrder = windowMessagesInOrder,
			byMessageId = byMessageId,
			bubbleMessagesInOrderBySenderId = bubbleMessagesInOrderBySenderId,
		})
	end

	if #windowMessagesInOrder == state.messageLimit and message.isVisibleInChatWindow then
		local messageIdToRemove = windowMessagesInOrder[1]
		local removingUserId = if byMessageId[messageIdToRemove] then byMessageId[messageIdToRemove].userId else nil
		windowMessagesInOrder = List.removeIndex(windowMessagesInOrder, 1)
		byMessageId = Dictionary.removeKey(byMessageId, messageIdToRemove)

		if removingUserId and bubbleMessagesInOrderBySenderId[removingUserId] then
			bubbleMessagesInOrderBySenderId = Dictionary.join(bubbleMessagesInOrderBySenderId, {
				[removingUserId] = List.removeValue(bubbleMessagesInOrderBySenderId[removingUserId], messageIdToRemove),
			})
			if
				bubbleMessagesInOrderBySenderId[removingUserId]
				and Dictionary.count(bubbleMessagesInOrderBySenderId[removingUserId]) == 0
			then
				bubbleMessagesInOrderBySenderId = Dictionary.removeKey(bubbleMessagesInOrderBySenderId, removingUserId)
				if mockUserIdToPartOrModel[removingUserId] then
					local partOrModelRef = mockUserIdToPartOrModel[removingUserId]
					if partOrModelToMockUserId[partOrModelRef] then
						partOrModelToMockUserId = Dictionary.removeKey(partOrModelToMockUserId, partOrModelRef)
					end
					mockUserIdToPartOrModel = Dictionary.removeKey(mockUserIdToPartOrModel, removingUserId)
				end
			end
		end
	end

	if message.isVisibleInChatWindow then
		windowMessagesInOrder = List.append(windowMessagesInOrder, messageId)
	end
	return Dictionary.join(state, {
		windowMessagesInOrder = windowMessagesInOrder,
		byMessageId = Dictionary.join(byMessageId, {
			[messageId] = {
				userId = messageUserId,
				prefixText = message.prefixText,
				text = message.text,
				translation = message.translation,
				useTranslation = message.useTranslation,
				messageId = messageId,
				status = message.status,
				timestamp = message.timestamp,
				isVisibleInBubbleChat = message.isVisibleInBubbleChat,
				isVisibleInChatWindow = message.isVisibleInChatWindow,
				partOrModel = partOrModel,
				shouldOverrideBubbleChatSettings = message.shouldOverrideBubbleChatSettings,
				bubbleChatMessageProperties = message.bubbleChatMessageProperties,
			},
		}),
		bubbleMessagesInOrderBySenderId = messageUserId and Dictionary.join(bubbleMessagesInOrderBySenderId, {
			[messageUserId] = List.append(bubbleMessagesInOrderBySenderId[messageUserId] or {}, messageId),
		}),
		mockUserIdToPartOrModel = mockUserIdToPartOrModel,
		partOrModelToMockUserId = partOrModelToMockUserId,
	})
end

local function globalToggleTranslations(state: State, action: ChatTranslationGlobalToggled.Action)
	local useTranslation = action.useTranslation
	local byMessageId = state.byMessageId
	local newByMessageId = {}

	for k, _ in pairs(byMessageId) do
		local message = byMessageId[k]

		if message ~= nil then
			newByMessageId[k] = {
				prefixText = message.prefixText,
				text = message.text,
				translation = message.translation,
				useTranslation = useTranslation,
				messageId = message.messageId,
				status = message.status,
				timestamp = message.timestamp,
				isVisibleInBubbleChat = message.isVisibleInBubbleChat,
				isVisibleInChatWindow = message.isVisibleInChatWindow,
				partOrModel = message.partOrModel,
				shouldOverrideBubbleChatSettings = message.shouldOverrideBubbleChatSettings,
				bubbleChatMessageProperties = message.bubbleChatMessageProperties,
				userId = message.userId,
				textChannel = message.textChannel,
			}
		end
	end

	return Dictionary.join(state, {
		byMessageId = Dictionary.join(byMessageId, newByMessageId),
	})
end

local function individualToggleTranslation(state: State, action: ChatTranslationMessageToggled.Action)
	local useTranslation = action.useTranslation
	local messageId = action.messageId
	local byMessageId = state.byMessageId

	local message = byMessageId[messageId]

	if message ~= nil then
		return Dictionary.join(state, {
			byMessageId = Dictionary.join(byMessageId, {
				[messageId] = {
					prefixText = message.prefixText,
					text = message.text,
					translation = message.translation,
					useTranslation = useTranslation,
					messageId = message.messageId,
					status = message.status,
					timestamp = message.timestamp,
					isVisibleInBubbleChat = message.isVisibleInBubbleChat,
					isVisibleInChatWindow = message.isVisibleInChatWindow,
					partOrModel = message.partOrModel,
					shouldOverrideBubbleChatSettings = message.shouldOverrideBubbleChatSettings,
					bubbleChatMessageProperties = message.bubbleChatMessageProperties,
					userId = message.userId,
					textChannel = message.textChannel,
				},
			}),
		})
	end
end

local function mapByMessageIdInOrderBubbleChat(state: State, action: IncomingBubbleChatMessageReceived.Action)
	local bubbleChatMessageTable = action.bubbleChatMessageTable

	-- BubbleChat messages sent with IncomingBubbleChatMessageReceived action are always visible in BubbleChat and invisible in ChatWindow.
	local message = {
		userId = bubbleChatMessageTable.bubbleChatMessageUserId,
		prefixText = "",
		text = bubbleChatMessageTable.message,
		translation = if getFFlagChatTranslationUIEnabled() then bubbleChatMessageTable.translation else nil,
		useTranslation = if getFFlagChatTranslationUIEnabled() then getChatTranslationEnabled() else nil,
		messageId = bubbleChatMessageTable.bubbleChatMessageId,
		status = Enum.TextChatMessageStatus.Success,
		timestamp = bubbleChatMessageTable.timestamp,
		partOrModel = bubbleChatMessageTable.partOrModel,
		shouldOverrideBubbleChatSettings = true,
		isVisibleInBubbleChat = true,
		isVisibleInChatWindow = false,
		bubbleChatMessageProperties = bubbleChatMessageTable.bubbleChatMessageProperties,
	}

	return mapByMessageIdInOrderHelper(state, message)
end

local function mapByMessageIdInOrder(state: State, action: IncomingMessageReceived.Action | OutgoingMessageSent.Action)
	local textChatMessage: TextChatMessage = action.textChatMessage
	local textChatMessageUserId = if textChatMessage.TextSource
		then tostring(textChatMessage.TextSource.UserId)
		else nil

	local isVisibleInChatWindow: boolean
	if textChatMessageUserId == nil then
		-- Message is a system message so it should always be visible in ChatWindow
		isVisibleInChatWindow = true
	elseif not state.canLocalUserChat then
		-- If user does not have chat settings on, no messages should be visible
		isVisibleInChatWindow = false
	else
		if
			textChatMessage.Status == Enum.TextChatMessageStatus.Success
			or textChatMessage.Status == Enum.TextChatMessageStatus.Sending
		then
			isVisibleInChatWindow = true
		else
			isVisibleInChatWindow = false
		end
	end
	local isMuted = if textChatMessageUserId then Set.has(state._mutedUserIds, textChatMessageUserId) else false
	isVisibleInChatWindow = isVisibleInChatWindow and not isMuted

	local isVisibleInBubbleChat: boolean = false
	if
		state.isBubbleChatEnabled
		and isVisibleInChatWindow
		and (
			textChatMessage.Status == Enum.TextChatMessageStatus.Success
			or textChatMessage.Status == Enum.TextChatMessageStatus.Sending
		)
	then
		isVisibleInBubbleChat = true
	end

	local message = {
		userId = textChatMessageUserId,
		prefixText = textChatMessage.PrefixText,
		text = textChatMessage.Text,
		translation = if getFFlagChatTranslationUIEnabled() then textChatMessage.Translation else nil,
		useTranslation = if getFFlagChatTranslationUIEnabled() then getChatTranslationEnabled() else nil,
		textChannel = textChatMessage.TextChannel,
		messageId = textChatMessage.MessageId,
		status = textChatMessage.Status,
		timestamp = textChatMessage.Timestamp,
		isVisibleInBubbleChat = isVisibleInBubbleChat,
		isVisibleInChatWindow = isVisibleInChatWindow,
		bubbleChatMessageProperties = textChatMessage.BubbleChatMessageProperties,
	}

	return mapByMessageIdInOrderHelper(state, message)
end

local function mapByMessageIdInOrderLegacyBubbleChat(state: State, action: LegacyBubbleCreated.Action)
	if not GlobalFlags.ConsolidateBubbleChat then
		return state
	end

	local messageData = action.messageData
	local timestamp = messageData.timestamp
	if timestamp then
		timestamp = DateTime.fromUnixTimestamp(messageData.timestamp)
	else
		timestamp = DateTime.now()
	end

	local message = {
		userId = messageData.userId,
		prefixText = "",
		text = messageData.text,
		messageId = messageData.id,
		status = Enum.TextChatMessageStatus.Success,
		timestamp = timestamp,
		partOrModel = messageData.adornee,
		shouldOverrideBubbleChatSettings = true,
		isVisibleInBubbleChat = true,
		isVisibleInChatWindow = false,
	}
	return mapByMessageIdInOrderHelper(state, message)
end

return Rodux.createReducer(defaultState, {
	[IncomingMessageReceived.name] = mapByMessageIdInOrder,
	[IncomingBubbleChatMessageReceived.name] = mapByMessageIdInOrderBubbleChat :: any,
	[OutgoingMessageSent.name] = mapByMessageIdInOrder,
	[UserMuted.name] = function(state: State, action: UserMuted.Action)
		return Dictionary.join(state, {
			_mutedUserIds = Set.add(state._mutedUserIds, action.userId),
		})
	end :: any,
	[UserUnmuted.name] = function(state: State, action: UserUnmuted.Action)
		return Dictionary.join(state, {
			_mutedUserIds = Set.subtract(state._mutedUserIds, action.userId),
		})
	end :: any,
	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.join(state, {
			bubbleMessagesInOrderBySenderId = Dictionary.filter(state.bubbleMessagesInOrderBySenderId, function(_, key)
				return key ~= action.userId
			end),
			_mutedUserIds = Set.subtract(state._mutedUserIds, action.userId),
		})
	end :: any,
	[ChatPrivacySettingsReceived.name] = function(state: State, action: ChatPrivacySettingsReceived.Action)
		return Dictionary.join(state, { canLocalUserChat = action.canUserChat })
	end :: any,
	[ChatPrivacySettingsFetchFailed.name] = function(state: State, _)
		return Dictionary.join(state, { canLocalUserChat = false })
	end :: any,
	[ConfigurationObjectsLoaded.name] = function(state, action: ConfigurationObjectsLoaded.Action)
		return Dictionary.join(state, {
			isBubbleChatEnabled = if action.bubbleChatSettings.Enabled
				then action.bubbleChatSettings.Enabled
				else false,
		})
	end :: any,
	[BubbleChatSettingsChanged.name] = function(state, action: BubbleChatSettingsChanged.Action)
		if action.property ~= "Enabled" then
			return state
		end

		local byMessageId = Dictionary.map(state.byMessageId, function(message)
			if message.shouldOverrideBubbleChatSettings then
				return message
			else
				return Dictionary.join(message, {
					isVisibleInBubbleChat = action.value and message.isVisibleInChatWindow,
				})
			end
		end)

		return Dictionary.join(state, {
			byMessageId = byMessageId,
			isBubbleChatEnabled = action.value,
		})
	end :: any,
	[ChatWindowMessagesCleared.name] = function(state: State, _)
		if AllowClearCommand() then
			local byMessageId = Dictionary.map(state.byMessageId, function(message)
				return Dictionary.join(message, {
					isVisibleInChatWindow = false,
				})
			end)
			return Dictionary.join(state, {
				windowMessagesInOrder = {},
				byMessageId = byMessageId,
			})
		else
			return state
		end
	end :: any,
	[ChatTranslationGlobalToggled.name] = globalToggleTranslations :: any,
	[ChatTranslationMessageToggled.name] = individualToggleTranslation :: any,
	[LegacyBubbleCreated.name] = mapByMessageIdInOrderLegacyBubbleChat :: any,
	[LegacyBubbleTextUpdated.name] = function(state: State, action: LegacyBubbleTextUpdated.Action)
		if not GlobalFlags.ConsolidateBubbleChat then
			return state
		end

		local byMessageId = state.byMessageId
		local messageId = action.messageId
		local newText = action.newText
		if byMessageId[messageId] then
			local updatedMessage = byMessageId[messageId]
			updatedMessage.text = newText
			byMessageId = Dictionary.join(byMessageId, {
				[messageId] = updatedMessage,
			})
		end

		return Dictionary.set(state, "byMessageId", byMessageId)
	end :: any,
})
