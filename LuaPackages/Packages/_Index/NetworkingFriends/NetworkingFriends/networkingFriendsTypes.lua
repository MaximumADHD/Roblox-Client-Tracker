--!strict
export type Config = {
	roduxNetworking: any
}

export type GetFriendRecommendationsFromUserId = {
	API: (queryArgs: RequestTargetUser) -> any,
	[string]: any
}

export type GetFriendshipStatus = {
	API: (queryArgs: RequestWithTargetUser) -> any,
	[string]: any
}

export type GetExtendedFriendshipStatus = {
	API: (queryArgs: RequestTargetUser) -> any,
	[string]: any
}

export type RequestThunks = {
	GetFriendsFromUserId: any,
	GetFriendRequestsCount: any,
	UnfriendTargetUserId: any,
	GetFriendRequests: any,
	AcceptFriendRequestFromUserId: any,
	DeclineFriendRequestFromUserId: any,
	DeclineAllFriendRequests: any,
	GetFriendsCountFromUserId: any,
	RequestFriendshipFromUserId: any,
	GetFollowingExists: any,
	GetUserFollowers: any,
	GetFriendRecommendationsFromUserId: GetFriendRecommendationsFromUserId,
	GetFriendshipStatus: GetFriendshipStatus,
	GetExtendedFriendshipStatus: GetExtendedFriendshipStatus,
}

export type RequestCurrentUser = {
	currentUserId: number | string
}

export type RequestTargetUser = {
	targetUserId: number | string
}

export type RequestWithTargetUser = RequestCurrentUser & RequestTargetUser

export type RequestTargetUserIdsType = {
	targetUserIds: { number | string }
}

export type RequestTargetUniverseIdsType = {
	universeIds: { number | string }
}

export type FriendRequestsOptions = {
	fetchMutualFriends: boolean?,
	sortOrder: string?,
	limit: number?,
	cursor: string?,
	currentUserId: string?,
}

export type LuobuOptions = {
	userOpenId: string,
	userAccessToken: string,
	type: string,
	appType: string
}

return {}
