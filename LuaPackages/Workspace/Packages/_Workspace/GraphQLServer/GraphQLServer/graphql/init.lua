local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local mergeTypeDefs = require(Packages.GraphqlToolsMerge).mergeTypeDefs
local graphqlModule = require(Packages.GraphQL)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local typeDefs = require(script.typeDefs)
local resolvers = require(script.resolvers)
local generatedTypes = require(script.generatedTypes)
local luaTypeDefs = require(script.luaTypeDefs)

export type OmniFeed = generatedTypes.OmniFeed
export type OmniFeedMetadata = generatedTypes.OmniFeedMetadata
export type VirtualEvent = generatedTypes.VirtualEvent
export type RsvpStatus = generatedTypes.RsvpStatus
export type VirtualEventsPage = generatedTypes.VirtualEventsPage
export type VirtualEventsByUniverseIdOptions = generatedTypes.VirtualEventsByUniverseIdOptions

type DocumentNode = graphqlModule.DocumentNode

local mergedTypeDefs = mergeTypeDefs(Array.concat({ typeDefs }, luaTypeDefs))
local staticTypeDefs = graphqlModule.print(mergedTypeDefs :: DocumentNode)

return {
	typeDefs = staticTypeDefs,
	resolvers = resolvers,
	generatedTypes = generatedTypes,
}
