local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local mergeTypeDefs = require(Packages.GraphqlToolsMerge).mergeTypeDefs
local graphqlModule = require(Packages.GraphQL)

local resolvers = require(script.resolvers)
local generatedTypes = require(script.generatedTypes)
local luaTypeDefs = require(script.luaTypeDefs)
local dataLoaders = require(script.dataLoaders)
local mocks = require(script.mocks)

export type OmniFeed = generatedTypes.OmniFeed
export type OmniFeedMetadata = generatedTypes.OmniFeedMetadata
export type OmniFeedItem = generatedTypes.OmniFeedItem
export type OmniFeedRecommendation = generatedTypes.OmniFeedRecommendation
export type Experience = generatedTypes.Experience
export type Media = generatedTypes.Media
export type VirtualEvent = generatedTypes.VirtualEvent
export type RsvpStatus = generatedTypes.RsvpStatus
export type VirtualEventsPage = generatedTypes.VirtualEventsPage
export type VirtualEventsByUniverseIdOptions = generatedTypes.VirtualEventsByUniverseIdOptions
export type ProfileInsights = generatedTypes.ProfileInsights

type DocumentNode = graphqlModule.DocumentNode

local mergedTypeDefs = mergeTypeDefs(luaTypeDefs)
local staticTypeDefs = graphqlModule.print(mergedTypeDefs :: DocumentNode)

return {
	typeDefs = staticTypeDefs,
	resolvers = resolvers,
	generatedTypes = generatedTypes,
	dataLoaders = dataLoaders,
	mocks = mocks,
}
