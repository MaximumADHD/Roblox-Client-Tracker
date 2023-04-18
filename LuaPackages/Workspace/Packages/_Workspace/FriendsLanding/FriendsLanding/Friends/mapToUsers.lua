local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local t = dependencies.t
local RoduxPresence = dependencies.RoduxPresence
local SocialLibraries = dependencies.SocialLibraries
local getFFlagVerifiedBadgeInFriendsLanding = dependencies.getFFlagVerifiedBadgeInFriendsLanding
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

local getUserAvatarImage = require(script.Parent.getUserAvatarImage)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

return function(state)
	return function(userId)
		assert(t.string(userId))
		local friends = getDeepValue(state, string.format("FriendsLanding.Friends.byUserId.%s", userId)) or {}
		local deletedUsers = state.FriendsLanding.DeletedUsers or nil
		local verifiedUsers = if getFFlagVerifiedBadgeInFriendsLanding()
			then state.FriendsLanding.VerifiedUsers
			else nil

		return llama.Dictionary.map(friends, function(friendId)
			return llama.Dictionary.join(
				getDeepValue(state, string.format("FriendsLanding.Users.byUserId.%s", friendId)),
				RoduxPresence.Selectors.getUserPresenceByUserId(state, friendId),
				{
					thumbnail = state.isTest and "" or getUserAvatarImage(friendId),
				},
				{
					isDeleted = deletedUsers and deletedUsers[friendId],
				},
				{
					hasVerifiedBadge = if getFFlagVerifiedBadgeInFriendsLanding()
						then verifiedUsers and verifiedUsers[friendId]
						else nil,
				},
				{
					isInactiveFriend = if getFFlagFriendsLandingInactiveFriendsEnabled()
						then getDeepValue(state, `FriendsLanding.InactiveFriends.{friendId}`)
						else nil,
				}
			)
		end)
	end
end
