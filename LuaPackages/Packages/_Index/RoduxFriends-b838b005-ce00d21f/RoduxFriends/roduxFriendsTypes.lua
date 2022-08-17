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

type Enumerate = {
	getValue: () -> string,
	isEnumValue: (enum: any) -> boolean,
	fromRawValue: (enum: string) -> Enumerate,
}

-- Models
export type RecommendationModel = {
	id: string,
	mutualFriendsList: { string },
	rank: number,
	contextType: Enumerate,
}

export type RecommendationResponse = {
	id: string,
	mutualFriendsList: { string },
	rank: number,
	contextType: string?,
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

export type UnfriendTargetUserId = {
	namedIds: NamedIds,
}

export type GetFriendshipStatusSucceeded = {
	responseBody: {
		data: {
			[string]: {
				id: number,
				status: string
			}
		}
	},
}

export type GetFriendsFromUserId = {
	responseBody: {
		data: {
			[string]: { id: number },
		},
	},
	namedIds: NamedIds,
	queryArgs: {
		userSort: string?,
	}
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

export type AcceptFriendRequestFromUserId = {
	ids: {string}
}

export type DeclineFriendRequestFromUserId = {
	ids: {string}
}

export type FriendshipCreated = {
	payload: {
		userId1: string,
		userId2: string,
	},
}

export type FriendshipDestroyed = {
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

export type FriendRequestDeclined = {
	ids: {string}
}

export type RecommendationCreated = {
	payload: { baseUserId: string, recommendedUser: RecommendationResponse },
}

export type RecommendationDestroyed = {
	payload: { baseUserId: string, recommendedUserId: string },
}

-- Reducers
export type RecommendationByUserId = { [string]: RecommendationModel }

export type FriendshipStatus = { [string]: Enum.FriendStatus }

type FriendsRank = {
	[string]: number
}

export type FriendsRankByUserId = {
	{
		[string]: FriendsRank,
	}
}

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
	friendshipStatus: FriendshipStatus,
	friendsRankByUserId: FriendsRankByUserId,
}

return {}
