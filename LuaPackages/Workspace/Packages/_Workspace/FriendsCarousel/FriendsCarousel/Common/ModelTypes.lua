export type Recommendation = {
	id: string,
	mutualFriendsList: { string }?,
	contextType: {
		rawValue: () -> string,
	},
	rank: number,
}

export type User = {
	id: string,
	username: string,
	displayName: string,
}

export type Presence = {
	userId: string,
	lastOnline: string,
	lastLocation: string,
	universeId: string?,
	rootPlaceId: string?,
	placeId: string?,
	gameId: string?,
	userPresenceType: Enum,
}

return nil
