--[[
	Contextual information (icon and localized text) for a recommendations 

	Intended to replace SocialLibraries getRecommendationDisplayContext.lua
]]
local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent

local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization

local getRecommendationContextualInfoDisplay = require(SocialCommon.Utils.getRecommendationContextualInfoDisplay)

type Recommendation = {
	contextType: {
		rawValue: () -> string,
	}?,
	mutualFriendsList: { [number]: any }?,
	mutualFriendsCount: number?,
	hasIncomingFriendRequest: boolean?,
	[string]: any?,
}

type ContextualInfoDisplay = {
	text: string,
	icon: string?,
}

return function(recommendation: Recommendation): ContextualInfoDisplay
	local localized = useLocalization({
		singularMutualFriend = "Feature.Friends.Label.SingularMutualFriend",
		mutualFriends = "Feature.Friends.Label.MutualFriends",
		frequents = "Feature.Friends.Label.Frequent",
		friendRequests = "Feature.Friends.Label.FriendRequest",
	})
	return getRecommendationContextualInfoDisplay({ recommendation = recommendation, localized = localized })
end
