local HttpService = game:GetService("HttpService")
local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Packages = GraphQLServer.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local buildFetch = require(Packages.Fetch).buildFetch
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

local ProfileInsightsConnector = require(script.Parent.ProfileInsightsConnector)
local findProfileInsightsByUserIds = ProfileInsightsConnector.findProfileInsightsByUserIds
local findProfileInsightsByUserIdsFeed = ProfileInsightsConnector.findProfileInsightsByUserIdsFeed
local findProfileInsightsByUserIdsTEMP = ProfileInsightsConnector.findProfileInsightsByUserIdsTEMP
local makeHttpServiceMock = require(GraphQLServer.TestHelpers.makeHttpServiceMock)

local getFFlagApolloClientFetchPIFeedConnector = require(Packages.SharedFlags).getFFlagApolloClientFetchPIFeedConnector

return function()
	local create = nil

	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	describe("fetch profile insights by userIds", function()
		it("should fetch profile insights for given userIds", function()
			create("profile-insights-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local response = findProfileInsightsByUserIdsTEMP({ "2705220939", "9999999" }, nil, fetchImpl):expect()

				expect(response).toBeDefined()
				expect(response[1].targetUser).toBe(9999999)
				expect(response[2].targetUser).toBe(2705220939)
			end)
		end)

		it("should handle Http errors", function()
			local mockHttpService = makeHttpServiceMock(false, {
				ErrorMessage = "HttpError",
			})

			local capturedError
			local fetchImpl = buildFetch(mockHttpService)

			findProfileInsightsByUserIdsTEMP({ "2705220939", "9999999" }, nil, fetchImpl)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch profile insights. Error code: 0")
		end)

		it("should handle fetch failure", function()
			local mockHttpService = makeHttpServiceMock(true, {
				Body = HttpService:JSONEncode({
					errors = {
						{
							message = "Request not authenticated",
						},
					},
				}),
				Success = false,
				StatusCode = 404,
				StatusMessage = "Authentication Error",
				Headers = {},
			})
			local capturedError
			local fetchImpl = buildFetch(mockHttpService)

			findProfileInsightsByUserIdsTEMP({ "3531439676" }, nil, fetchImpl)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch profile insights. Error code: 404")
		end)
	end)

	describe("fetch profile insights by userIds with pageId in arguments", function()
		it("should fetch profile insights for given userIds", function()
			create("profile-insights-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local response = if getFFlagApolloClientFetchPIFeedConnector()
					then findProfileInsightsByUserIdsFeed({ "2705220939", "9999999" }, nil, "PageId", fetchImpl):expect()
					else findProfileInsightsByUserIds({ "2705220939", "9999999" }, nil, "PageId", fetchImpl):expect()

				expect(response.profileInsights).toBeDefined()
				expect(response.profileInsights[1].targetUser).toBe(9999999)
				expect(response.profileInsights[2].targetUser).toBe(2705220939)
				expect(response.pageId).toBe("PageId")
			end)
		end)

		it("should handle Http errors", function()
			local mockHttpService = makeHttpServiceMock(false, {
				ErrorMessage = "HttpError",
			})

			local capturedError
			local fetchImpl = buildFetch(mockHttpService)

			if getFFlagApolloClientFetchPIFeedConnector() then
				findProfileInsightsByUserIdsFeed({ "2705220939", "9999999" }, nil, nil, fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()
			else
				findProfileInsightsByUserIds({ "2705220939", "9999999" }, nil, nil, fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()
			end

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch profile insights. Error code: 0")
		end)

		it("should handle fetch failure", function()
			local mockHttpService = makeHttpServiceMock(true, {
				Body = HttpService:JSONEncode({
					errors = {
						{
							message = "Request not authenticated",
						},
					},
				}),
				Success = false,
				StatusCode = 404,
				StatusMessage = "Authentication Error",
				Headers = {},
			})
			local capturedError
			local fetchImpl = buildFetch(mockHttpService)

			if getFFlagApolloClientFetchPIFeedConnector() then
				findProfileInsightsByUserIdsFeed({ "3531439676" }, nil, nil, fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()
			else
				findProfileInsightsByUserIds({ "3531439676" }, nil, nil, fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()
			end

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch profile insights. Error code: 404")
		end)
	end)
end
