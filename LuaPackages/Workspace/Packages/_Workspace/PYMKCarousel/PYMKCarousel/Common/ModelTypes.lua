export type Recommendation = {
	id: string,
	mutualFriendsList: { string }?,
	contextType: {
		rawValue: () -> string,
	},
	rank: number,
}

return nil
