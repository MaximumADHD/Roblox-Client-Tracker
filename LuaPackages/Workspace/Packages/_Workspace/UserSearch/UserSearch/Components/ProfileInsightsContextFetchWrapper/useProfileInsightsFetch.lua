local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local ApolloClientModule = require(Packages.ApolloClient)
local useQuery = ApolloClientModule.useQuery

local ProfilesInsightsQuery = require(UserSearch.Apollo.ProfilesInsightsQuery)

local useProfileInsightsFetch = function(userIds: { string }, searchKeyword: string)
	--* Rodux implementation of search groups search results by searchKeyword (UsersSearchResults[keyword])
	local pageId = ProfilesInsightsQuery.createPageId(searchKeyword)

	local ref = useQuery(ProfilesInsightsQuery.query, {
		errorPolicy = "all",
		skip = not userIds or #userIds == 0,
		variables = {
			userIds = userIds,
			pageId = pageId,
		},
	})

	return ref
end

return useProfileInsightsFetch
