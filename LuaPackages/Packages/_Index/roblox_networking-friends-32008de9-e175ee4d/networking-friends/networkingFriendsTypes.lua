export type RequestCurrentUser = {
	currentUserId: number | string
}

export type RequestWithTargetUser = RequestCurrentUser & {
	targetUserId: number | string
}

export type FriendRequestsOptions = {
	fetchMutualFriends: boolean?,
	sortOrder: string?,
	limit: number?,
	cursor: string?,
}

return {}
