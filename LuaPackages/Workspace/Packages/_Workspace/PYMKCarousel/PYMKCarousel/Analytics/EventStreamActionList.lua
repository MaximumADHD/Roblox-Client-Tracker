local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local EventNames = require(script.Parent.EventNames)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local BtnValues = require(script.Parent.BtnValues)
local Constants = require(PYMKCarousel.Common.Constants)

local formatRecommendationContextType = SocialLuaAnalytics.Analytics.Formatters.formatRecommendationContextType

type GenericEvent = {
	context: any,
	eventType: any,
	additionalInfo: any?,
	formatRulesForAdditionalInfo: any?,
}

local acceptAnyValue = function(value)
	return value
end

local coreEvents = {
	[EventNames.CarouselLoadedWithUsers] = {
		context = Contexts.HomePage,
		eventType = EventTypes.FriendsCarouselLoaded,
		additionalInfo = {
			source = Constants.HomepagePYMKCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			recommendationCount = acceptAnyValue,
			recommendationLimit = nil,
			refreshCount = acceptAnyValue,
		},
	} :: GenericEvent,
	[EventNames.UserSeen] = {
		context = Contexts.HomePage,
		eventType = EventTypes.UserSeen,
		additionalInfo = {
			source = Constants.HomepagePYMKCarouselSourceName,
			isRecommendation = true,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			friendStatus = acceptAnyValue,
			recommendationRank = acceptAnyValue,
			userId = acceptAnyValue,
		},
	},
	[EventNames.UserPressed] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			source = Constants.HomepagePYMKCarouselSourceName,
			isRecommendation = true,
			btn = BtnValues.OpenPeopleList,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			recommendationId = acceptAnyValue,
			friendStatus = acceptAnyValue,
			recommendationRank = acceptAnyValue,
		},
	},
	[EventNames.RequestFriendship] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.RequestFriendship,
			source = Constants.HomepagePYMKCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			recommendationRank = acceptAnyValue,
			requestedId = acceptAnyValue,
		},
	},
	[EventNames.AcceptFriendship] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.AcceptFriendship,
			source = Constants.HomepagePYMKCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			recommendationRank = acceptAnyValue,
			requestedId = acceptAnyValue,
		},
	},
}

return coreEvents
