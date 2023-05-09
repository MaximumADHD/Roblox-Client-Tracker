local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local ApolloClientTestUtils = require(Packages.GraphQLServer).ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders

local ProfilesInsightsQuery = require(UserSearch.Apollo.ProfilesInsightsQuery)
local ProfileInsightsMocks = require(UserSearch.TestHelpers.ProfileInsightsMocks)

local useProfileInsightsFetch = require(script.Parent.useProfileInsightsFetch)

local twoEntriesMock = ProfileInsightsMocks.twoEntries

describe("WHEN query executed", function()
	it("SHOULD return correct response", function()
		local client = mockApolloClient({
			defaultResponse = {
				Body = twoEntriesMock.response,
			},
		})

		client
			:query({
				query = ProfilesInsightsQuery.query,
				variables = {
					userIds = twoEntriesMock.userIds,
					pageId = ProfilesInsightsQuery.createPageId(twoEntriesMock.searchKeyword),
				},
			})
			:expect()

		local helper = renderHookWithProviders(function()
			return useProfileInsightsFetch({ "111", "222" }, twoEntriesMock.searchKeyword)
		end, {
			apolloClient = client,
		})
		expect(helper.getResult().data).toEqual({
			profilesInsights = {
				__typename = "ProfileInsightsPages",
				id = "PROFILE_INSIGHTS_SEARCH_PAGE_ID:" .. twoEntriesMock.searchKeyword,
				profileInsights = {
					ProfileInsightsMocks.mockProfileInsight("111"),
					ProfileInsightsMocks.mockProfileInsight("222"),
				},
			},
		})
	end)
end)
