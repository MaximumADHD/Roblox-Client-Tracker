local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local buildFetch = require(Packages.Fetch).buildFetch
local graphqlModule = require(Packages.GraphQL)
type GraphQLError = graphqlModule.GraphQLError
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

local graphqlServer = require(script.Parent.Parent.Server)

local create

return function()
	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	it("Should resolve ProfileInsights data", function()
		create("profile-insights-success"):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local server = graphqlServer.new({
				fetchImpl = fetch,
			})
			local query = [[
				query ProfilesInsights($userIds: [String]!, $count: Int, $pageId: String) {
					profilesInsights(userIds: $userIds, count: $count, pageId: $pageId) {
						id
						profileInsights {
							targetUserId
							isOfflineFrequents
							mutualFriends {
								id
								username
								displayName
							}
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

			local root = result.body.data.profilesInsights
			local profileInsights = root.profileInsights
			local pageId = root.id

			jestExpect(pageId).toBeDefined()
			jestExpect(pageId).toEqual(jestExpect.any("string"))

			jestExpect(profileInsights).toBeDefined()
			jestExpect(profileInsights).toEqual({
				{
					targetUserId = "9999999",
					mutualFriends = {},
					isOfflineFrequents = true,
				},
				{
					targetUserId = "2705220939",
					mutualFriends = {
						{
							id = "2326285850",
							username = "justUser444",
							displayName = "Displayname_olga",
						},
					},
					isOfflineFrequents = false,
				},
			})
		end)
	end)
end
