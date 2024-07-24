--!strict
export type Config = {
	roduxNetworking: any,
}

export type GetFriendRecommendationsFromUserId = {
	API: (queryArgs: RequestTargetUser) -> any,
	[string]: any,
}

export type GetFriendshipStatus = {
	API: (queryArgs: RequestWithTargetUser) -> any,
	[string]: any,
}

export type GetExtendedFriendshipStatus = {
	API: (queryArgs: RequestTargetUser) -> any,
	[string]: any,
}

export type RequestFriendshipFromContactId = {
	API: (queryArgs: RequestWithContactUser) -> any,
	[string]: any,
}

export type AcceptFriendRequestWithToken = {
	API: (queryArgs: RequestWithTargetUserAndFriendingToken) -> any,
	[string]: any,
}

export type GetFollowersCount = {
	API: (targetUserId: string | number) -> any,
	[string]: any,
}

export type GetFollowingsCount = {
	API: (targetUserId: string | number) -> any,
	[string]: any,
}

export type RequestThunks = {
	GetFriendsFromUserId: any,
	FindFriendsFromUserId: any,
	SearchFriendsByQuery: any,
	GetFriendRequestsCount: any,
	UnfriendTargetUserId: any,
	GetFriendRequests: any,
	AcceptFriendRequestFromUserId: any,
	DeclineFriendRequestFromUserId: any,
	DeclineAllFriendRequests: any,
	GetFriendsCountFromUserId: any,
	GetInactiveFriends: any,
	RequestFriendshipFromUserId: any,
	GetFollowingExists: any,
	GetUserFollowers: any,
	RequestFriendshipFromContactId: RequestFriendshipFromContactId,
	GetFriendRecommendationsFromUserId: GetFriendRecommendationsFromUserId,
	GetFriendshipStatus: GetFriendshipStatus,
	GetExtendedFriendshipStatus: GetExtendedFriendshipStatus,
	AcceptFriendRequestWithToken: AcceptFriendRequestWithToken,
	GetFollowersCount: GetFollowersCount,
	GetFollowingsCount: GetFollowingsCount,
	ValidateFriendRequestNickname: any,
}

export type RequestCurrentUser = {
	currentUserId: number | string,
}

export type RequestTargetUser = {
	targetUserId: number | string,
	source: string?,
}

export type RequestContactUser = {
	contactId: string,
}

export type RequestFriendingToken = {
	friendingToken: string,
}

export type RequestWithTargetUser = RequestCurrentUser & RequestTargetUser

export type RequestWithContactUser = RequestCurrentUser & RequestContactUser

export type RequestWithTargetUserAndFriendingToken = RequestCurrentUser & RequestTargetUser & RequestFriendingToken

export type RequestTargetUserIdsType = {
	targetUserIds: { number | string },
}

export type RequestTargetUniverseIdsType = {
	universeIds: { number | string },
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
	appType: string,
}

return {}
