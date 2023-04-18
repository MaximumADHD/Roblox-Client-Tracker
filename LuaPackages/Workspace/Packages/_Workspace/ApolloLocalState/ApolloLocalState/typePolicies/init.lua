local ApolloLocalState = script:FindFirstAncestor("ApolloLocalState")

local getFFlagVirtualEventsGraphQL = require(ApolloLocalState.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

return {
	OmniFeed = require(script.OmniFeed),
	OmniFeedRecommendation = require(script.OmniFeedRecommendation),
	OmniFeedItem = require(script.OmniFeedItem),
	Experience = require(script.Experience),
	ExperienceMedia = if getFFlagVirtualEventsGraphQL() then require(script.ExperienceMedia) else nil,
	Query = require(script.Query),
	ProfileInsightsPages = require(script.ProfileInsightsPages),
}
