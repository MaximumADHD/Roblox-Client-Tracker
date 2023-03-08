local GraphQLServer = require(script.Server)
local graphqlModule = require(script.graphql)
local generatedTypes = graphqlModule.generatedTypes

export type OmniFeed = graphqlModule.OmniFeed
export type OmniFeedMetadata = graphqlModule.OmniFeedMetadata
export type OmniFeedRecommendation = graphqlModule.OmniFeedRecommendation
export type OmniFeedItem = graphqlModule.OmniFeedItem
export type VirtualEvent = graphqlModule.VirtualEvent
export type RsvpStatus = graphqlModule.RsvpStatus
export type VirtualEventsPage = graphqlModule.VirtualEventsPage
export type VirtualEventsByUniverseIdOptions = graphqlModule.VirtualEventsByUniverseIdOptions

return {
	GraphQLServer = GraphQLServer,
	types = generatedTypes,
	mocks = graphqlModule.mocks,
}
