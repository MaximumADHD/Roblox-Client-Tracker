local HttpService = game:GetService("HttpService")
local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Packages = GraphQLServer.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local buildFetch = require(Packages.Fetch).buildFetch
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)
local UserProfileNestedFields = require(GraphQLServer.graphql.enums.UserProfileNestedFields)
local UserProfileNameFields = require(GraphQLServer.graphql.enums.UserProfileNameFields)

local makeHttpServiceMock = require(GraphQLServer.TestHelpers.makeHttpServiceMock)

local UserProfileConnector = require(script.Parent.UserProfileConnector)
local fetchProfilesByIds = UserProfileConnector.fetchProfilesByIds

local USER_PROFILE_HTTP_ARTIFACTS_KEY = "user-profile-success"

return function()
	local create = RecordPlayback.createRecordPlayback({
		-- the path must point to the instance in the DataModel used here
		instanceParent = GraphqlHttpArtifacts,
		fileSystemPath = "modules/graphql/http-artifacts/src",
	})

	describe("fetchProfilesByIds", function()
		it("SHOULD fetch user profiles for given userIds", function()
			create(USER_PROFILE_HTTP_ARTIFACTS_KEY):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local response = fetchProfilesByIds({ "2705220939", "9999999" }, {
					`{UserProfileNestedFields.names}.{UserProfileNameFields.combinedName}`,
				}, fetchImpl):expect()

				expect(response).toEqual({
					{
						names = {
							combinedName = "CarleyRJep",
						},
						userId = 9999999,
					},
					{
						names = {
							combinedName = "Julian",
						},
						userId = 2705220939,
					},
				})
			end)
		end)

		it("SHOULD handle Http errors", function()
			local mockHttpService = makeHttpServiceMock(false, {
				ErrorMessage = "HttpError",
			})

			local capturedError
			local fetchImpl = buildFetch(mockHttpService)
			fetchProfilesByIds(
					{ "2705220939", "9999999" },
					{ `{UserProfileNestedFields.names}.{UserProfileNameFields.combinedName}` },
					fetchImpl
				)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch user profiles. Error code: 0")
		end)

		it("SHOULD handle fetch failure", function()
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
			fetchProfilesByIds(
					{ "3531439676" },
					{ `{UserProfileNestedFields.names}.{UserProfileNameFields.combinedName}` },
					fetchImpl
				)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			expect(capturedError).toBeDefined()
			expect(capturedError.message).toEqual("Failed to fetch user profiles. Error code: 404")
		end)
	end)
end
