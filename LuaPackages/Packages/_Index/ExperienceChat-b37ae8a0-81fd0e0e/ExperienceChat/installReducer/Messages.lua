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
	_mutedUserIds: { string: boolean },
	inOrder: { string },
	byMessageId: { string: message },
}

local defaultState = {
	_mutedUserIds = {},
	messageLimit = 50,
	inOrder = {},
	byMessageId = {},
}

local function mapByMessageIdInOrder(state, action: IncomingMessageReceived.Action | OutgoingMessageSent.Action)
	local textChatMessage: TextChatMessage = action.textChatMessage
	local textChatMessageUserId = if textChatMessage.TextSource
		then tostring(textChatMessage.TextSource.UserId)
		else nil

	local inOrder = state.inOrder
	local byMessageId = state.byMessageId
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

	if #inOrder == state.messageLimit then
		local messageIdToRemove = inOrder[1]
		inOrder = List.removeIndex(inOrder, 1)
		byMessageId = Dictionary.removeKey(byMessageId, messageIdToRemove)
	end

	return Dictionary.join(state, {
		inOrder = List.append(inOrder, textChatMessage.MessageId),
		byMessageId = Dictionary.join(byMessageId, {
			[textChatMessage.MessageId] = {
				userId = if textChatMessage.TextSource then tostring(textChatMessage.TextSource.UserId) else nil,
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
})
