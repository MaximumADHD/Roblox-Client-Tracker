local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local PlayerConnector = require(script.Parent.PlayerConnector)
local findAvatarHeadshotById = PlayerConnector.findAvatarHeadshotById
local buildFetch = require(Packages.Fetch).buildFetch
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

return function()
	local create = nil

	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	it("should fetch a headshot for a user", function()
		create("players-success-gql-query"):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local avatarHeadshot = findAvatarHeadshotById("1", fetch):expect()
			jestExpect(avatarHeadshot).toBeDefined()
		end)
	end)

	it("should return an error if the headshot cannot be found", function()
		create("players-failure-gql-query"):execute(function(httpService)
			local capturedError
			local fetch = buildFetch(httpService)
			findAvatarHeadshotById("notAUser", fetch)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			jestExpect(capturedError).toBeDefined()
			jestExpect(capturedError.message).toEqual(
				"Http error occurred while trying to fetch avatarHeadshot for user notAUser."
			)
		end)
	end)
end
