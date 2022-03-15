export type RoduxFriendsOptions = {
	friendsNetworking: any,
}

type AdditionalData = {
	currentUserId: number,
}

type NamedIds = {
	users: string,
}

type UserIds = { string }

export type NextPageCursor = string?

-- Models
export type RecommendationModel = {
	id: string,
	mutualFriendsList: { string },
}

-- Actions
export type GetFriendRecommendationsFromUserId = {
	responseBody: {
		data: {
			[string]: { id: number },
		},
	},
	namedIds: NamedIds,
}

export type GetFriendsFromUserId = {
	responseBody: {
		data: {
			[string]: { id: number },
		},
	},
	namedIds: NamedIds,
}

export type GetFriendRequestsSucceeded = {
	additionalData: AdditionalData,
	responseBody: {
		data: { { id: number, friendRequest: { sentAt: string, sourceUniverseId: number? } } },
		nextPageCursor: NextPageCursor,
	},
}

export type RequestFriendshipFromUserId = {
	additionalData: AdditionalData,
	namedIds: NamedIds,
}

export type FriendshipCreated = {
	payload: {
		userId1: string,
		userId2: string,
	},
}

export type FriendRequestCreated = {
	requesteeId: string,
	requesterId: string,
	mutualFriends: { string }?,
	sourceUniverseId: number?,
	sentAt: string,
}

export type RecommendationCreated = {
	payload: { baseUserId: string, recommendedUser: RecommendationModel },
}

export type RecommendationDestroyed = {
	payload: { baseUserId: string, recommendedUserId: string },
}

-- Reducers
export type RecommendationByUserId = { [string]: RecommendationModel }

export type Reducer = {
	byUserId: { [string]: UserIds },
	countsByUserId: { [string]: number },
	requests: {
		receivedCount: number,
		byUserId: { [string]: boolean },
		mutualFriends: { [string]: UserIds },
		sourceUniverseIds: { [string]: number },
		nextPageCursor: string?,
		sentAt: { [string]: DateTime },
	},
	recommendations: RecommendationByUserId,
}

return {}
