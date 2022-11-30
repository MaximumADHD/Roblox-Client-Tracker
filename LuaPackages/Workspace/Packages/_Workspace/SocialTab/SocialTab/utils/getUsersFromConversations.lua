local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local llama = dependencies.llama
local RoduxUsers = dependencies.RoduxUsers

local function userUpdatedFromUser(user)
	return RoduxUsers.Actions.UserUpdated({
		id = user.id,
		username = user.name,
		displayName = user.displayName,
	})
end

return function(action, state)
	local newUsers = llama.List.reduce(action.responseBody, function(allUsers, conversation)
		return llama.List.reduce(conversation.participants, function(newUsers, participant)
			local formattedId = tostring(participant.targetId)

			if not newUsers[formattedId] and not state.byUserId[formattedId] then
				local formattedParticipant = llama.Dictionary.join(participant, { id = formattedId })

				return llama.Dictionary.join(newUsers, { [formattedId] = userUpdatedFromUser(formattedParticipant) })
			end

			return newUsers
		end, allUsers)
	end, {})

	return llama.Dictionary.values(newUsers)
end
