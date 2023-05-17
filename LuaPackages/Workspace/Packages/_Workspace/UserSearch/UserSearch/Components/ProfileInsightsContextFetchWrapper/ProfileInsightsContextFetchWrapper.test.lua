local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local React = require(Packages.React)
local ApolloClientTestUtils = require(Packages.GraphQLServer).ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers
local runWhileMounted = SocialTestHelpers.runWhileMounted

local wrapInApolloProvider = SocialTestHelpers.wrapInApolloProvider
local ProfileInsightsMocks = require(UserSearch.TestHelpers.ProfileInsightsMocks)

local ProfileInsightsContextFetchWrapper = require(script.Parent.ProfileInsightsContextFetchWrapper)

local twoEntriesMock = ProfileInsightsMocks.twoEntries

describe("WHEN component mounted", function()
	it("SHOULD call renderComponent and pass profile insights", function()
		local renderComponentSpy = jest.fn()
		local Component = React.createElement(ProfileInsightsContextFetchWrapper, {
			users = twoEntriesMock.users,
			searchParameters = {
				searchKeyword = twoEntriesMock.searchKeyword,
			},
			renderComponent = function(insights)
				renderComponentSpy(insights)
				return React.createElement("Frame")
			end,
		})

		local client = mockApolloClient({})
		local ComponentWithProvider = wrapInApolloProvider(Component, client)
		client:writeQuery(twoEntriesMock.query)

		runWhileMounted(ComponentWithProvider, function()
			expect(renderComponentSpy).toHaveBeenCalledWith({
				["111"] = ProfileInsightsMocks.mockProfileInsight("111"),
				["222"] = ProfileInsightsMocks.mockProfileInsight("222"),
			})
		end)
	end)
end)
