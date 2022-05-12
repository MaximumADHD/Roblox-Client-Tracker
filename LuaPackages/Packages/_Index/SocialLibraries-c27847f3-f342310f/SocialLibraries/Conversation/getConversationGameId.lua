local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local UserModel = dependencies.UserModel

-- returns the most currently played game within the people in this conversation, or the pinned game (if exists)
local getConversationGameId = function(conversation, localPlayerUserId, conversationParticipantsById)
	if conversation.pinnedGame and conversation.pinnedGame.universeId then
		return tostring(conversation.pinnedGame.universeId)
	end

	local currentlyPlayedGames = {}
	for _, userId in pairs(conversation.participants or {}) do
		local user = conversationParticipantsById[userId]
		if user ~= nil and userId ~= localPlayerUserId then
			if user.presence == UserModel.PresenceType.IN_GAME and user.rootPlaceId then
				currentlyPlayedGames[user.rootPlaceId] = currentlyPlayedGames[user.rootPlaceId] or 0
				currentlyPlayedGames[user.rootPlaceId] = currentlyPlayedGames[user.rootPlaceId] + 1
			end
		end
	end

	local mostCurrentlyPlayedGameId
	local mostCurrentlyPlayedGameCount = 0
	for placeId, count in pairs(currentlyPlayedGames) do
		if count > mostCurrentlyPlayedGameCount then
			mostCurrentlyPlayedGameId = placeId
			mostCurrentlyPlayedGameCount = count
		end
	end

	return mostCurrentlyPlayedGameId and tostring(mostCurrentlyPlayedGameId) or nil
end

return getConversationGameId
