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

	it("Should resolve OmniFeed data", function()
		create("omni-success"):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local server = graphqlServer.new({
				fetchImpl = fetch,
			})

			local GET_OMNI_FEED = [[
        query getFeed($sessionId: String!, $pageType: String!, $nextPageToken: String) {
          omniFeed(sessionId: $sessionId, pageType: $pageType, nextPageToken: $nextPageToken) {
            metadata {
              GameJSON
              CatalogAssetJSON
              CatalogBundleJSON
              RecommendedFriendJSON
            }
            pageType
            sortsExpirationTime
            nextPageToken
            isSessionExpired
            recommendationsId
            omniSessionId
            sorts {
              topicId
              topic
              treatmentType
              recommendations {
                contentType
                contentId
                contentMetadata
              }
              experiences {
                name
                universeId
							}
            }
          }
        }
      ]]

			local body = HttpService:JSONEncode({
				query = GET_OMNI_FEED,
				variables = {
					sessionId = "1",
					pageType = "Home",
				},
			})

			local result = server
				:fetchLocal({
					body = body,
				})
				:expect()

			jestExpect(result).toBeDefined()

			-- feed
			local feed = result.body.data.omniFeed
			jestExpect(feed).toBeDefined()
			jestExpect(feed.pageType).toEqual("Home")
			jestExpect(feed.omniSessionId).toEqual("1")
			jestExpect(feed.sortsExpirationTime).toBeDefined()
			jestExpect(feed.nextPageToken).toEqual("")
			jestExpect(feed.recommendationsId).toEqual("049a13a2-f8db-444b-8306-f8fb42219fda")

			-- feed.metadata
			jestExpect(feed.metadata.GameJSON).toBeDefined()
			jestExpect(feed.metadata.CatalogAssetJSON).toEqual({})
			jestExpect(feed.metadata.CatalogBundleJSON).toEqual({})
			jestExpect(feed.metadata.RecommendedFriendJSON).toEqual({})

			-- feed.sorts
			local sorts = feed.sorts
			jestExpect(sorts).toBeDefined()
			jestExpect(#sorts).toEqual(20)

			-- FeedItem
			local continueSort = sorts[1]
			jestExpect(continueSort.topicId).toEqual("100000003")
			jestExpect(continueSort.topic).toEqual("Continue")
			jestExpect(continueSort.treatmentType).toEqual("Carousel")

			-- recommendations
			jestExpect(continueSort.recommendations).toBeDefined()
			jestExpect(#continueSort.recommendations).toEqual(48)
			jestExpect(continueSort.recommendations[1].contentType).toEqual("Game")
			jestExpect(continueSort.recommendations[1].contentId).toEqual("111958650")
			jestExpect(continueSort.recommendations[1].contentMetadata).toEqual({
				Score = "10",
			})

			-- experiences
			jestExpect(continueSort.experiences).toBeDefined()
			jestExpect(#continueSort.experiences).toEqual(20)
			jestExpect(continueSort.experiences[1].name).toEqual("Arsenal")
			jestExpect(continueSort.experiences[1].universeId).toEqual("111958650")
		end)
	end)
end
