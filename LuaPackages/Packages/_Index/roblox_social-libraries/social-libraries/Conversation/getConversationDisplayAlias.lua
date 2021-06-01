local formatAlias = require(script:FindFirstAncestor("social-libraries").Utils.formatAlias)
local getOtherParticipant = require(script.Parent.getOtherParticipant)

return function(state, conversation)
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
