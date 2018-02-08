local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

return function(state, action)
	state = state or {}

	if action.type == ActionType.RequestPageConversations then
		return Immutable.Join(state, {
			pageConversationsIsFetching = true,
		})
	elseif action.type == ActionType.ReceivedPageConversations then
		return Immutable.Join(state, {
			pageConversationsIsFetching = false,
		})
	elseif action.type == ActionType.RequestLatestMessages then
		return Immutable.Join(state, {
			latestMessagesIsFetching = true,
		})
	elseif action.type == ActionType.ReceivedLatestMessages then
		return Immutable.Join(state, {
			latestMessagesIsFetching = false,
		})
	elseif action.type == ActionType.ReceivedOldestConversation then
		return Immutable.Join(state, {
			oldestConversationIsFetched = true,
		})
	end

	return state
end