local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local buildFetch = require(Packages.Fetch).buildFetch
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

local ProfileInsightsConnector = require(script.Parent.ProfileInsightsConnector)
local findProfileInsightsByUserIds = ProfileInsightsConnector.findProfileInsightsByUserIds

local function makeHttpServiceMock(mockSuccess, mockResponse): HttpService
	local HttpServiceMock = {
		RequestInternal = function(_options)
			return {
				Start = function(_self, callback)
					callback(mockSuccess, mockResponse)
				end,
			}
		end,
	}

	return HttpServiceMock :: any
end

return function()
	local create = nil

	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	describe("fetch profile insights", function()
		it("should fetch profile insights for given userIds", function()
			create("profile-insights-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local profileInsights = findProfileInsightsByUserIds({ "2705220939" }, nil, fetchImpl):expect()

				expect(profileInsights).toBeDefined()
				expect(profileInsights[1].targetUser).toBe(2705220939)
			end)
		end)

		it("should handle Http errors", function()
			local mockHttpService = makeHttpServiceMock(false, {
				ErrorMessage = "HttpError",
			})

			local capturedError
			local fetchImpl = buildFetch(mockHttpService)
			findProfileInsightsByUserIds({ "2705220939" }, nil, fetchImpl)
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
			findProfileInsightsByUserIds({ "3531439676" }, nil, fetchImpl)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch profile insights. Error code: 404")
		end)
	end)
end
