export type RequestCurrentUser = {
	currentUserId: number | string
}

export type RequestWithTargetUser = RequestCurrentUser & {
	targetUserId: number | string
}

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
}

export type LuobuOptions = {
	userOpenId: string,
	userAccessToken: string,
	type: string,
	appType: string
}

return {}
