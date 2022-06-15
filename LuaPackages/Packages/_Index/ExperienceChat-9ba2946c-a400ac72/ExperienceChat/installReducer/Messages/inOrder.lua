local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local List = require(Packages.llama).List

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)

export type State = { string }

local function mapByTextChannelId(state: State, action: IncomingMessageReceived.Action | OutgoingMessageSent.Action)
	local textChatMessage: TextChatMessage = action.textChatMessage

	if List.find(state, textChatMessage.MessageId) then
		return state
	else
		return List.append(state, textChatMessage.MessageId)
	end
end

return Rodux.createReducer({}, {
	[IncomingMessageReceived.name] = mapByTextChannelId,
	[OutgoingMessageSent.name] = mapByTextChannelId,
})
