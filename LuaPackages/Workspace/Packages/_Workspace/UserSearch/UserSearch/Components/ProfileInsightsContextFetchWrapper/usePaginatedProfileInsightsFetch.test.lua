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
local wrapInApolloProvider = require(UserSearch.TestHelpers.wrapInApolloProvider)
local ProfileInsightsMocks = require(UserSearch.TestHelpers.ProfileInsightsMocks)

local usePaginatedProfileInsightsFetch = require(script.Parent.usePaginatedProfileInsightsFetch)

local twoEntriesMock = ProfileInsightsMocks.twoEntries

describe("WHEN endpoint is mocked", function()
	it("SHOULD return correct array", function()
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
			return usePaginatedProfileInsightsFetch({
				users = twoEntriesMock.users,
				searchKeyword = twoEntriesMock.searchKeyword,
			})
		end, {
			mockProvider = function(root)
				return wrapInApolloProvider(root, client)
			end,
		})
		expect(helper.getResult()).toEqual({
			["111"] = ProfileInsightsMocks.mockProfileInsight("111"),
			["222"] = ProfileInsightsMocks.mockProfileInsight("222"),
		})
	end)
end)

describe("WHEN empty array as users is passed", function()
	it("SHOULD return empty array", function()
		local client = mockApolloClient({})
		client:writeQuery(twoEntriesMock.query)

		local helper = renderHookWithProviders(function()
			return usePaginatedProfileInsightsFetch({
				users = {},
				searchKeyword = twoEntriesMock.searchKeyword,
			})
		end, {
			mockProvider = function(root)
				return wrapInApolloProvider(root, client)
			end,
		})
		expect(helper.getResult()).toEqual({})
	end)
end)

describe("WHEN array of users is passed", function()
	it("SHOULD return empty array on empty response", function()
		local client = mockApolloClient({})

		local helper = renderHookWithProviders(function()
			return usePaginatedProfileInsightsFetch({
				users = twoEntriesMock.users,
				searchKeyword = twoEntriesMock.searchKeyword,
			})
		end, {
			mockProvider = function(root)
				return wrapInApolloProvider(root, client)
			end,
		})
		expect(helper.getResult()).toEqual({})
	end)

	it("SHOULD return correct array on not empty response", function()
		local client = mockApolloClient({})
		client:writeQuery(twoEntriesMock.query)

		local helper = renderHookWithProviders(function()
			return usePaginatedProfileInsightsFetch({
				users = twoEntriesMock.users,
				searchKeyword = twoEntriesMock.searchKeyword,
			})
		end, {
			mockProvider = function(root)
				return wrapInApolloProvider(root, client)
			end,
		})
		expect(helper.getResult()).toEqual({
			["111"] = ProfileInsightsMocks.mockProfileInsight("111"),
			["222"] = ProfileInsightsMocks.mockProfileInsight("222"),
		})
	end)

	it("SHOULD return correct array after list of users has been updated", function()
		local client = mockApolloClient({})
		client:writeQuery(twoEntriesMock.query)

		local helper = renderHookWithProviders(function(props)
			return usePaginatedProfileInsightsFetch(props)
		end, {
			props = {
				users = twoEntriesMock.users,
				searchKeyword = twoEntriesMock.searchKeyword,
			},
			mockProvider = function(root)
				return wrapInApolloProvider(root, client)
			end,
		})
		expect(helper.getResult()).toEqual({
			["111"] = ProfileInsightsMocks.mockProfileInsight("111"),
			["222"] = ProfileInsightsMocks.mockProfileInsight("222"),
		})

		client:writeQuery(twoEntriesMock.queryMore)

		helper.rerender({
			users = twoEntriesMock.usersMore,
			searchKeyword = twoEntriesMock.searchKeyword,
		})

		expect(helper.getResult()).toEqual({
			["111"] = ProfileInsightsMocks.mockProfileInsight("111"),
			["222"] = ProfileInsightsMocks.mockProfileInsight("222"),
			["333"] = ProfileInsightsMocks.mockProfileInsight("333"),
			["444"] = ProfileInsightsMocks.mockProfileInsight("444"),
		})
	end)

	it("SHOULD return different array after search keyword changed", function()
		local client = mockApolloClient({})
		client:writeQuery(twoEntriesMock.query)

		local helper = renderHookWithProviders(function(props)
			return usePaginatedProfileInsightsFetch(props)
		end, {
			props = {
				users = twoEntriesMock.users,
				searchKeyword = twoEntriesMock.searchKeyword,
			},
			mockProvider = function(root)
				return wrapInApolloProvider(root, client)
			end,
		})
		expect(helper.getResult()).toEqual({
			["111"] = ProfileInsightsMocks.mockProfileInsight("111"),
			["222"] = ProfileInsightsMocks.mockProfileInsight("222"),
		})

		local newSearKeywordKeyword = "test2"
		local newPageId = ProfilesInsightsQuery.createPageId(newSearKeywordKeyword)

		client:writeQuery({
			variables = {
				userIds = { "333", "444" },
				pageId = newPageId,
			},
			query = ProfilesInsightsQuery.query,
			data = {
				profilesInsights = {
					__typename = "ProfileInsightsPages",
					id = newPageId,
					profileInsights = {
						ProfileInsightsMocks.mockProfileInsight("333"),
						ProfileInsightsMocks.mockProfileInsight("444"),
					},
				},
			},
		})

		helper.rerender({
			users = twoEntriesMock.usersMore,
			searchKeyword = newSearKeywordKeyword,
		})

		expect(helper.getResult()).toEqual({
			["333"] = ProfileInsightsMocks.mockProfileInsight("333"),
			["444"] = ProfileInsightsMocks.mockProfileInsight("444"),
		})
	end)
end)
