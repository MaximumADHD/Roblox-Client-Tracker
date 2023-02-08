local GraphQLServer = require(script.Server)
local graphqlModule = require(script.graphql)
local generatedTypes = graphqlModule.generatedTypes

export type OmniFeed = graphqlModule.OmniFeed
export type OmniFeedMetadata = graphqlModule.OmniFeedMetadata
export type VirtualEvent = graphqlModule.VirtualEvent

return {
	GraphQLServer = GraphQLServer,
	types = generatedTypes,
}
