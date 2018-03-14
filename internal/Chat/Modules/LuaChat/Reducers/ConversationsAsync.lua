local Modules = game:GetService("CoreGui").RobloxGui.Modules

local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(Modules.Common.Immutable)

return function(state, action)
	state = state or {}

	if action.type == ActionType.RequestPageConversations then
		return Immutable.JoinDictionaries(state, {
			pageConversationsIsFetching = true,
		})
	elseif action.type == ActionType.ReceivedPageConversations then
		return Immutable.JoinDictionaries(state, {
			pageConversationsIsFetching = false,
		})
	elseif action.type == ActionType.RequestLatestMessages then
		return Immutable.JoinDictionaries(state, {
			latestMessagesIsFetching = true,
		})
	elseif action.type == ActionType.ReceivedLatestMessages then
		return Immutable.JoinDictionaries(state, {
			latestMessagesIsFetching = false,
		})
	elseif action.type == ActionType.ReceivedOldestConversation then
		return Immutable.JoinDictionaries(state, {
			oldestConversationIsFetched = true,
		})
	end

	return state
end