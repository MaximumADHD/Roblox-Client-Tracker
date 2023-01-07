local ModelTypes = require(script.Parent.ModelTypes)

export type additionalUserFields = {
	isFriendWithUser: boolean?,
	hasPendingFriendRequest: boolean?,
	canSendFriendRequest: boolean?,
	friendRank: number?,
	hasIncomingFriendRequest: boolean?,
}

export type LoadingUser = {
	isLoading: boolean,
}

export type Friend =
	ModelTypes.User
	& ModelTypes.Presence
	& additionalUserFields
	& { rank: nil, contextType: nil, mutualFriendsList: nil }
export type Recommendation = ModelTypes.User & ModelTypes.Recommendation & additionalUserFields & { userPresenceType: nil }
export type User = Friend | Recommendation

export type FriendsList = {
	[number]: Friend,
}

export type RecommendationsList = {
	[number]: Recommendation,
}

export type CarouselList = {
	[number]: Friend | Recommendation | LoadingUser,
}

export type ContextualMenuData = {
	absolutePosition: number,
	positionIndex: number,
	anchorSpaceSize: Vector2,
	anchorSpacePosition: Vector2,
	onOpen: () -> (),
	onClose: () -> (),
}

return nil
