local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local ApolloClientModule = require(Packages.ApolloClient)
local gql = ApolloClientModule.gql

local ProfilesInsights = gql([[
	query ProfilesInsights($userIds: [String]!, $count: Int, $pageId: String) {
		profilesInsights(userIds: $userIds, count: $count, pageId: $pageId) {
			id
			profileInsights {
				targetUserId
				isOfflineFrequents
				mutualFriends {
					id
					username
					displayName
				}
			}
		}
	}
]])

--* need to provide id to merge profile insights results together
local PROFILE_INSIGHTS_SEARCH_PAGE_ID = "PROFILE_INSIGHTS_SEARCH_PAGE_ID"

local createSearchPageId = function(key: string)
	return PROFILE_INSIGHTS_SEARCH_PAGE_ID .. ":" .. key
end

return {
	query = ProfilesInsights,
	createPageId = createSearchPageId,
}
