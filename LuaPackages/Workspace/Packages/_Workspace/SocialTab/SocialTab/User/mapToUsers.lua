local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama
local t = dependencies.t
local RoduxPresence = dependencies.RoduxPresence
local getFFlagVBXboxReducerFix = dependencies.getFFlagVBXboxReducerFix

local getUserAvatarImage = require(script.Parent.getUserAvatarImage)

return function(state, props: any)
	return function(userId)
		assert(t.string(userId))
		local user = state.SocialTab.Users.byUserId[userId]
		if user then
			if getFFlagVBXboxReducerFix() then
				return llama.Dictionary.join(
					state.SocialTab.Users.byUserId[userId],
					RoduxPresence.Selectors.getUserPresenceByUserId(state, userId),
					{
						thumbnail = getUserAvatarImage(userId),
						isPremium = state.SocialTab.PremiumByUserId[userId] or false,
						hasVerifiedBadge = if state.VerifiedBadges and state.VerifiedBadges.VerifiedUsers
							then state.VerifiedBadges.VerifiedUsers[userId] or false
							else nil,
					}
				)
			else
				return llama.Dictionary.join(
					state.SocialTab.Users.byUserId[userId],
					RoduxPresence.Selectors.getUserPresenceByUserId(state, userId),
					{
						thumbnail = getUserAvatarImage(userId),
						isPremium = state.SocialTab.PremiumByUserId[userId] or false,
						hasVerifiedBadge = state.VerifiedBadges.VerifiedUsers[userId] or false,
					}
				)
			end
		end

		return nil
	end
end
