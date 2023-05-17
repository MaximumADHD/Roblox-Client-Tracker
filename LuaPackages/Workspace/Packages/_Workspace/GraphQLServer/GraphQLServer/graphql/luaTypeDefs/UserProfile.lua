local UserProfileTypeDef = [[
	type Names {
		alias: String
		combinedName: String
		contactName: String
		displayName: String
		username: String
	}

	type UserProfile implements User {
		id: ID!
		displayName: String!
		names: Names
	}

	type Query {
		userProfiles(userIds: [String]!): [UserProfile]!
	}
]]

return UserProfileTypeDef
