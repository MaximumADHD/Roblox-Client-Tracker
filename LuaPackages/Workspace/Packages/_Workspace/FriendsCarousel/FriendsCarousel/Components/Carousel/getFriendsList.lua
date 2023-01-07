local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local User = SocialLibraries.User
local llama = dependencies.llama
local RoduxPresence = dependencies.RoduxPresence
local mapIdToUser = require(script.Parent.mapIdToUser)
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

local getFriendsList = function(state: any, keyPath: string, props: any?): LocalTypes.FriendsList
	local localUserId = tostring(state.LocalUserId)
	local friendsList = getDeepValue(state, string.format("%s.Friends.byUserId.%s", keyPath, localUserId)) or {}

	local mapIdToUserAndPresence = function(userId)
		local friendRank =
			getDeepValue(state, string.format("%s.Friends.friendsRankByUserId.%s.%s", keyPath, localUserId, userId))
		return llama.Dictionary.join(
			mapIdToUser(state, keyPath, props)(userId),
			RoduxPresence.Selectors.getUserPresenceByUserId(state, userId),
			{
				isFriendWithUser = true,
				friendRank = friendRank,
			}
		)
	end

	return llama.List.sort(
		llama.List.map(friendsList, mapIdToUserAndPresence),
		if dependencies.GetFFlagUseCorrectedFriendSortUtil()
			then User.sortFriendsByCorrectedPresenceAndRank
			else User.sortFriendsByPresenceAndRank
	)
end

return getFriendsList
