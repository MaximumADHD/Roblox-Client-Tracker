local GraphQLServer = require(script.Server)
local graphqlModule = require(script.graphql)
local generatedTypes = graphqlModule.generatedTypes

export type OmniFeed = graphqlModule.OmniFeed
export type OmniFeedMetadata = graphqlModule.OmniFeedMetadata
export type VirtualEvent = graphqlModule.VirtualEvent
export type RsvpStatus = graphqlModule.RsvpStatus
export type VirtualEventsPage = graphqlModule.VirtualEventsPage
export type VirtualEventsByUniverseIdOptions = graphqlModule.VirtualEventsByUniverseIdOptions

return {
	GraphQLServer = GraphQLServer,
	types = generatedTypes,
}
