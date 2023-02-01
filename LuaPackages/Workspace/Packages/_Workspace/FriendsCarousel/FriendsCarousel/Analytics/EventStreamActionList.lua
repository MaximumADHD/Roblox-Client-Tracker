local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local EventNames = require(script.Parent.EventNames)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local BtnValues = require(script.Parent.BtnValues)
local Dash = dependencies.Dash
local Constants = require(FriendsCarousel.Common.Constants)

local formatFriendStatus = require(script.Parent.formatFriendStatus)
local getUniverseIdFromUser = require(script.Parent.getUniverseIdFromUser)
local formatRecommendationContextType = SocialLuaAnalytics.Analytics.Formatters.formatRecommendationContextType
local formatPresence = SocialLuaAnalytics.Analytics.Formatters.formatPresence

local getFIntShowFriendRecommendationsLimit = require(FriendsCarousel.Flags.getFIntShowFriendRecommendationsLimit)
local getFFlagFriendsCarouselAddNewBadgeTracking =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddNewBadgeTracking)
local getFFlagFriendsCarouselAddUniverseIdToEvents =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddUniverseIdToEvents)

local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant

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
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			friendCount = acceptAnyValue,
			recommendationCount = acceptAnyValue,
			recommendationLimit = getFIntShowFriendRecommendationsLimit,
			refreshCount = acceptAnyValue,
			experimentLayerStatus = acceptAnyValue,
			fetchedRecommendations = acceptAnyValue,
			recommendationSessionId = acceptAnyValue,
		},
	} :: GenericEvent,
	[EventNames.UserSeen] = {
		context = Contexts.HomePage,
		eventType = EventTypes.UserSeen,
		additionalInfo = {
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			friendStatus = formatFriendStatus,
			isRecommendation = acceptAnyValue,
			presence = formatPresence,
			recommendationRank = acceptAnyValue,
			userId = acceptAnyValue,
			universeId = if getFFlagFriendsCarouselAddUniverseIdToEvents() then getUniverseIdFromUser else nil,
		},
	},
	[EventNames.UserPressed] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.OpenPeopleList,
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			friendId = acceptAnyValue,
			friendStatus = formatFriendStatus,
			isRecommendation = acceptAnyValue,
			recommendationRank = acceptAnyValue,
			universeId = if getFFlagFriendsCarouselAddUniverseIdToEvents() then getUniverseIdFromUser else nil,
		},
	},
	[EventNames.RequestFriendship] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.RequestFriendship,
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			recommendationRank = acceptAnyValue,
			requestedId = acceptAnyValue,
		},
	},
	[EventNames.RevokeFriendRequest] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.RevokeFriendRequest,
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			absolutePosition = acceptAnyValue,
			recommendationContextType = formatRecommendationContextType,
			recommendationRank = acceptAnyValue,
			requestedId = acceptAnyValue,
		},
	},
	[EventNames.ViewAllFriends] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.FriendsLanding,
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			friendCount = acceptAnyValue,
			recommendationLimit = getFIntShowFriendRecommendationsLimit,
			recommendationCount = acceptAnyValue,
		},
	},
	[EventNames.ViewAddFriends] = {
		context = Contexts.AddFriends,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.AddFriendsButton,
			absolutePosition = 1,
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			friendCount = acceptAnyValue,
			recommendationLimit = getFIntShowFriendRecommendationsLimit,
			recommendationCount = acceptAnyValue,
			requestCount = acceptAnyValue,
			showContactImporterModal = acceptAnyValue,
		},
	},
	[EventNames.CarouselLoadingTime] = {
		context = Contexts.HomePage,
		eventType = EventTypes.CarouselLoadingTime,
		additionalInfo = {
			source = Constants.HomepageFriendsCarouselSourceName,
		},
		formatRulesForAdditionalInfo = {
			carouselFetchingStatus = acceptAnyValue,
			friendsFetchingStatus = acceptAnyValue,
			recommendationFetchingStatus = acceptAnyValue,
			loadingTime = acceptAnyValue,
			reachedThreshold = acceptAnyValue,
			loadingThreshold = acceptAnyValue,

			experimentLayerStatus = acceptAnyValue,
			experimentVariant = if getFFlagFriendsCarouselRemoveVariant() then nil else acceptAnyValue,
			isLegacyCarousel = acceptAnyValue,
		},
	},
}

if getFFlagFriendsCarouselAddNewBadgeTracking() then
	return Dash.join(coreEvents, {
		[EventNames.ContactImporterOnAddFriends] = {
			context = Contexts.HomePage,
			eventType = EventTypes.ContactImporterOnAddFriends,
			additionalInfo = {
				isLegacyAddFriends = false,
			},
		},
	})
else
	return coreEvents
end
