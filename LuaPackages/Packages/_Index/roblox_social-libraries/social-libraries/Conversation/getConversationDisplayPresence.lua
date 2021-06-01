local SocialLibraries = script:FindFirstAncestor("social-libraries")
local User = SocialLibraries.User
local presenceImageByPresence = require(User.presenceImageByPresence)
local getPresenceTextFromUser = require(User.getPresenceTextFromUser)

local getOtherParticipant = require(script.Parent.getOtherParticipant)

return function(state, conversation)
	if conversation.conversationType == "OneToOneConversation" then
		local otherParticipantId = getOtherParticipant(state, conversation.participants)
		if otherParticipantId then
			local user = state.Users[otherParticipantId]
			if user then
				return {
					image = presenceImageByPresence[user.presence],
					text = getPresenceTextFromUser(user),
				}
			end
		end
	end

	return nil
end
