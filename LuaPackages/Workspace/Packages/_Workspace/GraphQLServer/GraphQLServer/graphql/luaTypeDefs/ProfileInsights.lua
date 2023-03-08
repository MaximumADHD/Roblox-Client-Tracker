local ProfileInsightsTypeDef = [[
	type MutualFriend implements User {
		id: ID!
		username: String!
		displayName: String!
	}

	type ProfileInsights {
		targetUserId: ID!
		mutualFriends: [MutualFriend!]
		isOfflineFrequents: Boolean!
	}

	type Query {
		profilesInsights(userIds: [String]!, count: Int): [ProfileInsights!]
	}
]]

return ProfileInsightsTypeDef
