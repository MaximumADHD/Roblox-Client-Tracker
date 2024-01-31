local formatAlias = require(script:FindFirstAncestor("SocialLibraries").Utils.formatAlias)
local getOtherParticipant = require(script.Parent.getOtherParticipant)

local getFFlagDeprecateChatAppReducerAliases =
	require(script:FindFirstAncestor("SocialLibraries").Flags.getFFlagDeprecateChatAppReducerAliases)

return function(state, conversation)
	assert(not getFFlagDeprecateChatAppReducerAliases(), "getConversationDisplayAlias in SocialLibraries is deprecated")
	if conversation.conversationType == "OneToOneConversation" then
		local otherParticipantId = getOtherParticipant(state, conversation.participants)
		if otherParticipantId then
			local aliasesReducer = state.ChatAppReducer.Aliases
			if aliasesReducer then
				local alias = state.ChatAppReducer.Aliases.byUserId[otherParticipantId]
				if alias then
					return formatAlias(alias)
				end
			end
		end
	end

	return nil
end
