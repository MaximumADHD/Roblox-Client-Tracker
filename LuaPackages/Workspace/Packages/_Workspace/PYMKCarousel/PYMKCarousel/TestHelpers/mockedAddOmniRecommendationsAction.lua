local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local RoduxFriends = dependencies.RoduxFriends
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType
local OmniTypes = require(PYMKCarousel.Common.OmniTypes)
local Constants = require(PYMKCarousel.Common.Constants)

local getFFlagPYMKCarouselIncomingFriendshipReducer =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendshipReducer)

local FriendRecommendationCarouselSort = {
	topicId = "topicId3",
	treatmentType = "FriendRecommendationCarousel",
	topic = "",
	recommendations = {
		[1] = {
			contentId = "RecommendedFriend1",
			contentType = "RecommendedFriend",
			contentMetadata = {
				rank = "10",
				recommendationRequestId = "recommendationSessionId",
				hasPendingFriendRequest = if getFFlagPYMKCarouselIncomingFriendshipReducer()
					then Constants.BE_FALSE_VALUE
					else nil,
			},
		},
		[2] = {
			contentId = "RecommendedFriend2",
			contentType = "RecommendedFriend",
			contentMetadata = {
				rank = "5",
				mutualFriendsCount = "5",
				contextType = RecommendationContextType.MutualFriends.rawValue(),
				recommendationRequestId = "recommendationSessionId",
				hasPendingFriendRequest = if getFFlagPYMKCarouselIncomingFriendshipReducer()
					then Constants.BE_TRUE_VALUE
					else nil,
			},
		},
		[3] = {
			contentId = "RecommendedFriend3",
			contentType = "RecommendedFriend",
			contentMetadata = {
				rank = "8",
				contextType = RecommendationContextType.Frequents.rawValue(),
				recommendationRequestId = "recommendationSessionId",
				hasPendingFriendRequest = if getFFlagPYMKCarouselIncomingFriendshipReducer()
					then Constants.BE_FALSE_VALUE
					else nil,
			},
		},
	},
}

local RecommendedFriendMetadata = {
	RecommendedFriend1 = {
		userName = "userName1",
		mutualFriendDisplayName = {},
		displayName = "displayName1",
		userId = "RecommendedFriend1",
		contextType = RecommendationContextType.Frequents.rawValue(),
	},
	RecommendedFriend2 = {
		userName = "userName2",
		mutualFriendDisplayName = {},
		displayName = "displayName2",
		userId = "RecommendedFriend2",
		contextType = RecommendationContextType.None.rawValue(),
	},
	RecommendedFriend3 = {
		userName = "userName3",
		mutualFriendDisplayName = {},
		displayName = "displayName3",
		userId = "RecommendedFriend3",
		contextType = "NotCorrect",
	},
}

local GameSort = {
	[1] = {
		topicId = "topicId1",
		treatmentType = "Carousel",
		topic = "TopicGames1",
		recommendations = {
			[1] = {
				contentId = "Game1",
				contentType = "Game",
				contentMetadata = {},
			},
			[2] = {
				contentId = "Game2",
				contentType = "Game",
				contentMetadata = {},
			},
		},
	},
	[2] = {
		topicId = "topicId2",
		treatmentType = "Carousel",
		topic = "TopicGames2",
		recommendations = {
			[1] = {
				contentId = "Game3",
				contentType = "Game",
				contentMetadata = {},
			},
		},
	},
}

local GameMetadata = {
	Game1 = {
		universeId = "universeId1",
		name = "name1",
		totalUpVotes = 123,
		totalDownVotes = 123,
		placeId = "placeId1",
		playerCount = 123,
	},
	Game2 = {
		universeId = "universeId2",
		name = "name2",
		totalUpVotes = 123,
		totalDownVotes = 123,
		placeId = "placeId2",
		playerCount = 123,
	},
	Game3 = {
		universeId = "universeId3",
		name = "name3",
		totalUpVotes = 123,
		totalDownVotes = 123,
		placeId = "placeId3",
		playerCount = 123,
	},
}

return {
	withoutContent = {
		type = "AddOmniRecommendations",
		recommendationsId = "recommendationsId",
		pageType = "Home",
		sortsExpirationTime = 2434324,
		recommendations = {},
	} :: OmniTypes.AddOmniRecommendations,
	withRecommendedFriends = {
		type = "AddOmniRecommendations",
		recommendationsId = "recommendationsId",
		pageType = "Home",
		sortsExpirationTime = 2434324,
		recommendations = {
			Home = {
				omniSessionId = "omniSessionId1",
				sorts = {
					[1] = GameSort[1],
					[2] = GameSort[2],
					[3] = FriendRecommendationCarouselSort,
				},
				metadata = {
					CatalogAsset = {},
					CatalogBundle = {},
					RecommendedFriend = RecommendedFriendMetadata,
					Game = GameMetadata,
				},
			},
		},
	} :: OmniTypes.AddOmniRecommendations,
	withoutRecommendedFriends = {
		type = "AddOmniRecommendations",
		recommendationsId = "recommendationsId",
		pageType = "Home",
		sortsExpirationTime = 2434324,
		recommendations = {
			Home = {
				omniSessionId = "omniSessionId1",
				sorts = {
					[1] = GameSort[1],
					[2] = GameSort[2],
				},
				metadata = {
					CatalogAsset = {},
					CatalogBundle = {},
					RecommendedFriend = {},
					Game = GameMetadata,
				},
			},
		},
	} :: OmniTypes.AddOmniRecommendations,
	recommendedFriendMetadata = RecommendedFriendMetadata,
	recommendedFriendSort = FriendRecommendationCarouselSort,
}
