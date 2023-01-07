export type Config = {
	contentType: string,
	treatmentType: string,
}

export type FriendRecommendation = {
	userId: number | string,
	userName: string,
	displayName: string,
	contextType: string,
	mutualFriendDisplayName: { [number]: string },
}

export type RecommendationMetadata = {
	rank: string?,
	contextType: string?,
	mutualFriendsCount: string?,
	recommendationRequestId: string?,
	hasPendingFriendRequest: string?,
}

export type RecommendationsSort = {
	topic: string,
	topicId: string,
	treatmentType: string,
	recommendations: {
		[number]: {
			contentId: string,
			contentMetadata: RecommendationMetadata?,
			contentType: string,
		},
	},
}

export type RecommendationsMetadata = {
	[string]: FriendRecommendation,
}

export type OmniRecommendationsPage = {
	omniSessionId: any,
	sorts: {
		[number]: RecommendationsSort,
	},
	metadata: {
		[string]: RecommendationsMetadata,
	},
}

export type OmniRecommendations = {
	[string]: OmniRecommendationsPage,
}

export type AddOmniRecommendations = {
	type: "AddOmniRecommendations",
	recommendationsId: string,
	pageType: string,
	sortsExpirationTime: number,
	recommendations: OmniRecommendations | {},
}

return nil
