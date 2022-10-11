local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Llama = require(Packages.llama)
local List = Llama.List
local Dictionary = Llama.Dictionary
local Set = Llama.Set

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local UserMuted = require(Actions.UserMuted)
local UserUnmuted = require(Actions.UserUnmuted)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type message = {
	userId: string,
	prefixText: string,
	text: string,
	textChannel: TextChannel,
	messageId: string,
	timestamp: DateTime,
	visible: boolean,
}

export type State = {
	messageLimit: number,
	_mutedUserIds: { [string]: boolean },
	inOrder: { string },
	byMessageId: { [string]: message },
	inOrderBySenderId: { [string]: { string } },
}

local defaultState = {
	_mutedUserIds = {},
	messageLimit = 50,
	inOrder = {},
	byMessageId = {},
	inOrderBySenderId = {},
}

local function mapByMessageIdInOrder(state: State, action: IncomingMessageReceived.Action | OutgoingMessageSent.Action)
	local textChatMessage: TextChatMessage = action.textChatMessage
	local textChatMessageUserId = if textChatMessage.TextSource
		then tostring(textChatMessage.TextSource.UserId)
		else nil

	local inOrder = state.inOrder
	local byMessageId = state.byMessageId
	local inOrderBySenderId = state.inOrderBySenderId
	local isMuted = if textChatMessageUserId then Set.has(state._mutedUserIds, textChatMessageUserId) else false
	if byMessageId[textChatMessage.MessageId] then
		return Dictionary.join(state, {
			byMessageId = Dictionary.join(byMessageId, {
				[textChatMessage.MessageId] = {
					userId = textChatMessageUserId,
					prefixText = textChatMessage.PrefixText,
					text = textChatMessage.Text,
					textChannel = textChatMessage.TextChannel,
					messageId = textChatMessage.MessageId,
					status = textChatMessage.Status,
					timestamp = textChatMessage.Timestamp,
					visible = not isMuted,
				},
			}),
		})
	end

	local userId = if textChatMessage.TextSource then tostring(textChatMessage.TextSource.UserId) else nil

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
			end
		end
	end

	return Dictionary.join(state, {
		inOrder = List.append(inOrder, textChatMessage.MessageId),
		byMessageId = Dictionary.join(byMessageId, {
			[textChatMessage.MessageId] = {
				userId = userId,
				prefixText = textChatMessage.PrefixText,
				text = textChatMessage.Text,
				textChannel = textChatMessage.TextChannel,
				messageId = textChatMessage.MessageId,
				status = textChatMessage.Status,
				timestamp = textChatMessage.Timestamp,
				visible = not isMuted,
			},
		}),
		inOrderBySenderId = userId and Dictionary.join(inOrderBySenderId, {
			[userId] = List.append(inOrderBySenderId[userId] or {}, textChatMessage.MessageId),
		}),
	})
end

return Rodux.createReducer(defaultState, {
	[IncomingMessageReceived.name] = mapByMessageIdInOrder,
	[OutgoingMessageSent.name] = mapByMessageIdInOrder,
	[UserMuted.name] = function(state: State, action: UserMuted.Action)
		return Dictionary.join(state, {
			_mutedUserIds = Set.add(state._mutedUserIds, action.userId),
		})
	end,
	[UserUnmuted.name] = function(state: State, action: UserUnmuted.Action)
		return Dictionary.join(state, {
			_mutedUserIds = Set.subtract(state._mutedUserIds, action.userId),
		})
	end,
	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.join(state, {
			inOrderBySenderId = Dictionary.filter(state.inOrderBySenderId, function(_, key)
				return key ~= action.userId
			end),
			_mutedUserIds = Set.subtract(state._mutedUserIds, action.userId),
		})
	end,
})
