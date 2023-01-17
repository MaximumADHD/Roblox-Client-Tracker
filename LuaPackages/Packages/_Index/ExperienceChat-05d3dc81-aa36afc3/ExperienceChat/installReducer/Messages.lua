local HttpService = game:GetService("HttpService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Llama = require(Packages.llama)
local List = Llama.List
local Dictionary = Llama.Dictionary
local Set = Llama.Set

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local IncomingBubbleChatMessageReceived = require(Actions.IncomingBubbleChatMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local UserMuted = require(Actions.UserMuted)
local UserUnmuted = require(Actions.UserUnmuted)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type Message = {
	userId: string?,
	prefixText: string,
	text: string,
	textChannel: TextChannel?,
	messageId: string,
	timestamp: DateTime,
	visible: boolean,
	partOrModel: Instance?,
	status: Enum.TextChatMessageStatus,
}

export type State = {
	messageLimit: number,
	_mutedUserIds: { [string]: boolean },
	inOrder: { string },
	byMessageId: { [string]: Message },
	inOrderBySenderId: { [string]: { string } },
	mockUserIdToPartOrModel: { [string]: Instance },
	partOrModelToMockUserId: { [Instance]: string },
}

local defaultState: State = {
	_mutedUserIds = {},
	messageLimit = 50,
	inOrder = {},
	byMessageId = {},
	inOrderBySenderId = {},
	mockUserIdToPartOrModel = {},
	partOrModelToMockUserId = {},
}

local function mapByMessageIdInOrderHelper(state: State, message: Message)
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

	local isMuted = if messageUserId then Set.has(state._mutedUserIds, messageUserId) else false
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
					visible = not isMuted,
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
				visible = not isMuted,
				partOrModel = partOrModel,
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

	local message = {
		userId = bubbleChatMessageTable.bubbleChatMessageUserId,
		prefixText = "",
		text = bubbleChatMessageTable.message,
		messageId = bubbleChatMessageTable.bubbleChatMessageId,
		status = Enum.TextChatMessageStatus.Success,
		timestamp = bubbleChatMessageTable.timestamp,
		partOrModel = bubbleChatMessageTable.partOrModel,
		visible = true,
	}

	return mapByMessageIdInOrderHelper(state, message)
end

local function mapByMessageIdInOrder(state: State, action: IncomingMessageReceived.Action | OutgoingMessageSent.Action)
	local textChatMessage: TextChatMessage = action.textChatMessage
	local textChatMessageUserId = if textChatMessage.TextSource
		then tostring(textChatMessage.TextSource.UserId)
		else nil

	local message = {
		userId = textChatMessageUserId,
		prefixText = textChatMessage.PrefixText,
		text = textChatMessage.Text,
		textChannel = textChatMessage.TextChannel,
		messageId = textChatMessage.MessageId,
		status = textChatMessage.Status,
		timestamp = textChatMessage.Timestamp,
		visible = true,
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
})
