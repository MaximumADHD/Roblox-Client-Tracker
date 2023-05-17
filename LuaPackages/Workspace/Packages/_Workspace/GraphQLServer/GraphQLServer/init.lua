local GraphQLServer = require(script.Server)
local graphqlModule = require(script.graphql)
local generatedTypes = graphqlModule.generatedTypes
local ApolloClientTestUtils = require(script.ApolloClientTestUtils)

export type OmniFeed = graphqlModule.OmniFeed
export type OmniFeedMetadata = graphqlModule.OmniFeedMetadata
export type OmniFeedRecommendation = graphqlModule.OmniFeedRecommendation
export type OmniFeedItem = graphqlModule.OmniFeedItem
export type Experience = graphqlModule.Experience
export type ExperienceMedia = graphqlModule.ExperienceMedia
export type Media = graphqlModule.Media
export type VirtualEvent = graphqlModule.VirtualEvent
export type RsvpStatus = graphqlModule.RsvpStatus
export type VirtualEventsPage = graphqlModule.VirtualEventsPage
export type VirtualEventsByUniverseIdOptions = graphqlModule.VirtualEventsByUniverseIdOptions
export type ProfileInsights = graphqlModule.ProfileInsights

export type UserProfile = graphqlModule.UserProfile

export type MockOptions = ApolloClientTestUtils.MockOptions
export type Response = ApolloClientTestUtils.Response

return {
	GraphQLServer = GraphQLServer,
	types = generatedTypes,
	mocks = graphqlModule.mocks,
	ApolloClientTestUtils = ApolloClientTestUtils,
	enums = require(script.graphql.enums),
}
