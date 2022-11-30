local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Rodux = dependencies.Rodux

local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)

return Rodux.createReducer(0, {
	[GetUnreadConversationCount.Succeeded.name] = function(state, action)
		if action.responseBody and action.responseBody.count then
			return action.responseBody.count
		end

		return state
	end,
	-- TODO remove when `ConversationActions WebApi.ConversationActions.GetUnreadConversationCountAsync is refactored out
	SetUnreadConversationCount = function(state, action)
		if action.count then
			return action.count
		end

		return state
	end,
})
