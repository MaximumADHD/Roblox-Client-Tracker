local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local Constants = require(FriendsLanding.Common.Constants)

local RODUX_KEY = require(FriendsLanding.Common.Constants).RODUX_KEY

local addFriendRecommendationsToState = function(state)
	local recommendationsDict = getDeepValue(
		state,
		string.format("%s.Friends.recommendations.byUserId.%s", RODUX_KEY, "test")
	) or {}

	local addFriendsPageRecommndationIds = {}
	for id, _ in pairs(recommendationsDict) do
		addFriendsPageRecommndationIds[id] = true
	end

	state[RODUX_KEY].Friends.recommendations.bySource = {
		[Constants.ADD_FRIENDS_PAGE_RECS_SOURCE] = addFriendsPageRecommndationIds,
	}
end

return addFriendRecommendationsToState
