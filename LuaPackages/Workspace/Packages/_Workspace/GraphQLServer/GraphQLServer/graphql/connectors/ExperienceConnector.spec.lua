local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local JestGlobals = require(GraphQLServer.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local RecordPlayback = require(GraphQLServer.Parent.Dev.RecordPlayback)
local buildFetch = require(GraphQLServer.Parent.Fetch).buildFetch
local GraphqlHttpArtifacts = require(GraphQLServer.Parent.Dev.GraphqlHttpArtifacts)
local ExperienceConnector = require(script.Parent.ExperienceConnector)
local findExperienceDetailsByUniverseId = ExperienceConnector.findExperienceDetailsByUniverseId
local findExperienceMediaByUniverseId = ExperienceConnector.findExperienceMediaByUniverseId
local batchFetchThumbnailsByUniverseId = ExperienceConnector.batchFetchThumbnailsByUniverseId

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

	describe("experience tile thumbnails", function()
		it("should fetch thumbnails for a list of universe IDs", function()
			create("thumbnails-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)

				local thumbnails =
					batchFetchThumbnailsByUniverseId({ "65241", "111958650", "1954906532" }, fetchImpl):expect()

				expect(thumbnails).toBeDefined()
				expect(thumbnails).toEqual({
					{
						imageUrl = "https://tr.rbxcdn.com/0ae67ae1039583a9750be9a14886c471/150/150/Image/Png",
						state = "Completed",
						targetId = 65241,
					},
					{
						imageUrl = "https://tr.rbxcdn.com/bd1ac92078ae55b147823d2af2a32695/150/150/Image/Png",
						state = "Completed",
						targetId = 111958650,
					},
					{
						imageUrl = "https://tr.rbxcdn.com/f3917b110ed74a7b58f0dc1338470441/150/150/Image/Png",
						state = "Completed",
						targetId = 1954906532,
					},
				})
			end)
		end)

		it("should fail for non-existent universeId", function()
			create("thumbnails-fail"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local capturedError = nil

				batchFetchThumbnailsByUniverseId({ "badUniverseId" }, fetchImpl)
					:catch(function(err)
						capturedError = err
						return nil
					end)
					:expect()

				expect(capturedError).toBeDefined()
				expect(capturedError.message).toEqual("Failed to find thumbnails for ids: badUniverseId.")
			end)
		end)
	end)
end
