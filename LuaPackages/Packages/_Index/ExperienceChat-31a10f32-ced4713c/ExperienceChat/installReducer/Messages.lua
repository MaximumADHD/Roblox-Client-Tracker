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
export type Message = {
	userId: string?,
	prefixText: string,
	text: string,
	textChannel: TextChannel?,
	messageId: string,
	timestamp: DateTime,
	isVisibleInBubbleChat: boolean,
	isVisibleInChatWindow: boolean,
	shouldOverrideBubbleChatSettings: boolean?,
	partOrModel: Instance?,
	status: Enum.TextChatMessageStatus,
}

export type State = {
	messageLimit: number,
	canLocalUserChat: boolean,
	isBubbleChatEnabled: boolean,
	_mutedUserIds: { [string]: boolean },
	inOrder: { string },
	byMessageId: { [string]: Message },
	inOrderBySenderId: { [string]: { string } },
	mockUserIdToPartOrModel: { [string]: Instance },
	partOrModelToMockUserId: { [Instance]: string },
}

local defaultState: State = {
	canLocalUserChat = false,
	isBubbleChatEnabled = false,
	_mutedUserIds = {},
	messageLimit = 50,
	inOrder = {},
	byMessageId = {},
	inOrderBySenderId = {},
	mockUserIdToPartOrModel = {},
	partOrModelToMockUserId = {},
}

local function mapByMessageIdInOrderHelper(state: State, message: Message)
	if isWhitespaceOnly(message.text) then
		return state
	end

	local partOrModel = message.partOrModel
	local messageUserId = message.userId
	local messageId = message.messageId

	local inOrder = state.inOrder
	local byMessageId = state.byMessageId
	local inOrderBySenderId = state.inOrderBySenderId
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
		return Dictionary.join(state, {
			byMessageId = Dictionary.join(byMessageId, {
				[messageId] = {
					userId = messageUserId,
					prefixText = message.prefixText,
					text = message.text,
					textChannel = message.textChannel,
					messageId = messageId,
					status = message.status,
					timestamp = message.timestamp,
					isVisibleInBubbleChat = message.isVisibleInBubbleChat,
					isVisibleInChatWindow = message.isVisibleInChatWindow,
					shouldOverrideBubbleChatSettings = message.shouldOverrideBubbleChatSettings,
				} :: Message,
			}),
		})
	end

	if #inOrder == state.messageLimit then
		local messageIdToRemove = inOrder[1]
		local removingUserId = if byMessageId[messageIdToRemove] then byMessageId[messageIdToRemove].userId else nil
		inOrder = List.removeIndex(inOrder, 1)
		byMessageId = Dictionary.removeKey(byMessageId, messageIdToRemove)

		if removingUserId and inOrderBySenderId[removingUserId] then
			inOrderBySenderId = Dictionary.join(inOrderBySenderId, {
				[removingUserId] = List.removeValue(inOrderBySenderId[removingUserId], messageIdToRemove),
			})
			if inOrderBySenderId[removingUserId] and Dictionary.count(inOrderBySenderId[removingUserId]) == 0 then
				inOrderBySenderId = Dictionary.removeKey(inOrderBySenderId, removingUserId)
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

	return Dictionary.join(state, {
		inOrder = List.append(inOrder, messageId),
		byMessageId = Dictionary.join(byMessageId, {
			[messageId] = {
				userId = messageUserId,
				prefixText = message.prefixText,
				text = message.text,
				messageId = messageId,
				status = message.status,
				timestamp = message.timestamp,
				isVisibleInBubbleChat = message.isVisibleInBubbleChat,
				isVisibleInChatWindow = message.isVisibleInChatWindow,
				partOrModel = partOrModel,
				shouldOverrideBubbleChatSettings = message.shouldOverrideBubbleChatSettings,
			},
		}),
		inOrderBySenderId = messageUserId and Dictionary.join(inOrderBySenderId, {
			[messageUserId] = List.append(inOrderBySenderId[messageUserId] or {}, messageId),
		}),
		mockUserIdToPartOrModel = mockUserIdToPartOrModel,
		partOrModelToMockUserId = partOrModelToMockUserId,
	})
end

local function mapByMessageIdInOrderBubbleChat(state: State, action: IncomingBubbleChatMessageReceived.Action)
	local bubbleChatMessageTable = action.bubbleChatMessageTable

	-- BubbleChat messages sent with IncomingBubbleChatMessageReceived action are always visible in BubbleChat and invisible in ChatWindow.
	local message = {
		userId = bubbleChatMessageTable.bubbleChatMessageUserId,
		prefixText = "",
		text = bubbleChatMessageTable.message,
		messageId = bubbleChatMessageTable.bubbleChatMessageId,
		status = Enum.TextChatMessageStatus.Success,
		timestamp = bubbleChatMessageTable.timestamp,
		partOrModel = bubbleChatMessageTable.partOrModel,
		shouldOverrideBubbleChatSettings = true,
		isVisibleInBubbleChat = true,
		isVisibleInChatWindow = false,
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
		textChannel = textChatMessage.TextChannel,
		messageId = textChatMessage.MessageId,
		status = textChatMessage.Status,
		timestamp = textChatMessage.Timestamp,
		isVisibleInBubbleChat = isVisibleInBubbleChat,
		isVisibleInChatWindow = isVisibleInChatWindow,
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
			inOrderBySenderId = Dictionary.filter(state.inOrderBySenderId, function(_, key)
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
})
