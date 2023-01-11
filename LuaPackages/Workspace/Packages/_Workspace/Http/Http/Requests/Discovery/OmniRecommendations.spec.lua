local Packages = script:FindFirstAncestor("Http").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)
local Fetch = require(Packages.Fetch)
local buildFetch = Fetch.buildFetch

local OmniRecommendationsRequest = require(script.Parent.OmniRecommendations)

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
			local fetch = buildFetch(httpService)
			local networkImpl = function(url, method, body)
				local response = fetch(url, {
					method = method,
					body = if body then body.postBody else nil,
				}):expect()
				return response:json()
			end

			local feed = OmniRecommendationsRequest(networkImpl, "Home", "1", nil):expect()

			jestExpect(feed).toBeDefined()
			jestExpect(feed.pageType).toEqual("Home")
			jestExpect(feed.sorts).toBeDefined()
			jestExpect(feed.contentMetadata).toBeDefined()
		end)
	end)
end
