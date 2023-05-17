local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local buildFetch = require(Packages.Fetch).buildFetch
local graphqlModule = require(Packages.GraphQL)
type GraphQLError = graphqlModule.GraphQLError
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

local graphqlServer = require(script.Parent.Parent.Server)
local USER_PROFILE_HTTP_ARTIFACTS_KEY = "user-profile-success"

local create

return function()
	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	it("Should resolve UserProfile data", function()
		create(USER_PROFILE_HTTP_ARTIFACTS_KEY):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local server = graphqlServer.new({
				fetchImpl = fetch,
			})

			local query = [[
				query UserProfile($userIds: [String]!) {
					userProfiles(userIds: $userIds) {
						id
						names {
							combinedName
						}
					}
				}
			]]

			local body = HttpService:JSONEncode({
				query = query,
				variables = {
					userIds = { "2705220939", "9999999" },
				},
			})

			local result = server
				:fetchLocal({
					body = body,
				})
				:expect()

			jestExpect(result).toEqual({
				body = {
					data = {
						userProfiles = {
							{
								names = {
									combinedName = "CarleyRJep",
								},
								id = "9999999",
							},
							{
								names = {
									combinedName = "Julian",
								},
								id = "2705220939",
							},
						},
					},
				},
			})
		end)
	end)
end
