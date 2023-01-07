local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local OmniFeedConnector = require(script.Parent.OmniFeedConnector)
local findOmniFeedBySessionId = OmniFeedConnector.findOmniFeedBySessionId
local buildFetch = require(Packages.Fetch).buildFetch
local graphqlModule = require(Packages.GraphQL)
type GraphQLError = graphqlModule.GraphQLError
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

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

local create

return function()
	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	it("should fetch the omni feed", function()
		create("omni-success"):execute(function(httpService)
			local fetchImpl = buildFetch(httpService)

			local feed =
				findOmniFeedBySessionId({ sessionId = "1", pageType = "Home", nextPageToken = nil }, fetchImpl):expect()

			jestExpect(feed).toBeDefined()
			jestExpect(feed.omniSessionId).toEqual("1")
			jestExpect(feed.pageType).toEqual("Home")
			jestExpect(feed.sorts).toBeDefined()
			jestExpect(feed.contentMetadata).toBeDefined()
		end)
	end)

	it("should handle Http errors", function()
		local mockHttpService = makeHttpServiceMock(false, {
			ErrorMessage = "HttpError",
		})

		local fetchImpl = buildFetch(mockHttpService)
		local capturedError = findOmniFeedBySessionId({ sessionId = "1", pageType = "Home", nextPageToken = nil }, fetchImpl)
			:catch(function(err)
				return err
			end)
			:expect()

		jestExpect(capturedError).toBeDefined()
		jestExpect(((capturedError :: any) :: GraphQLError).message).toEqual(
			"Failed to fetch omni recommendations. Error code: 0"
		)
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
		local fetchImpl = buildFetch(mockHttpService)
		local capturedError = findOmniFeedBySessionId({ sessionId = "1", pageType = "Home", nextPageToken = nil }, fetchImpl)
			:catch(function(err)
				return err
			end)
			:expect()

		jestExpect(capturedError).toBeDefined()
		jestExpect(((capturedError :: any) :: GraphQLError).message).toEqual(
			"Failed to fetch omni recommendations. Error code: 404"
		)
	end)
end
