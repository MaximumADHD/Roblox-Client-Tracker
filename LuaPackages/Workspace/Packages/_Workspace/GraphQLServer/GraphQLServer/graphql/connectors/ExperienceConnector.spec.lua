local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local JestGlobals = require(GraphQLServer.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local RecordPlayback = require(GraphQLServer.Parent.Dev.RecordPlayback)
local buildFetch = require(GraphQLServer.Parent.Fetch).buildFetch
local GraphqlHttpArtifacts = require(GraphQLServer.Parent.Dev.GraphqlHttpArtifacts)
local ExperienceConnector = require(script.Parent.ExperienceConnector)
local findExperienceDetailsByUniverseId = ExperienceConnector.findExperienceDetailsByUniverseId
local findExperienceMediaByUniverseId = ExperienceConnector.findExperienceMediaByUniverseId

return function()
	local create = nil

	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	describe("fetch experience details", function()
		it("should fetch an experience's details", function()
			create("experience-details-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local experienceDetails = findExperienceDetailsByUniverseId("3531439676", fetchImpl):expect()

				expect(experienceDetails).toBeDefined()
				expect(experienceDetails.id).toBe(3531439676)
			end)
		end)

		it("should throw if an experience with the given universeId can't be found", function()
			create("experience-details-fail"):execute(function(httpService)
				local capturedError
				local fetchImpl = buildFetch(httpService)

				findExperienceDetailsByUniverseId("badUniverseId", fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()

				expect(capturedError).toBeDefined()
				expect(capturedError.message).toBe("Failed to find experience for universeId: badUniverseId.")
			end)
		end)
	end)

	describe("fetch experience media", function()
		it("should fetch an experience's media", function()
			create("experience-media-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local experienceMedia = findExperienceMediaByUniverseId("3531439676", fetchImpl):expect()

				expect(experienceMedia).toBeDefined()
				expect(#experienceMedia).toBe(1)
			end)
		end)

		it("should throw if an experience with the given universeId can't be found", function()
			create("experience-media-fail"):execute(function(httpService)
				local capturedError
				local fetchImpl = buildFetch(httpService)

				findExperienceMediaByUniverseId("badUniverseId", fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()

				expect(capturedError).toBeDefined()
				expect(capturedError.message).toBe("Failed to find experience media for universeId: badUniverseId.")
			end)
		end)
	end)
end
