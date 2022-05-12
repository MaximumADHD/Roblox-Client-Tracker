local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)

export type message = {
	userId: string,
	prefixText: string,
	text: string,
	textChannel: TextChannel,
	messageId: string,
	timestamp: DateTime,
}

export type State = {
	string: message,
}

local function mapByMessageId(state: State, action: IncomingMessageReceived.Action | OutgoingMessageSent.Action)
	local textChatMessage: TextChatMessage = action.textChatMessage

	return Dictionary.join(state, {
		[textChatMessage.MessageId] = {
			userId = if textChatMessage.TextSource then tostring(textChatMessage.TextSource.UserId) else nil,
			prefixText = textChatMessage.PrefixText,
			text = textChatMessage.Text,
			textChannel = textChatMessage.TextChannel,
			messageId = textChatMessage.MessageId,
			status = textChatMessage.Status,
			timestamp = textChatMessage.Timestamp,
		},
	})
end

return Rodux.createReducer({}, {
	[IncomingMessageReceived.name] = mapByMessageId,
	[OutgoingMessageSent.name] = mapByMessageId,
})
