local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local ProfilesInsightsQuery = require(UserSearch.Apollo.ProfilesInsightsQuery)
local LocalTypes = require(UserSearch.Common.LocalTypes)

local ApolloClient = require(Packages.ApolloClient)
type DataProxy_WriteQueryOptions = ApolloClient.DataProxy_WriteQueryOptions<any, any>

local GraphQLServerModule = require(Packages.GraphQLServer)
type ProfileInsights = GraphQLServerModule.ProfileInsights

local mockProfileInsight = function(id)
	return {
		__typename = "ProfileInsights",
		targetUserId = id,
		isOfflineFrequents = true,
		mutualFriends = {},
	} :: ProfileInsights
end

local mockProfileInsightWithMutualFriends = function(id): ProfileInsights
	local mocked: ProfileInsights = {
		__typename = "ProfileInsights",
		targetUserId = id,
		isOfflineFrequents = true,
		mutualFriends = {
			{ __typename = "MutualFriend", id = "234", username = "mockedUsername", displayName = "mockedDisplayName" },
		},
	} :: any
	return mocked
end

local twoEntriesQuerySearchKeyword = "test"
local twoEntriesQueryPageId: string = ProfilesInsightsQuery.createPageId(twoEntriesQuerySearchKeyword)
local twoEntriesQuery = {
	variables = {
		userIds = { "111", "222" },
		pageId = twoEntriesQueryPageId,
	},
	query = ProfilesInsightsQuery.query,
	data = {
		profilesInsights = {
			__typename = "ProfileInsightsPages",
			id = twoEntriesQueryPageId,
			profileInsights = {
				mockProfileInsight("111"),
				mockProfileInsight("222"),
			},
		},
	},
} :: DataProxy_WriteQueryOptions

local twoMoreEntriesQuery = {
	variables = {
		userIds = { "333", "444" },
		pageId = twoEntriesQueryPageId,
	},
	query = ProfilesInsightsQuery.query,
	data = {
		profilesInsights = {
			__typename = "ProfileInsightsPages",
			id = twoEntriesQueryPageId,
			profileInsights = {
				mockProfileInsight("333"),
				mockProfileInsight("444"),
			},
		},
	},
} :: DataProxy_WriteQueryOptions

local twoMoreEntriesReponse = {
	userInsights = {
		{
			targetUser = "111",
			profileInsights = { { mutualFriendInsight = {}, offlineFrequentsInsight = { havePlayedTogether = true } } },
		},
		{
			targetUser = "222",
			profileInsights = { { mutualFriendInsight = {}, offlineFrequentsInsight = { havePlayedTogether = true } } },
		},
	},
}

local users: { LocalTypes.SearchUser } = { { id = "111" }, { id = "222" } } :: any
local usersMore: { LocalTypes.SearchUser } = { { id = "111" }, { id = "222" }, { id = "333" }, { id = "444" } } :: any

return {
	mockProfileInsight = mockProfileInsight,
	mockProfileInsightWithMutualFriends = mockProfileInsightWithMutualFriends,
	twoEntries = {
		users = users,
		userIds = { "111", "222" },
		searchKeyword = twoEntriesQuerySearchKeyword,
		pageId = twoEntriesQueryPageId,
		response = twoMoreEntriesReponse,
		query = twoEntriesQuery,
		usersMore = usersMore,
		queryMore = twoMoreEntriesQuery,
		userIdsMore = { "333", "444" },
	},
}
