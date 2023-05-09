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

	type ProfileInsightsPages {
		id: ID!
		profileInsights: [ProfileInsights!]
	}

	type Query {
		profilesInsights(userIds: [String]!, count: Int, pageId: String): ProfileInsightsPages
		profilesInsightsByUserIds(userIds: [String]!, count: Int): [ProfileInsights]
	}
]]

return ProfileInsightsTypeDef
